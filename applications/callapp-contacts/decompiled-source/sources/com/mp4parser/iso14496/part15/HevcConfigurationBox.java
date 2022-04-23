package com.mp4parser.iso14496.part15;

import com.explorestack.iab.utils.o;
import com.googlecode.mp4parser.a;
import com.googlecode.mp4parser.h;
import com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/HevcConfigurationBox.class */
public class HevcConfigurationBox extends a {
    public static final String TYPE = "hvcC";
    private static final a.AbstractC0755a ajc$tjp_0 = null;
    private static final a.AbstractC0755a ajc$tjp_1 = null;
    private static final a.AbstractC0755a ajc$tjp_10 = null;
    private static final a.AbstractC0755a ajc$tjp_11 = null;
    private static final a.AbstractC0755a ajc$tjp_12 = null;
    private static final a.AbstractC0755a ajc$tjp_13 = null;
    private static final a.AbstractC0755a ajc$tjp_14 = null;
    private static final a.AbstractC0755a ajc$tjp_15 = null;
    private static final a.AbstractC0755a ajc$tjp_16 = null;
    private static final a.AbstractC0755a ajc$tjp_17 = null;
    private static final a.AbstractC0755a ajc$tjp_18 = null;
    private static final a.AbstractC0755a ajc$tjp_19 = null;
    private static final a.AbstractC0755a ajc$tjp_2 = null;
    private static final a.AbstractC0755a ajc$tjp_20 = null;
    private static final a.AbstractC0755a ajc$tjp_21 = null;
    private static final a.AbstractC0755a ajc$tjp_3 = null;
    private static final a.AbstractC0755a ajc$tjp_4 = null;
    private static final a.AbstractC0755a ajc$tjp_5 = null;
    private static final a.AbstractC0755a ajc$tjp_6 = null;
    private static final a.AbstractC0755a ajc$tjp_7 = null;
    private static final a.AbstractC0755a ajc$tjp_8 = null;
    private static final a.AbstractC0755a ajc$tjp_9 = null;
    private HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord = new HevcDecoderConfigurationRecord();

    static {
        ajc$preClinit();
    }

    public HevcConfigurationBox() {
        super(TYPE);
    }

