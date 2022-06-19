package com.mp4parser.iso14496.part15;

import com.googlecode.mp4parser.AbstractC16221a;
import com.googlecode.mp4parser.C16297h;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/AvcConfigurationBox.class */
public final class AvcConfigurationBox extends AbstractC16221a {
    public static final String TYPE = "avcC";
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
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_22 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_23 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_24 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_25 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_26 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_27 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_28 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_29 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_3 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_4 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_5 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_6 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_7 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_8 = null;
    private static final AbstractC20997a.AbstractC20998a ajc$tjp_9 = null;
    public AvcDecoderConfigurationRecord avcDecoderConfigurationRecord = new AvcDecoderConfigurationRecord();

    static {
        ajc$preClinit();
    }

    public AvcConfigurationBox() {
        super(TYPE);
    }

    private static void ajc$preClinit() {
        C20987b c20987b = new C20987b("AvcConfigurationBox.java", AvcConfigurationBox.class);
        ajc$tjp_0 = c20987b.m164a("method-execution", c20987b.m165a("1", "getConfigurationVersion", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 44);
        ajc$tjp_1 = c20987b.m164a("method-execution", c20987b.m165a("1", "getAvcProfileIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 48);
        ajc$tjp_10 = c20987b.m164a("method-execution", c20987b.m165a("1", "setAvcLevelIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "avcLevelIndication", "", "void"), 84);
        ajc$tjp_11 = c20987b.m164a("method-execution", c20987b.m165a("1", "setLengthSizeMinusOne", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "lengthSizeMinusOne", "", "void"), 88);
        ajc$tjp_12 = c20987b.m164a("method-execution", c20987b.m165a("1", "setSequenceParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "sequenceParameterSets", "", "void"), 92);
        ajc$tjp_13 = c20987b.m164a("method-execution", c20987b.m165a("1", "setPictureParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "pictureParameterSets", "", "void"), 96);
        ajc$tjp_14 = c20987b.m164a("method-execution", c20987b.m165a("1", "getChromaFormat", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 100);
        ajc$tjp_15 = c20987b.m164a("method-execution", c20987b.m165a("1", "setChromaFormat", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "chromaFormat", "", "void"), 104);
        ajc$tjp_16 = c20987b.m164a("method-execution", c20987b.m165a("1", "getBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 108);
        ajc$tjp_17 = c20987b.m164a("method-execution", c20987b.m165a("1", "setBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "bitDepthLumaMinus8", "", "void"), 112);
        ajc$tjp_18 = c20987b.m164a("method-execution", c20987b.m165a("1", "getBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 116);
        ajc$tjp_19 = c20987b.m164a("method-execution", c20987b.m165a("1", "setBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "bitDepthChromaMinus8", "", "void"), 120);
        ajc$tjp_2 = c20987b.m164a("method-execution", c20987b.m165a("1", "getProfileCompatibility", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 52);
        ajc$tjp_20 = c20987b.m164a("method-execution", c20987b.m165a("1", "getSequenceParameterSetExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 124);
        ajc$tjp_21 = c20987b.m164a("method-execution", c20987b.m165a("1", "setSequenceParameterSetExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.util.List", "sequenceParameterSetExts", "", "void"), 128);
        ajc$tjp_22 = c20987b.m164a("method-execution", c20987b.m165a("1", "hasExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "boolean"), 132);
        ajc$tjp_23 = c20987b.m164a("method-execution", c20987b.m165a("1", "setHasExts", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "boolean", "hasExts", "", "void"), 136);
        ajc$tjp_24 = c20987b.m164a("method-execution", c20987b.m165a("1", "getContentSize", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "long"), 147);
        ajc$tjp_25 = c20987b.m164a("method-execution", c20987b.m165a("1", "getContent", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 153);
        ajc$tjp_26 = c20987b.m164a("method-execution", c20987b.m165a("1", "getSPS", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "[Ljava.lang.String;"), 158);
        ajc$tjp_27 = c20987b.m164a("method-execution", c20987b.m165a("1", "getPPS", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "[Ljava.lang.String;"), 162);
        ajc$tjp_28 = c20987b.m164a("method-execution", c20987b.m165a("1", "getavcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "com.mp4parser.iso14496.part15.AvcDecoderConfigurationRecord"), 167);
        ajc$tjp_29 = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.lang.String"), 172);
        ajc$tjp_3 = c20987b.m164a("method-execution", c20987b.m165a("1", "getAvcLevelIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 56);
        ajc$tjp_4 = c20987b.m164a("method-execution", c20987b.m165a("1", "getLengthSizeMinusOne", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "int"), 60);
        ajc$tjp_5 = c20987b.m164a("method-execution", c20987b.m165a("1", "getSequenceParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 64);
        ajc$tjp_6 = c20987b.m164a("method-execution", c20987b.m165a("1", "getPictureParameterSets", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "", "", "", "java.util.List"), 68);
        ajc$tjp_7 = c20987b.m164a("method-execution", c20987b.m165a("1", "setConfigurationVersion", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "configurationVersion", "", "void"), 72);
        ajc$tjp_8 = c20987b.m164a("method-execution", c20987b.m165a("1", "setAvcProfileIndication", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "avcProfileIndication", "", "void"), 76);
        ajc$tjp_9 = c20987b.m164a("method-execution", c20987b.m165a("1", "setProfileCompatibility", "com.mp4parser.iso14496.part15.AvcConfigurationBox", "int", "profileCompatibility", "", "void"), 80);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public final void _parseDetails(ByteBuffer byteBuffer) {
        this.avcDecoderConfigurationRecord = new AvcDecoderConfigurationRecord(byteBuffer);
    }

    public final int getAvcLevelIndication() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_3, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.avcLevelIndication;
    }

    public final int getAvcProfileIndication() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_1, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.avcProfileIndication;
    }

    public final int getBitDepthChromaMinus8() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_18, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.bitDepthChromaMinus8;
    }

    public final int getBitDepthLumaMinus8() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_16, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.bitDepthLumaMinus8;
    }

    public final int getChromaFormat() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_14, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.chromaFormat;
    }

    public final int getConfigurationVersion() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_0, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.configurationVersion;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public final void getContent(ByteBuffer byteBuffer) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_25, this, this, byteBuffer);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.getContent(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public final long getContentSize() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_24, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.getContentSize();
    }

    public final int getLengthSizeMinusOne() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_4, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.lengthSizeMinusOne;
    }

    public final String[] getPPS() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_27, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.getPPS();
    }

    public final List<byte[]> getPictureParameterSets() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_6, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return Collections.unmodifiableList(this.avcDecoderConfigurationRecord.pictureParameterSets);
    }

    public final int getProfileCompatibility() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_2, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.profileCompatibility;
    }

    public final String[] getSPS() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_26, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.getSPS();
    }

    public final List<byte[]> getSequenceParameterSetExts() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_20, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.sequenceParameterSetExts;
    }

    public final List<byte[]> getSequenceParameterSets() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_5, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return Collections.unmodifiableList(this.avcDecoderConfigurationRecord.sequenceParameterSets);
    }

    public final AvcDecoderConfigurationRecord getavcDecoderConfigurationRecord() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_28, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord;
    }

    public final boolean hasExts() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_22, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.avcDecoderConfigurationRecord.hasExts;
    }

    public final void setAvcLevelIndication(int i) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_10, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.avcLevelIndication = i;
    }

    public final void setAvcProfileIndication(int i) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_8, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.avcProfileIndication = i;
    }

    public final void setBitDepthChromaMinus8(int i) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_19, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.bitDepthChromaMinus8 = i;
    }

    public final void setBitDepthLumaMinus8(int i) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_17, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.bitDepthLumaMinus8 = i;
    }

    public final void setChromaFormat(int i) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_15, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.chromaFormat = i;
    }

    public final void setConfigurationVersion(int i) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_7, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.configurationVersion = i;
    }

    public final void setHasExts(boolean z) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_23, this, this, Boolean.valueOf(z));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.hasExts = z;
    }

    public final void setLengthSizeMinusOne(int i) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_11, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.lengthSizeMinusOne = i;
    }

    public final void setPictureParameterSets(List<byte[]> list) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_13, this, this, list);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.pictureParameterSets = list;
    }

    public final void setProfileCompatibility(int i) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_9, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.profileCompatibility = i;
    }

    public final void setSequenceParameterSetExts(List<byte[]> list) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_21, this, this, list);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.sequenceParameterSetExts = list;
    }

    public final void setSequenceParameterSets(List<byte[]> list) {
        AbstractC20997a m162a = C20987b.m162a(ajc$tjp_12, this, this, list);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.avcDecoderConfigurationRecord.sequenceParameterSets = list;
    }

    public final String toString() {
        AbstractC20997a m163a = C20987b.m163a(ajc$tjp_29, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "AvcConfigurationBox{avcDecoderConfigurationRecord=" + this.avcDecoderConfigurationRecord + '}';
    }
}
