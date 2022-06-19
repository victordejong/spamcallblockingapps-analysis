package org.bouncycastle.asn1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/asn1/DERGeneralizedTime.class */
public class DERGeneralizedTime extends ASN1Object {
    public String time;

    public DERGeneralizedTime(String str) {
        this.time = str;
        try {
            getDate();
        } catch (ParseException e) {
            throw new IllegalArgumentException("invalid date string: " + e.getMessage());
        }
    }

    public DERGeneralizedTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, "Z"));
        this.time = simpleDateFormat.format(date);
    }

    public DERGeneralizedTime(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        this.time = new String(cArr);
    }

    private String calculateGMTOffset() {
        String str;
        TimeZone timeZone = TimeZone.getDefault();
        int rawOffset = timeZone.getRawOffset();
        if (rawOffset < 0) {
            rawOffset = -rawOffset;
            str = "-";
        } else {
            str = "+";
        }
        int i = rawOffset / 3600000;
        int i2 = (rawOffset - (((i * 60) * 60) * 1000)) / 60000;
        int i3 = i;
        try {
            if (timeZone.useDaylightTime()) {
                i3 = i;
                if (timeZone.inDaylightTime(getDate())) {
                    i3 = i + (str.equals("+") ? 1 : -1);
                }
            }
        } catch (ParseException e) {
            i3 = i;
        }
        return "GMT" + str + convert(i3) + ":" + convert(i2);
    }

    private String convert(int i) {
        if (i < 10) {
            return "0" + i;
        }
        return Integer.toString(i);
    }

    public static DERGeneralizedTime getInstance(Object obj) {
        if (obj == null || (obj instanceof DERGeneralizedTime)) {
            return (DERGeneralizedTime) obj;
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static DERGeneralizedTime getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        DERObject object = aSN1TaggedObject.getObject();
        return (z || (object instanceof DERGeneralizedTime)) ? getInstance(object) : new DERGeneralizedTime(((ASN1OctetString) object).getOctets());
    }

    private byte[] getOctets() {
        char[] charArray = this.time.toCharArray();
        byte[] bArr = new byte[charArray.length];
        for (int i = 0; i != charArray.length; i++) {
            bArr[i] = (byte) charArray[i];
        }
        return bArr;
    }

    private boolean hasFractionalSeconds() {
        return this.time.indexOf(46) == 14;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean asn1Equals(DERObject dERObject) {
        if (!(dERObject instanceof DERGeneralizedTime)) {
            return false;
        }
        return this.time.equals(((DERGeneralizedTime) dERObject).time);
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject
    public void encode(DEROutputStream dEROutputStream) {
        dEROutputStream.writeEncoded(24, getOctets());
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Date getDate() {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.DERGeneralizedTime.getDate():java.util.Date");
    }

    public String getTime() {
        String str = this.time;
        if (str.charAt(str.length() - 1) == 'Z') {
            StringBuilder sb = new StringBuilder();
            String str2 = this.time;
            sb.append(str2.substring(0, str2.length() - 1));
            sb.append("GMT+00:00");
            return sb.toString();
        }
        int length = this.time.length() - 5;
        char charAt = this.time.charAt(length);
        if (charAt == '-' || charAt == '+') {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.time.substring(0, length));
            sb2.append("GMT");
            int i = length + 3;
            sb2.append(this.time.substring(length, i));
            sb2.append(":");
            sb2.append(this.time.substring(i));
            return sb2.toString();
        }
        int length2 = this.time.length() - 3;
        char charAt2 = this.time.charAt(length2);
        if (charAt2 != '-' && charAt2 != '+') {
            return this.time + calculateGMTOffset();
        }
        return this.time.substring(0, length2) + "GMT" + this.time.substring(length2) + ":00";
    }

    public String getTimeString() {
        return this.time;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.DERObject, org.bouncycastle.asn1.ASN1Encodable
    public int hashCode() {
        return this.time.hashCode();
    }
}
