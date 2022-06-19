package com.mp4parser.iso14496.part15;

import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord.class */
public class HevcDecoderConfigurationRecord {
    int avgFrameRate;
    int bitDepthChromaMinus8;
    int bitDepthLumaMinus8;
    int chromaFormat;
    int configurationVersion;
    int constantFrameRate;
    boolean frame_only_constraint_flag;
    long general_constraint_indicator_flags;
    int general_level_idc;
    long general_profile_compatibility_flags;
    int general_profile_idc;
    int general_profile_space;
    boolean general_tier_flag;
    boolean interlaced_source_flag;
    int lengthSizeMinusOne;
    int min_spatial_segmentation_idc;
    boolean non_packed_constraint_flag;
    int numTemporalLayers;
    int parallelismType;
    boolean progressive_source_flag;
    boolean temporalIdNested;
    int reserved1 = 15;
    int reserved2 = 63;
    int reserved3 = 63;
    int reserved4 = 31;
    int reserved5 = 31;
    List<Array> arrays = new ArrayList();

    /* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/HevcDecoderConfigurationRecord$Array.class */
    public static class Array {
        public boolean array_completeness;
        public List<byte[]> nalUnits;
        public int nal_unit_type;
        public boolean reserved;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Array array = (Array) obj;
            if (this.array_completeness != array.array_completeness || this.nal_unit_type != array.nal_unit_type || this.reserved != array.reserved) {
                return false;
            }
            ListIterator<byte[]> listIterator = this.nalUnits.listIterator();
            ListIterator<byte[]> listIterator2 = array.nalUnits.listIterator();
            while (listIterator.hasNext() && listIterator2.hasNext()) {
                byte[] next = listIterator.next();
                byte[] next2 = listIterator2.next();
                if (next == null) {
                    if (next2 != null) {
                        return false;
                    }
                } else if (!Arrays.equals(next, next2)) {
                    return false;
                }
            }
            return !listIterator.hasNext() && !listIterator2.hasNext();
        }

        public int hashCode() {
            boolean z = this.array_completeness;
            boolean z2 = this.reserved;
            int i = this.nal_unit_type;
            List<byte[]> list = this.nalUnits;
            return ((((((z ? 1 : 0) * 31) + (z2 ? 1 : 0)) * 31) + i) * 31) + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "Array{nal_unit_type=" + this.nal_unit_type + ", reserved=" + this.reserved + ", array_completeness=" + this.array_completeness + ", num_nals=" + this.nalUnits.size() + '}';
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord = (HevcDecoderConfigurationRecord) obj;
        if (this.avgFrameRate != hevcDecoderConfigurationRecord.avgFrameRate || this.bitDepthChromaMinus8 != hevcDecoderConfigurationRecord.bitDepthChromaMinus8 || this.bitDepthLumaMinus8 != hevcDecoderConfigurationRecord.bitDepthLumaMinus8 || this.chromaFormat != hevcDecoderConfigurationRecord.chromaFormat || this.configurationVersion != hevcDecoderConfigurationRecord.configurationVersion || this.constantFrameRate != hevcDecoderConfigurationRecord.constantFrameRate || this.general_constraint_indicator_flags != hevcDecoderConfigurationRecord.general_constraint_indicator_flags || this.general_level_idc != hevcDecoderConfigurationRecord.general_level_idc || this.general_profile_compatibility_flags != hevcDecoderConfigurationRecord.general_profile_compatibility_flags || this.general_profile_idc != hevcDecoderConfigurationRecord.general_profile_idc || this.general_profile_space != hevcDecoderConfigurationRecord.general_profile_space || this.general_tier_flag != hevcDecoderConfigurationRecord.general_tier_flag || this.lengthSizeMinusOne != hevcDecoderConfigurationRecord.lengthSizeMinusOne || this.min_spatial_segmentation_idc != hevcDecoderConfigurationRecord.min_spatial_segmentation_idc || this.numTemporalLayers != hevcDecoderConfigurationRecord.numTemporalLayers || this.parallelismType != hevcDecoderConfigurationRecord.parallelismType || this.reserved1 != hevcDecoderConfigurationRecord.reserved1 || this.reserved2 != hevcDecoderConfigurationRecord.reserved2 || this.reserved3 != hevcDecoderConfigurationRecord.reserved3 || this.reserved4 != hevcDecoderConfigurationRecord.reserved4 || this.reserved5 != hevcDecoderConfigurationRecord.reserved5 || this.temporalIdNested != hevcDecoderConfigurationRecord.temporalIdNested) {
            return false;
        }
        List<Array> list = this.arrays;
        List<Array> list2 = hevcDecoderConfigurationRecord.arrays;
        return list != null ? list.equals(list2) : list2 == null;
    }

