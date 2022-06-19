package com.mp4parser.iso14496.part15;

import com.explorestack.iab.utils.C9605o;
import com.googlecode.mp4parser.AbstractC16221a;
import com.googlecode.mp4parser.C16297h;
import com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.internal.p578ws.WebSocketProtocol;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/HevcConfigurationBox.class */
public class HevcConfigurationBox extends AbstractC16221a {
    public static final String TYPE = "hvcC";
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_0 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_1 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_10 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_11 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_12 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_13 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_14 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_15 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_16 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_17 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_18 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_19 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_2 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_20 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_21 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_3 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_4 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_5 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_6 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_7 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_8 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_9 = null;
    private HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord = new HevcDecoderConfigurationRecord();

    static {
        ajc$preClinit();
    }

    public HevcConfigurationBox() {
        super(TYPE);
    }

    private static void ajc$preClinit() {
        C20987b c20987b = new C20987b("HevcConfigurationBox.java", HevcConfigurationBox.class);
        ajc$tjp_0 = c20987b.m164a("method-execution", c20987b.m165a("1", "getHevcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord"), 38);
        ajc$tjp_1 = c20987b.m164a("method-execution", c20987b.m165a("1", "setHevcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord", "hevcDecoderConfigurationRecord", "", "void"), 42);
        ajc$tjp_10 = c20987b.m164a("method-execution", c20987b.m165a("1", "getGeneral_level_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 90);
        ajc$tjp_11 = c20987b.m164a("method-execution", c20987b.m165a("1", "getMin_spatial_segmentation_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 94);
        ajc$tjp_12 = c20987b.m164a("method-execution", c20987b.m165a("1", "getParallelismType", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 98);
        ajc$tjp_13 = c20987b.m164a("method-execution", c20987b.m165a("1", "getChromaFormat", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 102);
        ajc$tjp_14 = c20987b.m164a("method-execution", c20987b.m165a("1", "getBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 106);
        ajc$tjp_15 = c20987b.m164a("method-execution", c20987b.m165a("1", "getBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 110);
        ajc$tjp_16 = c20987b.m164a("method-execution", c20987b.m165a("1", "getAvgFrameRate", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 114);
        ajc$tjp_17 = c20987b.m164a("method-execution", c20987b.m165a("1", "getNumTemporalLayers", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 118);
        ajc$tjp_18 = c20987b.m164a("method-execution", c20987b.m165a("1", "getLengthSizeMinusOne", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 122);
        ajc$tjp_19 = c20987b.m164a("method-execution", c20987b.m165a("1", "isTemporalIdNested", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "boolean"), WebSocketProtocol.PAYLOAD_SHORT);
        ajc$tjp_2 = c20987b.m164a("method-execution", c20987b.m165a("1", "equals", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "java.lang.Object", C9605o.f32625a, "", "boolean"), 47);
        ajc$tjp_20 = c20987b.m164a("method-execution", c20987b.m165a("1", "getConstantFrameRate", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 130);
        ajc$tjp_21 = c20987b.m164a("method-execution", c20987b.m165a("1", "getArrays", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "java.util.List"), 134);
        ajc$tjp_3 = c20987b.m164a("method-execution", c20987b.m165a("1", "hashCode", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 60);
        ajc$tjp_4 = c20987b.m164a("method-execution", c20987b.m165a("1", "getConfigurationVersion", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 65);
        ajc$tjp_5 = c20987b.m164a("method-execution", c20987b.m165a("1", "getGeneral_profile_space", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 69);
        ajc$tjp_6 = c20987b.m164a("method-execution", c20987b.m165a("1", "isGeneral_tier_flag", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "boolean"), 73);
        ajc$tjp_7 = c20987b.m164a("method-execution", c20987b.m165a("1", "getGeneral_profile_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 78);
        ajc$tjp_8 = c20987b.m164a("method-execution", c20987b.m165a("1", "getGeneral_profile_compatibility_flags", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "long"), 82);
        ajc$tjp_9 = c20987b.m164a("method-execution", c20987b.m165a("1", "getGeneral_constraint_indicator_flags", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "long"), 86);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        this.hevcDecoderConfigurationRecord.parse(byteBuffer);
    }

    public boolean equals(Object obj) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_2, this, this, obj);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
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
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_21, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.arrays;
    }

    public int getAvgFrameRate() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_16, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.avgFrameRate;
    }

    public int getBitDepthChromaMinus8() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_15, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.bitDepthChromaMinus8;
    }

    public int getBitDepthLumaMinus8() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_14, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.bitDepthLumaMinus8;
    }

    public int getChromaFormat() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_13, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.chromaFormat;
    }

    public int getConfigurationVersion() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_4, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.configurationVersion;
    }

    public int getConstantFrameRate() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_20, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.constantFrameRate;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        this.hevcDecoderConfigurationRecord.write(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return this.hevcDecoderConfigurationRecord.getSize();
    }

    public long getGeneral_constraint_indicator_flags() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_9, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.general_constraint_indicator_flags;
    }

    public int getGeneral_level_idc() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_10, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.general_level_idc;
    }

    public long getGeneral_profile_compatibility_flags() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_8, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.general_profile_compatibility_flags;
    }

    public int getGeneral_profile_idc() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_7, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.general_profile_idc;
    }

    public int getGeneral_profile_space() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_5, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.general_profile_space;
    }

    public HevcDecoderConfigurationRecord getHevcDecoderConfigurationRecord() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_0, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord;
    }

    public int getLengthSizeMinusOne() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_18, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.lengthSizeMinusOne;
    }

    public int getMin_spatial_segmentation_idc() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_11, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.min_spatial_segmentation_idc;
    }

    public int getNumTemporalLayers() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_17, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.numTemporalLayers;
    }

    public int getParallelismType() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_12, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.parallelismType;
    }

    public int hashCode() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_3, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord = this.hevcDecoderConfigurationRecord;
        if (hevcDecoderConfigurationRecord != null) {
            return hevcDecoderConfigurationRecord.hashCode();
        }
        return 0;
    }

    public boolean isGeneral_tier_flag() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_6, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.general_tier_flag;
    }

    public boolean isTemporalIdNested() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_19, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.hevcDecoderConfigurationRecord.temporalIdNested;
    }

    public void setHevcDecoderConfigurationRecord(HevcDecoderConfigurationRecord hevcDecoderConfigurationRecord) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_1, this, this, hevcDecoderConfigurationRecord);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.hevcDecoderConfigurationRecord = hevcDecoderConfigurationRecord;
    }
}
