package com.mp4parser.iso14496.part15;

import com.googlecode.mp4parser.h264.model.PictureParameterSet;
import com.googlecode.mp4parser.h264.model.SeqParameterSet;
import com.googlecode.mp4parser.p414a.p419d.C16240c;
import com.googlecode.mp4parser.p420b.p422b.p423a.C16255c;
import com.googlecode.mp4parser.p420b.p422b.p423a.C16256d;
import com.p102b.p103a.C3513c;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/AvcDecoderConfigurationRecord.class */
public class AvcDecoderConfigurationRecord {
    public int avcLevelIndication;
    public int avcProfileIndication;
    public int bitDepthChromaMinus8;
    public int bitDepthChromaMinus8PaddingBits;
    public int bitDepthLumaMinus8;
    public int bitDepthLumaMinus8PaddingBits;
    public int chromaFormat;
    public int chromaFormatPaddingBits;
    public int configurationVersion;
    public boolean hasExts;
    public int lengthSizeMinusOne;
    public int lengthSizeMinusOnePaddingBits;
    public int numberOfSequenceParameterSetsPaddingBits;
    public List<byte[]> pictureParameterSets;
    public int profileCompatibility;
    public List<byte[]> sequenceParameterSetExts;
    public List<byte[]> sequenceParameterSets;

    public AvcDecoderConfigurationRecord() {
        this.sequenceParameterSets = new ArrayList();
        this.pictureParameterSets = new ArrayList();
        this.hasExts = true;
        this.chromaFormat = 1;
        this.bitDepthLumaMinus8 = 0;
        this.bitDepthChromaMinus8 = 0;
        this.sequenceParameterSetExts = new ArrayList();
        this.lengthSizeMinusOnePaddingBits = 63;
        this.numberOfSequenceParameterSetsPaddingBits = 7;
        this.chromaFormatPaddingBits = 31;
        this.bitDepthLumaMinus8PaddingBits = 31;
        this.bitDepthChromaMinus8PaddingBits = 31;
    }

    public AvcDecoderConfigurationRecord(ByteBuffer byteBuffer) {
        int i;
        this.sequenceParameterSets = new ArrayList();
        this.pictureParameterSets = new ArrayList();
        this.hasExts = true;
        this.chromaFormat = 1;
        this.bitDepthLumaMinus8 = 0;
        this.bitDepthChromaMinus8 = 0;
        this.sequenceParameterSetExts = new ArrayList();
        this.lengthSizeMinusOnePaddingBits = 63;
        this.numberOfSequenceParameterSetsPaddingBits = 7;
        this.chromaFormatPaddingBits = 31;
        this.bitDepthLumaMinus8PaddingBits = 31;
        this.bitDepthChromaMinus8PaddingBits = 31;
        this.configurationVersion = C3515e.m37852a(byteBuffer.get());
        this.avcProfileIndication = C3515e.m37852a(byteBuffer.get());
        this.profileCompatibility = C3515e.m37852a(byteBuffer.get());
        this.avcLevelIndication = C3515e.m37852a(byteBuffer.get());
        C16255c c16255c = new C16255c(byteBuffer);
        this.lengthSizeMinusOnePaddingBits = c16255c.m7541a(6);
        this.lengthSizeMinusOne = c16255c.m7541a(2);
        this.numberOfSequenceParameterSetsPaddingBits = c16255c.m7541a(3);
        int m7541a = c16255c.m7541a(5);
        for (int i2 = 0; i2 < m7541a; i2++) {
            byte[] bArr = new byte[C3515e.m37848c(byteBuffer)];
            byteBuffer.get(bArr);
            this.sequenceParameterSets.add(bArr);
        }
        long m37852a = C3515e.m37852a(byteBuffer.get());
        for (int i3 = 0; i3 < m37852a; i3++) {
            byte[] bArr2 = new byte[C3515e.m37848c(byteBuffer)];
            byteBuffer.get(bArr2);
            this.pictureParameterSets.add(bArr2);
        }
        if (byteBuffer.remaining() < 4) {
            this.hasExts = false;
        }
        if (!this.hasExts || !((i = this.avcProfileIndication) == 100 || i == 110 || i == 122 || i == 144)) {
            this.chromaFormat = -1;
            this.bitDepthLumaMinus8 = -1;
            this.bitDepthChromaMinus8 = -1;
            return;
        }
        C16255c c16255c2 = new C16255c(byteBuffer);
        this.chromaFormatPaddingBits = c16255c2.m7541a(6);
        this.chromaFormat = c16255c2.m7541a(2);
        this.bitDepthLumaMinus8PaddingBits = c16255c2.m7541a(5);
        this.bitDepthLumaMinus8 = c16255c2.m7541a(3);
        this.bitDepthChromaMinus8PaddingBits = c16255c2.m7541a(5);
        this.bitDepthChromaMinus8 = c16255c2.m7541a(3);
        long m37852a2 = C3515e.m37852a(byteBuffer.get());
        for (int i4 = 0; i4 < m37852a2; i4++) {
            byte[] bArr3 = new byte[C3515e.m37848c(byteBuffer)];
            byteBuffer.get(bArr3);
            this.sequenceParameterSetExts.add(bArr3);
        }
    }