    public List<Array> getArrays() {
        return this.arrays;
    }

    public int getAvgFrameRate() {
        return this.avgFrameRate;
    }

    public int getBitDepthChromaMinus8() {
        return this.bitDepthChromaMinus8;
    }

    public int getBitDepthLumaMinus8() {
        return this.bitDepthLumaMinus8;
    }

    public int getChromaFormat() {
        return this.chromaFormat;
    }

    public int getConfigurationVersion() {
        return this.configurationVersion;
    }

    public int getConstantFrameRate() {
        return this.constantFrameRate;
    }

    public long getGeneral_constraint_indicator_flags() {
        return this.general_constraint_indicator_flags;
    }

    public int getGeneral_level_idc() {
        return this.general_level_idc;
    }

    public long getGeneral_profile_compatibility_flags() {
        return this.general_profile_compatibility_flags;
    }

    public int getGeneral_profile_idc() {
        return this.general_profile_idc;
    }

    public int getGeneral_profile_space() {
        return this.general_profile_space;
    }

    public int getLengthSizeMinusOne() {
        return this.lengthSizeMinusOne;
    }

    public int getMin_spatial_segmentation_idc() {
        return this.min_spatial_segmentation_idc;
    }

    public int getNumTemporalLayers() {
        return this.numTemporalLayers;
    }

    public int getParallelismType() {
        return this.parallelismType;
    }

    public int getSize() {
        int i = 23;
        for (Array array : this.arrays) {
            i += 3;
            for (byte[] bArr : array.nalUnits) {
                i = i + 2 + bArr.length;
            }
        }
        return i;
    }

