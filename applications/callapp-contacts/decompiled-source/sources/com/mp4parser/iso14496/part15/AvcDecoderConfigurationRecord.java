package com.mp4parser.iso14496.part15;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.b.b.a.c;
import com.googlecode.mp4parser.b.b.a.d;
import com.googlecode.mp4parser.h264.model.PictureParameterSet;
import com.googlecode.mp4parser.h264.model.SeqParameterSet;
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
        this.configurationVersion = e.a(byteBuffer.get());
        this.avcProfileIndication = e.a(byteBuffer.get());
        this.profileCompatibility = e.a(byteBuffer.get());
        this.avcLevelIndication = e.a(byteBuffer.get());
        c cVar = new c(byteBuffer);
        this.lengthSizeMinusOnePaddingBits = cVar.a(6);
        this.lengthSizeMinusOne = cVar.a(2);
        this.numberOfSequenceParameterSetsPaddingBits = cVar.a(3);
        int a2 = cVar.a(5);
        for (int i2 = 0; i2 < a2; i2++) {
            byte[] bArr = new byte[e.c(byteBuffer)];
            byteBuffer.get(bArr);
            this.sequenceParameterSets.add(bArr);
        }
        long a3 = e.a(byteBuffer.get());
        for (int i3 = 0; i3 < a3; i3++) {
            byte[] bArr2 = new byte[e.c(byteBuffer)];
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
        c cVar2 = new c(byteBuffer);
        this.chromaFormatPaddingBits = cVar2.a(6);
        this.chromaFormat = cVar2.a(2);
        this.bitDepthLumaMinus8PaddingBits = cVar2.a(5);
        this.bitDepthLumaMinus8 = cVar2.a(3);
        this.bitDepthChromaMinus8PaddingBits = cVar2.a(5);
        this.bitDepthChromaMinus8 = cVar2.a(3);
        long a4 = e.a(byteBuffer.get());
        for (int i4 = 0; i4 < a4; i4++) {
            byte[] bArr3 = new byte[e.c(byteBuffer)];
            byteBuffer.get(bArr3);
            this.sequenceParameterSetExts.add(bArr3);
        }
    }

    public void getContent(ByteBuffer byteBuffer) {
        f.c(byteBuffer, this.configurationVersion);
        f.c(byteBuffer, this.avcProfileIndication);
        f.c(byteBuffer, this.profileCompatibility);
        f.c(byteBuffer, this.avcLevelIndication);
        d dVar = new d(byteBuffer);
        dVar.a(this.lengthSizeMinusOnePaddingBits, 6);
        dVar.a(this.lengthSizeMinusOne, 2);
        dVar.a(this.numberOfSequenceParameterSetsPaddingBits, 3);
        dVar.a(this.pictureParameterSets.size(), 5);
        for (byte[] bArr : this.sequenceParameterSets) {
            f.b(byteBuffer, bArr.length);
            byteBuffer.put(bArr);
        }
        f.c(byteBuffer, this.pictureParameterSets.size());
        for (byte[] bArr2 : this.pictureParameterSets) {
            f.b(byteBuffer, bArr2.length);
            byteBuffer.put(bArr2);
        }
        if (this.hasExts) {
            int i = this.avcProfileIndication;
            if (i == 100 || i == 110 || i == 122 || i == 144) {
                d dVar2 = new d(byteBuffer);
                dVar2.a(this.chromaFormatPaddingBits, 6);
                dVar2.a(this.chromaFormat, 2);
                dVar2.a(this.bitDepthLumaMinus8PaddingBits, 5);
                dVar2.a(this.bitDepthLumaMinus8, 3);
                dVar2.a(this.bitDepthChromaMinus8PaddingBits, 5);
                dVar2.a(this.bitDepthChromaMinus8, 3);
                for (byte[] bArr3 : this.sequenceParameterSetExts) {
                    f.b(byteBuffer, bArr3.length);
                    byteBuffer.put(bArr3);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
        if (r0 == 144) goto L_0x005e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4, types: [long] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unknown variable types count: 2 */
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
        L_0x000e:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x00aa
            r0 = r7
            r1 = 1
            long r0 = r0 + r1
            r7 = r0
            r0 = r5
            java.util.List<byte[]> r0 = r0.pictureParameterSets
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x0025:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x0095
            r0 = r7
            r9 = r0
            r0 = r5
            boolean r0 = r0.hasExts
            if (r0 == 0) goto L_0x0092
            r0 = r5
            int r0 = r0.avcProfileIndication
            r11 = r0
            r0 = r11
            r1 = 100
            if (r0 == r1) goto L_0x005e
            r0 = r11
            r1 = 110(0x6e, float:1.54E-43)
            if (r0 == r1) goto L_0x005e
            r0 = r11
            r1 = 122(0x7a, float:1.71E-43)
            if (r0 == r1) goto L_0x005e
            r0 = r7
            r9 = r0
            r0 = r11
            r1 = 144(0x90, float:2.02E-43)
            if (r0 != r1) goto L_0x0092
        L_0x005e:
            r0 = r7
            r1 = 4
            long r0 = r0 + r1
            r7 = r0
            r0 = r5
            java.util.List<byte[]> r0 = r0.sequenceParameterSetExts
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L_0x006e:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 != 0) goto L_0x007d
            r0 = r7
            r9 = r0
            goto L_0x0092
        L_0x007d:
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
            goto L_0x006e
        L_0x0092:
            r0 = r9
            return r0
        L_0x0095:
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
            goto L_0x0025
        L_0x00aa:
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
            goto L_0x000e
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
            arrayList.add(com.b.a.c.a(bArr));
        }
        return arrayList;
    }

    public String[] getSPS() {
        String str;
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : this.sequenceParameterSets) {
            try {
                str = SeqParameterSet.read(new com.googlecode.mp4parser.a.d.c(new ByteArrayInputStream(bArr, 1, bArr.length - 1))).toString();
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
            arrayList.add(com.b.a.c.a(bArr));
        }
        return arrayList;
    }

    public List<String> getSequenceParameterSetsAsStrings() {
        ArrayList arrayList = new ArrayList(this.sequenceParameterSets.size());
        for (byte[] bArr : this.sequenceParameterSets) {
            arrayList.add(com.b.a.c.a(bArr));
        }
        return arrayList;
    }

    public String toString() {
        return "AvcDecoderConfigurationRecord{configurationVersion=" + this.configurationVersion + ", avcProfileIndication=" + this.avcProfileIndication + ", profileCompatibility=" + this.profileCompatibility + ", avcLevelIndication=" + this.avcLevelIndication + ", lengthSizeMinusOne=" + this.lengthSizeMinusOne + ", hasExts=" + this.hasExts + ", chromaFormat=" + this.chromaFormat + ", bitDepthLumaMinus8=" + this.bitDepthLumaMinus8 + ", bitDepthChromaMinus8=" + this.bitDepthChromaMinus8 + ", lengthSizeMinusOnePaddingBits=" + this.lengthSizeMinusOnePaddingBits + ", numberOfSequenceParameterSetsPaddingBits=" + this.numberOfSequenceParameterSetsPaddingBits + ", chromaFormatPaddingBits=" + this.chromaFormatPaddingBits + ", bitDepthLumaMinus8PaddingBits=" + this.bitDepthLumaMinus8PaddingBits + ", bitDepthChromaMinus8PaddingBits=" + this.bitDepthChromaMinus8PaddingBits + '}';
    }
}