    public void getContent(ByteBuffer byteBuffer) {
        C3516f.m37832c(byteBuffer, this.configurationVersion);
        C3516f.m37832c(byteBuffer, this.avcProfileIndication);
        C3516f.m37832c(byteBuffer, this.profileCompatibility);
        C3516f.m37832c(byteBuffer, this.avcLevelIndication);
        C16256d c16256d = new C16256d(byteBuffer);
        c16256d.m7539a(this.lengthSizeMinusOnePaddingBits, 6);
        c16256d.m7539a(this.lengthSizeMinusOne, 2);
        c16256d.m7539a(this.numberOfSequenceParameterSetsPaddingBits, 3);
        c16256d.m7539a(this.pictureParameterSets.size(), 5);
        for (byte[] bArr : this.sequenceParameterSets) {
            C3516f.m37836b(byteBuffer, bArr.length);
            byteBuffer.put(bArr);
        }
        C3516f.m37832c(byteBuffer, this.pictureParameterSets.size());
        for (byte[] bArr2 : this.pictureParameterSets) {
            C3516f.m37836b(byteBuffer, bArr2.length);
            byteBuffer.put(bArr2);
        }
        if (this.hasExts) {
            int i = this.avcProfileIndication;
            if (i != 100 && i != 110 && i != 122 && i != 144) {
                return;
            }
            C16256d c16256d2 = new C16256d(byteBuffer);
            c16256d2.m7539a(this.chromaFormatPaddingBits, 6);
            c16256d2.m7539a(this.chromaFormat, 2);
            c16256d2.m7539a(this.bitDepthLumaMinus8PaddingBits, 5);
            c16256d2.m7539a(this.bitDepthLumaMinus8, 3);
            c16256d2.m7539a(this.bitDepthChromaMinus8PaddingBits, 5);
            c16256d2.m7539a(this.bitDepthChromaMinus8, 3);
            for (byte[] bArr3 : this.sequenceParameterSetExts) {
                C3516f.m37836b(byteBuffer, bArr3.length);
                byteBuffer.put(bArr3);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
        if (r0 == 144) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getContentSize() {
        /*
            r5 = this;
            r0 = r5
            java.util.List<byte[]> r0 = r0.sequenceParameterSets
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
            r0 = 6
            r7 = r0
        Le:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto Laa
            r0 = r7
            r1 = 1
            long r0 = r0 + r1
            r7 = r0
            r0 = r5
            java.util.List<byte[]> r0 = r0.pictureParameterSets
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L25:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L95
            r0 = r7
            r9 = r0
            r0 = r5
            boolean r0 = r0.hasExts
            if (r0 == 0) goto L92
            r0 = r5
            int r0 = r0.avcProfileIndication
            r11 = r0
            r0 = r11
            r1 = 100
            if (r0 == r1) goto L5e
            r0 = r11
            r1 = 110(0x6e, float:1.54E-43)
            if (r0 == r1) goto L5e
            r0 = r11
            r1 = 122(0x7a, float:1.71E-43)
            if (r0 == r1) goto L5e
            r0 = r7
            r9 = r0
            r0 = r11
            r1 = 144(0x90, float:2.02E-43)
            if (r0 != r1) goto L92
        L5e:
            r0 = r7
            r1 = 4
            long r0 = r0 + r1
            r7 = r0
            r0 = r5
            java.util.List<byte[]> r0 = r0.sequenceParameterSetExts
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L6e:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L7d
            r0 = r7
            r9 = r0
            goto L92
        L7d:
            r0 = r7
            r1 = 2
            long r0 = r0 + r1
            r1 = r6
            java.lang.Object r1 = r1.next()
            byte[] r1 = (byte[]) r1
            int r1 = r1.length
            long r1 = (long) r1
            long r0 = r0 + r1
            r7 = r0
            goto L6e
        L92:
            r0 = r9
            return r0
        L95:
            r0 = r7
            r1 = 2
            long r0 = r0 + r1
            r1 = r6
            java.lang.Object r1 = r1.next()
            byte[] r1 = (byte[]) r1
            int r1 = r1.length
            long r1 = (long) r1
            long r0 = r0 + r1
            r7 = r0
            goto L25
        Laa:
            r0 = r7
            r1 = 2
            long r0 = r0 + r1
            r1 = r6
            java.lang.Object r1 = r1.next()
            byte[] r1 = (byte[]) r1
            int r1 = r1.length
            long r1 = (long) r1
            long r0 = r0 + r1
            r7 = r0
            goto Le
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord.getContentSize():long");
    }

    public String[] getPPS() {
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : this.pictureParameterSets) {
            try {
                arrayList.add(PictureParameterSet.read(new ByteArrayInputStream(bArr, 1, bArr.length - 1)).toString());
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public List<String> getPictureParameterSetsAsStrings() {
        ArrayList arrayList = new ArrayList(this.pictureParameterSets.size());
        for (byte[] bArr : this.pictureParameterSets) {
            arrayList.add(C3513c.m37856a(bArr));
        }
        return arrayList;
    }

    public String[] getSPS() {
        String str;
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : this.sequenceParameterSets) {
            try {
                str = SeqParameterSet.read(new C16240c(new ByteArrayInputStream(bArr, 1, bArr.length - 1))).toString();
            } catch (IOException e) {
                str = "not parsable";
            }
            arrayList.add(str);
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public List<String> getSequenceParameterSetExtsAsStrings() {
        ArrayList arrayList = new ArrayList(this.sequenceParameterSetExts.size());
        for (byte[] bArr : this.sequenceParameterSetExts) {
            arrayList.add(C3513c.m37856a(bArr));
        }
        return arrayList;
    }

    public List<String> getSequenceParameterSetsAsStrings() {
        ArrayList arrayList = new ArrayList(this.sequenceParameterSets.size());
        for (byte[] bArr : this.sequenceParameterSets) {
            arrayList.add(C3513c.m37856a(bArr));
        }
        return arrayList;
    }

    public String toString() {
        return "AvcDecoderConfigurationRecord{configurationVersion=" + this.configurationVersion + ", avcProfileIndication=" + this.avcProfileIndication + ", profileCompatibility=" + this.profileCompatibility + ", avcLevelIndication=" + this.avcLevelIndication + ", lengthSizeMinusOne=" + this.lengthSizeMinusOne + ", hasExts=" + this.hasExts + ", chromaFormat=" + this.chromaFormat + ", bitDepthLumaMinus8=" + this.bitDepthLumaMinus8 + ", bitDepthChromaMinus8=" + this.bitDepthChromaMinus8 + ", lengthSizeMinusOnePaddingBits=" + this.lengthSizeMinusOnePaddingBits + ", numberOfSequenceParameterSetsPaddingBits=" + this.numberOfSequenceParameterSetsPaddingBits + ", chromaFormatPaddingBits=" + this.chromaFormatPaddingBits + ", bitDepthLumaMinus8PaddingBits=" + this.bitDepthLumaMinus8PaddingBits + ", bitDepthChromaMinus8PaddingBits=" + this.bitDepthChromaMinus8PaddingBits + '}';
    }
}