    public int hashCode() {
        int i = this.configurationVersion;
        int i2 = this.general_profile_space;
        boolean z = this.general_tier_flag;
        int i3 = this.general_profile_idc;
        long j = this.general_profile_compatibility_flags;
        int i4 = (int) (j ^ (j >>> 32));
        long j2 = this.general_constraint_indicator_flags;
        int i5 = (int) (j2 ^ (j2 >>> 32));
        int i6 = this.general_level_idc;
        int i7 = this.reserved1;
        int i8 = this.min_spatial_segmentation_idc;
        int i9 = this.reserved2;
        int i10 = this.parallelismType;
        int i11 = this.reserved3;
        int i12 = this.chromaFormat;
        int i13 = this.reserved4;
        int i14 = this.bitDepthLumaMinus8;
        int i15 = this.reserved5;
        int i16 = this.bitDepthChromaMinus8;
        int i17 = this.avgFrameRate;
        int i18 = this.constantFrameRate;
        int i19 = this.numTemporalLayers;
        boolean z2 = this.temporalIdNested;
        int i20 = this.lengthSizeMinusOne;
        List<Array> list = this.arrays;
        return (((((((((((((((((((((((((((((((((((((((((((i * 31) + i2) * 31) + (z ? 1 : 0)) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + i13) * 31) + i14) * 31) + i15) * 31) + i16) * 31) + i17) * 31) + i18) * 31) + i19) * 31) + (z2 ? 1 : 0)) * 31) + i20) * 31) + (list != null ? list.hashCode() : 0);
    }

    public boolean isFrame_only_constraint_flag() {
        return this.frame_only_constraint_flag;
    }

    public boolean isGeneral_tier_flag() {
        return this.general_tier_flag;
    }

    public boolean isInterlaced_source_flag() {
        return this.interlaced_source_flag;
    }

    public boolean isNon_packed_constraint_flag() {
        return this.non_packed_constraint_flag;
    }

    public boolean isProgressive_source_flag() {
        return this.progressive_source_flag;
    }

    public boolean isTemporalIdNested() {
        return this.temporalIdNested;
    }

    public void parse(ByteBuffer byteBuffer) {
        this.configurationVersion = C3515e.m37852a(byteBuffer.get());
        int m37852a = C3515e.m37852a(byteBuffer.get());
        this.general_profile_space = (m37852a & 192) >> 6;
        this.general_tier_flag = (m37852a & 32) > 0;
        this.general_profile_idc = m37852a & 31;
        this.general_profile_compatibility_flags = C3515e.m37851a(byteBuffer);
        long m37842i = C3515e.m37842i(byteBuffer);
        this.general_constraint_indicator_flags = m37842i;
        this.frame_only_constraint_flag = ((m37842i >> 44) & 8) > 0;
        this.non_packed_constraint_flag = ((m37842i >> 44) & 4) > 0;
        this.interlaced_source_flag = ((m37842i >> 44) & 2) > 0;
        this.progressive_source_flag = ((m37842i >> 44) & 1) > 0;
        this.general_constraint_indicator_flags = m37842i & 140737488355327L;
        this.general_level_idc = C3515e.m37852a(byteBuffer.get());
        int m37848c = C3515e.m37848c(byteBuffer);
        this.reserved1 = (61440 & m37848c) >> 12;
        this.min_spatial_segmentation_idc = m37848c & 4095;
        int m37852a2 = C3515e.m37852a(byteBuffer.get());
        this.reserved2 = (m37852a2 & 252) >> 2;
        this.parallelismType = m37852a2 & 3;
        int m37852a3 = C3515e.m37852a(byteBuffer.get());
        this.reserved3 = (m37852a3 & 252) >> 2;
        this.chromaFormat = m37852a3 & 3;
        int m37852a4 = C3515e.m37852a(byteBuffer.get());
        this.reserved4 = (m37852a4 & 248) >> 3;
        this.bitDepthLumaMinus8 = m37852a4 & 7;
        int m37852a5 = C3515e.m37852a(byteBuffer.get());
        this.reserved5 = (m37852a5 & 248) >> 3;
        this.bitDepthChromaMinus8 = m37852a5 & 7;
        this.avgFrameRate = C3515e.m37848c(byteBuffer);
        int m37852a6 = C3515e.m37852a(byteBuffer.get());
        this.constantFrameRate = (m37852a6 & 192) >> 6;
        this.numTemporalLayers = (m37852a6 & 56) >> 3;
        this.temporalIdNested = (m37852a6 & 4) > 0;
        this.lengthSizeMinusOne = m37852a6 & 3;
        int m37852a7 = C3515e.m37852a(byteBuffer.get());
        this.arrays = new ArrayList();
        for (int i = 0; i < m37852a7; i++) {
            Array array = new Array();
            int m37852a8 = C3515e.m37852a(byteBuffer.get());
            array.array_completeness = (m37852a8 & 128) > 0;
            array.reserved = (m37852a8 & 64) > 0;
            array.nal_unit_type = m37852a8 & 63;
            int m37848c2 = C3515e.m37848c(byteBuffer);
            array.nalUnits = new ArrayList();
            for (int i2 = 0; i2 < m37848c2; i2++) {
                byte[] bArr = new byte[C3515e.m37848c(byteBuffer)];
                byteBuffer.get(bArr);
                array.nalUnits.add(bArr);
            }
            this.arrays.add(array);
        }
    }

    public void setArrays(List<Array> list) {
        this.arrays = list;
    }

    public void setAvgFrameRate(int i) {
        this.avgFrameRate = i;
    }

    public void setBitDepthChromaMinus8(int i) {
        this.bitDepthChromaMinus8 = i;
    }

    public void setBitDepthLumaMinus8(int i) {
        this.bitDepthLumaMinus8 = i;
    }

    public void setChromaFormat(int i) {
        this.chromaFormat = i;
    }

    public void setConfigurationVersion(int i) {
        this.configurationVersion = i;
    }

    public void setConstantFrameRate(int i) {
        this.constantFrameRate = i;
    }

    public void setFrame_only_constraint_flag(boolean z) {
        this.frame_only_constraint_flag = z;
    }

    public void setGeneral_constraint_indicator_flags(long j) {
        this.general_constraint_indicator_flags = j;
    }

    public void setGeneral_level_idc(int i) {
        this.general_level_idc = i;
    }

    public void setGeneral_profile_compatibility_flags(long j) {
        this.general_profile_compatibility_flags = j;
    }

    public void setGeneral_profile_idc(int i) {
        this.general_profile_idc = i;
    }

    public void setGeneral_profile_space(int i) {
        this.general_profile_space = i;
    }

    public void setGeneral_tier_flag(boolean z) {
        this.general_tier_flag = z;
    }

    public void setInterlaced_source_flag(boolean z) {
        this.interlaced_source_flag = z;
    }

    public void setLengthSizeMinusOne(int i) {
        this.lengthSizeMinusOne = i;
    }

    public void setMin_spatial_segmentation_idc(int i) {
        this.min_spatial_segmentation_idc = i;
    }

    public void setNon_packed_constraint_flag(boolean z) {
        this.non_packed_constraint_flag = z;
    }

    public void setNumTemporalLayers(int i) {
        this.numTemporalLayers = i;
    }

    public void setParallelismType(int i) {
        this.parallelismType = i;
    }

    public void setProgressive_source_flag(boolean z) {
        this.progressive_source_flag = z;
    }

    public void setTemporalIdNested(boolean z) {
        this.temporalIdNested = z;
    }

    public String toString() {
        String str;
        String str2;
        String str3;
        String str4;
        StringBuilder sb = new StringBuilder("HEVCDecoderConfigurationRecord{configurationVersion=");
        sb.append(this.configurationVersion);
        sb.append(", general_profile_space=");
        sb.append(this.general_profile_space);
        sb.append(", general_tier_flag=");
        sb.append(this.general_tier_flag);
        sb.append(", general_profile_idc=");
        sb.append(this.general_profile_idc);
        sb.append(", general_profile_compatibility_flags=");
        sb.append(this.general_profile_compatibility_flags);
        sb.append(", general_constraint_indicator_flags=");
        sb.append(this.general_constraint_indicator_flags);
        sb.append(", general_level_idc=");
        sb.append(this.general_level_idc);
        if (this.reserved1 != 15) {
            str = ", reserved1=" + this.reserved1;
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(", min_spatial_segmentation_idc=");
        sb.append(this.min_spatial_segmentation_idc);
        if (this.reserved2 != 63) {
            str2 = ", reserved2=" + this.reserved2;
        } else {
            str2 = "";
        }
        sb.append(str2);
        sb.append(", parallelismType=");
        sb.append(this.parallelismType);
        if (this.reserved3 != 63) {
            str3 = ", reserved3=" + this.reserved3;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", chromaFormat=");
        sb.append(this.chromaFormat);
        if (this.reserved4 != 31) {
            str4 = ", reserved4=" + this.reserved4;
        } else {
            str4 = "";
        }
        sb.append(str4);
        sb.append(", bitDepthLumaMinus8=");
        sb.append(this.bitDepthLumaMinus8);
        String str5 = "";
        if (this.reserved5 != 31) {
            str5 = ", reserved5=" + this.reserved5;
        }
        sb.append(str5);
        sb.append(", bitDepthChromaMinus8=");
        sb.append(this.bitDepthChromaMinus8);
        sb.append(", avgFrameRate=");
        sb.append(this.avgFrameRate);
        sb.append(", constantFrameRate=");
        sb.append(this.constantFrameRate);
        sb.append(", numTemporalLayers=");
        sb.append(this.numTemporalLayers);
        sb.append(", temporalIdNested=");
        sb.append(this.temporalIdNested);
        sb.append(", lengthSizeMinusOne=");
        sb.append(this.lengthSizeMinusOne);
        sb.append(", arrays=");
        sb.append(this.arrays);
        sb.append('}');
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public void write(ByteBuffer byteBuffer) {
        C3516f.m37832c(byteBuffer, this.configurationVersion);
        C3516f.m37832c(byteBuffer, (this.general_profile_space << 6) + (this.general_tier_flag ? 32 : 0) + this.general_profile_idc);
        C3516f.m37835b(byteBuffer, this.general_profile_compatibility_flags);
        ?? r0 = this.general_constraint_indicator_flags;
        char c = r0;
        if (this.frame_only_constraint_flag) {
            c = r0 | 140737488355328L;
        }
        char c2 = c;
        if (this.non_packed_constraint_flag) {
            c2 = c | 0;
        }
        char c3 = c2;
        if (this.interlaced_source_flag) {
            c3 = c2 | 0;
        }
        char c4 = c3;
        if (this.progressive_source_flag) {
            c4 = c3 | 0;
        }
        C3516f.m37831c(byteBuffer, (long) c4);
        C3516f.m37832c(byteBuffer, this.general_level_idc);
        C3516f.m37836b(byteBuffer, (this.reserved1 << 12) + this.min_spatial_segmentation_idc);
        C3516f.m37832c(byteBuffer, (this.reserved2 << 2) + this.parallelismType);
        C3516f.m37832c(byteBuffer, (this.reserved3 << 2) + this.chromaFormat);
        C3516f.m37832c(byteBuffer, (this.reserved4 << 3) + this.bitDepthLumaMinus8);
        C3516f.m37832c(byteBuffer, (this.reserved5 << 3) + this.bitDepthChromaMinus8);
        C3516f.m37836b(byteBuffer, this.avgFrameRate);
        C3516f.m37832c(byteBuffer, (this.constantFrameRate << 6) + (this.numTemporalLayers << 3) + (this.temporalIdNested ? 4 : 0) + this.lengthSizeMinusOne);
        C3516f.m37832c(byteBuffer, this.arrays.size());
        for (Array array : this.arrays) {
            C3516f.m37832c(byteBuffer, (array.array_completeness ? 128 : 0) + (array.reserved ? 64 : 0) + array.nal_unit_type);
            C3516f.m37836b(byteBuffer, array.nalUnits.size());
            for (byte[] bArr : array.nalUnits) {
                C3516f.m37836b(byteBuffer, bArr.length);
                byteBuffer.put(bArr);
            }
        }
    }
}