    private static void ajc$preClinit() {
        b bVar = new b("HevcConfigurationBox.java", HevcConfigurationBox.class);
        ajc$tjp_0 = bVar.a("method-execution", bVar.a("1", "getHevcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord"), 38);
        ajc$tjp_1 = bVar.a("method-execution", bVar.a("1", "setHevcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord", "hevcDecoderConfigurationRecord", "", "void"), 42);
        ajc$tjp_10 = bVar.a("method-execution", bVar.a("1", "getGeneral_level_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 90);
        ajc$tjp_11 = bVar.a("method-execution", bVar.a("1", "getMin_spatial_segmentation_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 94);
        ajc$tjp_12 = bVar.a("method-execution", bVar.a("1", "getParallelismType", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 98);
        ajc$tjp_13 = bVar.a("method-execution", bVar.a("1", "getChromaFormat", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 102);
        ajc$tjp_14 = bVar.a("method-execution", bVar.a("1", "getBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 106);
        ajc$tjp_15 = bVar.a("method-execution", bVar.a("1", "getBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 110);
        ajc$tjp_16 = bVar.a("method-execution", bVar.a("1", "getAvgFrameRate", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 114);
        ajc$tjp_17 = bVar.a("method-execution", bVar.a("1", "getNumTemporalLayers", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 118);
        ajc$tjp_18 = bVar.a("method-execution", bVar.a("1", "getLengthSizeMinusOne", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 122);
        ajc$tjp_19 = bVar.a("method-execution", bVar.a("1", "isTemporalIdNested", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "boolean"), WebSocketProtocol.PAYLOAD_SHORT);
        ajc$tjp_2 = bVar.a("method-execution", bVar.a("1", "equals", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "java.lang.Object", o.f19200a, "", "boolean"), 47);
        ajc$tjp_20 = bVar.a("method-execution", bVar.a("1", "getConstantFrameRate", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 130);
        ajc$tjp_21 = bVar.a("method-execution", bVar.a("1", "getArrays", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "java.util.List"), 134);
        ajc$tjp_3 = bVar.a("method-execution", bVar.a("1", "hashCode", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 60);
        ajc$tjp_4 = bVar.a("method-execution", bVar.a("1", "getConfigurationVersion", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 65);
        ajc$tjp_5 = bVar.a("method-execution", bVar.a("1", "getGeneral_profile_space", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 69);
        ajc$tjp_6 = bVar.a("method-execution", bVar.a("1", "isGeneral_tier_flag", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "boolean"), 73);
        ajc$tjp_7 = bVar.a("method-execution", bVar.a("1", "getGeneral_profile_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 78);
        ajc$tjp_8 = bVar.a("method-execution", bVar.a("1", "getGeneral_profile_compatibility_flags", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "long"), 82);
        ajc$tjp_9 = bVar.a("method-execution", bVar.a("1", "getGeneral_constraint_indicator_flags", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "long"), 86);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        this.hevcDecoderConfigurationRecord.parse(byteBuffer);
    }

    public boolean equals(Object obj) {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_2, this, this, obj);
        h.a();
        h.a(a2);
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord = this.hevcDecoderConfigurationRecord;
        HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord2 = ((HevcConfigurationBox) obj).hevcDecoderConfigurationRecord;
        return hevcDecoderConfigurationRecord != null ? hevcDecoderConfigurationRecord.equals(hevcDecoderConfigurationRecord2) : hevcDecoderConfigurationRecord2 == null;
    }

    public List<HevcDecoderConfigurationRecord.Array> getArrays() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_21, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.arrays;
    }

    public int getAvgFrameRate() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_16, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.avgFrameRate;
    }

    public int getBitDepthChromaMinus8() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_15, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.bitDepthChromaMinus8;
    }

    public int getBitDepthLumaMinus8() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_14, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.bitDepthLumaMinus8;
    }

    public int getChromaFormat() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_13, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.chromaFormat;
    }

    public int getConfigurationVersion() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_4, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.configurationVersion;
    }

    public int getConstantFrameRate() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_20, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.constantFrameRate;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        this.hevcDecoderConfigurationRecord.write(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return this.hevcDecoderConfigurationRecord.getSize();
    }

    public long getGeneral_constraint_indicator_flags() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_9, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.general_constraint_indicator_flags;
    }

    public int getGeneral_level_idc() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_10, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.general_level_idc;
    }

    public long getGeneral_profile_compatibility_flags() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_8, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.general_profile_compatibility_flags;
    }

    public int getGeneral_profile_idc() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_7, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.general_profile_idc;
    }

    public int getGeneral_profile_space() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_5, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.general_profile_space;
    }

    public HevcDecoderConfigurationRecord getHevcDecoderConfigurationRecord() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_0, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord;
    }

    public int getLengthSizeMinusOne() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_18, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.lengthSizeMinusOne;
    }

    public int getMin_spatial_segmentation_idc() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_11, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.min_spatial_segmentation_idc;
    }

    public int getNumTemporalLayers() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_17, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.numTemporalLayers;
    }

    public int getParallelismType() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_12, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.parallelismType;
    }

    public int hashCode() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_3, this, this);
        h.a();
        h.a(a2);
        HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord = this.hevcDecoderConfigurationRecord;
        if (hevcDecoderConfigurationRecord != null) {
            return hevcDecoderConfigurationRecord.hashCode();
        }
        return 0;
    }

    public boolean isGeneral_tier_flag() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_6, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.general_tier_flag;
    }

    public boolean isTemporalIdNested() {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_19, this, this);
        h.a();
        h.a(a2);
        return this.hevcDecoderConfigurationRecord.temporalIdNested;
    }

    public void setHevcDecoderConfigurationRecord(HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord) {
        org.mp4parser.aspectj.lang.a a2 = b.a(ajc$tjp_1, this, this, hevcDecoderConfigurationRecord);
        h.a();
        h.a(a2);
        this.hevcDecoderConfigurationRecord = hevcDecoderConfigurationRecord;
    }
}
