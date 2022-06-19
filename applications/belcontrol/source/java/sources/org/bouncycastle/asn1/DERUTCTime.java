package org.bouncycastle.asn1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERUTCTime.class */
public class DERUTCTime extends ASN1Object {
    public String time;

    public DERUTCTime(String str) {
        this.time = str;
        try {
            getDate();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    public DERUTCTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.time = simpleDateFormat.format(date);
    }

    public DERUTCTime(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        this.time = new String(cArr);
    }

    public static DERUTCTime getInstance(Object obj) {
        if (obj == null || (obj instanceof DERUTCTime)) {
            return (DERUTCTime) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERUTCTime getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERUTCTime)) ? getInstance(object) : new DERUTCTime(((ASN1OctetString) object).getOctets());
    }

    private byte[] getOctets() {
        char[] charArray = this.time.toCharArray();
        byte[] bArr = new byte[charArray.length];
        for (int i = 0; i != charArray.length; i++) {
            bArr[i] = (byte) charArray[i];
        }
        return bArr;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof DERUTCTime)) {
            return false;
        }
        return this.time.equals(((DERUTCTime) dERObject).time);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(23, getOctets());
    }

    public Date getAdjustedDate() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssz");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        return simpleDateFormat.parse(getAdjustedTime());
    }

    public String getAdjustedTime() {
        StringBuilder sb;
        String str;
        String time = getTime();
        if (time.charAt(0) < '5') {
            sb = new StringBuilder();
            str = "20";
        } else {
            sb = new StringBuilder();
            str = "19";
        }
        sb.append(str);
        sb.append(time);
        return sb.toString();
    }

    public Date getDate() {
        return new SimpleDateFormat("yyMMddHHmmssz").parse(getTime());
    }

    public String getTime() {
        StringBuilder sb;
        String substring;
        if (this.time.indexOf(45) >= 0 || this.time.indexOf(43) >= 0) {
            int indexOf = this.time.indexOf(45);
            int i = indexOf;
            if (indexOf < 0) {
                i = this.time.indexOf(43);
            }
            String str = this.time;
            String str2 = str;
            if (i == str.length() - 3) {
                str2 = str + "00";
            }
            if (i == 10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2.substring(0, 10));
                sb2.append("00GMT");
                sb2.append(str2.substring(10, 13));
                sb2.append(":");
                sb = sb2;
                substring = str2.substring(13, 15);
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str2.substring(0, 12));
                sb3.append("GMT");
                sb3.append(str2.substring(12, 15));
                sb3.append(":");
                sb = sb3;
                substring = str2.substring(15, 17);
            }
        } else if (this.time.length() == 11) {
            sb = new StringBuilder();
            sb.append(this.time.substring(0, 10));
            substring = "00GMT+00:00";
        } else {
            sb = new StringBuilder();
            sb.append(this.time.substring(0, 12));
            substring = "GMT+00:00";
        }
        sb.append(substring);
        return sb.toString();
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        return this.time.hashCode();
    }

    public String toString() {
        return this.time;
    }
}
