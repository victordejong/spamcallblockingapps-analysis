.class public final Landroidx/media2/exoplayer/external/Format;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final exoMediaCryptoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media2/exoplayer/external/drm/m;",
            ">;"
        }
    .end annotation
.end field

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

.field public final pcmEncoding:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1715
    new-instance v0, Landroidx/media2/exoplayer/external/Format$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/Format$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    .line 1005
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 1006
    const-class v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 1008
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    .line 1010
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    .line 1012
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1013
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1015
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1017
    :cond_0
    const-class v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1018
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    .line 1020
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    .line 1021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    .line 1022
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    .line 1023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    .line 1025
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroid/os/Parcel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    .line 1028
    const-class v0, Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/video/ColorInfo;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 1030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 1031
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    .line 1032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    .line 1033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    .line 1034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    .line 1036
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    .line 1039
    iput-object v1, p0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "JIIFIF[BI",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media2/exoplayer/external/drm/m;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 959
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    move-object v1, p2

    .line 960
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    move v1, p3

    .line 961
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    move v1, p4

    .line 962
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    move v1, p5

    .line 963
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    move-object v1, p6

    .line 964
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    move-object v1, p7

    .line 965
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object v1, p8

    .line 967
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    move-object v1, p9

    .line 969
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    move v1, p10

    .line 970
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    if-nez p11, :cond_0

    .line 972
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p11

    :goto_0
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    move-object/from16 v1, p12

    .line 973
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-wide/from16 v1, p13

    .line 974
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move/from16 v1, p15

    .line 976
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v1, p16

    .line 977
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v1, p17

    .line 978
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v3, p18

    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    .line 979
    :cond_1
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p19, v3

    if-nez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move/from16 v3, p19

    .line 981
    :goto_1
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move-object/from16 v3, p20

    .line 982
    iput-object v3, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move/from16 v3, p21

    .line 983
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move-object/from16 v3, p22

    .line 984
    iput-object v3, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move/from16 v3, p23

    .line 986
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v3, p24

    .line 987
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v3, p25

    .line 988
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v3, p26

    if-ne v3, v2, :cond_3

    const/4 v3, 0x0

    .line 989
    :cond_3
    iput v3, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v3, p27

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    .line 990
    :goto_2
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    .line 992
    invoke-static/range {p28 .. p28}, Landroidx/media2/exoplayer/external/util/ac;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move/from16 v1, p29

    .line 993
    iput v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move-object/from16 v1, p30

    .line 995
    iput-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p9

    .line 389
    invoke-static/range {v0 .. v12}, Landroidx/media2/exoplayer/external/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            "III",
            "Ljava/util/List<",
            "[B>;II",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v5, p6

    move/from16 v23, p7

    move/from16 v24, p8

    move-object/from16 v11, p9

    move/from16 v3, p10

    move/from16 v4, p11

    move-object/from16 v28, p12

    .line 419
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    move/from16 v26, p8

    move/from16 v27, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v3, p12

    move-object/from16 v28, p13

    move-object/from16 v7, p14

    .line 525
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 491
    invoke-static/range {v0 .. v14}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 463
    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    .line 797
    invoke-static/range {v0 .. v8}, Landroidx/media2/exoplayer/external/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    .line 819
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v11, p5

    move-object/from16 v28, p6

    move-object/from16 v12, p7

    .line 750
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-wide/from16 v13, p2

    .line 853
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move-object/from16 v12, p4

    .line 891
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 10

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 569
    invoke-static/range {v0 .. v9}, Landroidx/media2/exoplayer/external/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v5, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v28, p8

    move/from16 v29, p9

    .line 593
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    const/4 v0, 0x0

    .line 630
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 11

    .line 649
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 639
    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 11

    .line 671
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 661
    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v3, p4

    move-object/from16 v28, p5

    move/from16 v29, p6

    move-object/from16 v12, p7

    move-wide/from16 v13, p8

    move-object/from16 v11, p10

    .line 707
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;J)Landroidx/media2/exoplayer/external/Format;
    .locals 11

    .line 693
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    .line 683
    invoke-static/range {v0 .. v10}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Landroidx/media2/exoplayer/external/Format;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;I)",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    .line 204
    invoke-static/range {v0 .. v12}, Landroidx/media2/exoplayer/external/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;II)",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v5, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v11, p10

    move/from16 v3, p11

    move/from16 v4, p12

    .line 234
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    .line 305
    invoke-static/range {v0 .. v14}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v5, p3

    move/from16 v10, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move-object/from16 v11, p8

    move/from16 v18, p9

    move/from16 v19, p10

    move-object/from16 v20, p11

    move/from16 v21, p12

    move-object/from16 v22, p13

    move-object/from16 v12, p14

    .line 339
    new-instance v31, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ")",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    .line 277
    invoke-static/range {v0 .. v11}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    return-object v0
.end method

.method public static toLogString(Landroidx/media2/exoplayer/external/Format;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1635
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    .line 1636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, ", bitrate="

    .line 1638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1640
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", codecs="

    .line 1641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    :cond_2
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-eq v1, v2, :cond_3

    const-string v1, ", res="

    .line 1644
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1646
    :cond_3
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    const-string v1, ", fps="

    .line 1647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1649
    :cond_4
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq v1, v2, :cond_5

    const-string v1, ", channels="

    .line 1650
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1652
    :cond_5
    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-eq v1, v2, :cond_6

    const-string v1, ", sample_rate="

    .line 1653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1655
    :cond_6
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, ", language="

    .line 1656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    :cond_7
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, ", label="

    .line 1659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copyWithAdjustments(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    .line 1314
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v14, p1

    if-ne v14, v1, :cond_0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v9, p2

    if-ne v9, v1, :cond_1

    return-object v0

    :cond_0
    move-object/from16 v9, p2

    .line 1317
    :cond_1
    new-instance v1, Landroidx/media2/exoplayer/external/Format;

    move-object v2, v1

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v7, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v11, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v12, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-wide v15, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v17, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v18, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v19, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v20, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v21, v14

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v22, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v23, v14

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v24, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v25, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v26, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v27, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v28, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v29, v14

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v30, v14

    iget v14, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v31, v14

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v32, v14

    move-object/from16 v9, p2

    move-object/from16 v14, p1

    invoke-direct/range {v2 .. v32}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v1
.end method

.method public final copyWithBitrate(I)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v6, p1

    .line 1383
    new-instance v32, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final copyWithContainerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIIILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    .line 1121
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v2, p5

    if-eqz v1, :cond_0

    .line 1122
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v2

    .line 1125
    :goto_0
    new-instance v1, Landroidx/media2/exoplayer/external/Format;

    move-object v2, v1

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget v12, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-wide v15, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v19, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v20, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v21, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v22, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v23, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v24, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v26, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v27, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v28, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v29, v3

    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v31, v3

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v32, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p10

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v11, p3

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v25, p9

    move-object/from16 v30, p11

    invoke-direct/range {v2 .. v32}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v1
.end method

.method public final copyWithDrmInitData(Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 1304
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {p0, p1, v0}, Landroidx/media2/exoplayer/external/Format;->copyWithAdjustments(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithExoMediaCryptoType(Ljava/lang/Class;)Landroidx/media2/exoplayer/external/Format;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media2/exoplayer/external/drm/m;",
            ">;)",
            "Landroidx/media2/exoplayer/external/Format;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v31, p1

    .line 1449
    new-instance v32, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final copyWithFrameRate(F)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v18, p1

    .line 1271
    new-instance v32, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final copyWithGaplessInfo(II)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v27, p1

    move/from16 v28, p2

    .line 1238
    new-instance v32, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final copyWithManifestFormatInfo(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/Format;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    .line 1164
    :cond_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/m;->g(Ljava/lang/String;)I

    move-result v2

    .line 1167
    iget-object v4, v1, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    .line 1170
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    :goto_0
    move-object v5, v3

    .line 1171
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v2, v6, :cond_2

    if-ne v2, v7, :cond_3

    .line 1172
    :cond_2
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object/from16 v31, v6

    goto :goto_1

    :cond_3
    move-object/from16 v31, v3

    .line 1178
    :goto_1
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    :cond_4
    move v8, v3

    .line 1179
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 1183
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v6, v2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1184
    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/ac;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v7, :cond_5

    move-object v9, v6

    goto :goto_2

    :cond_5
    move-object v9, v3

    .line 1190
    :goto_2
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v3, :cond_6

    .line 1191
    iget-object v3, v1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    goto :goto_3

    .line 1192
    :cond_6
    iget-object v6, v1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {v3, v6}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v3

    :goto_3
    move-object v10, v3

    .line 1194
    iget v3, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v3, v6

    if-nez v6, :cond_7

    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 1196
    iget v2, v1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v20, v2

    goto :goto_4

    :cond_7
    move/from16 v20, v3

    .line 1200
    :goto_4
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    or-int v6, v2, v3

    .line 1201
    iget v2, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v3, v1, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    or-int v7, v2, v3

    .line 1202
    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1203
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->createSessionCreationData(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v15

    .line 1205
    new-instance v1, Landroidx/media2/exoplayer/external/Format;

    move-object v3, v1

    iget-object v11, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v13, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v14, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    move-object/from16 p1, v1

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-wide/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v28, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v30, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v32, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v33, v1

    invoke-direct/range {v3 .. v33}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object p1
.end method

.method public final copyWithMaxInputSize(I)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v11, p1

    .line 1043
    new-instance v32, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;
    .locals 1

    .line 1308
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/Format;->copyWithAdjustments(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithRotationDegrees(I)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v19, p1

    .line 1350
    new-instance v32, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final copyWithSubsampleOffsetUs(J)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    .line 1076
    new-instance v32, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->width:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->height:I

    move/from16 v17, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final copyWithVideoSize(II)Landroidx/media2/exoplayer/external/Format;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v16, p1

    move/from16 v17, p2

    .line 1416
    new-instance v32, Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v1, v32

    iget-object v2, v0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget v4, v0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v5, v0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v7, v0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget v11, v0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget-object v12, v0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    iget-object v13, v0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    move/from16 v18, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    move/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    move-object/from16 v21, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    move/from16 v22, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    move/from16 v25, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    move/from16 v26, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    move/from16 v27, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    move/from16 v30, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1569
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 1572
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/Format;

    .line 1573
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    if-eqz v2, :cond_2

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    .line 1577
    :cond_2
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    .line 1592
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    .line 1593
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    .line 1594
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    .line 1595
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    .line 1596
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    .line 1597
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    .line 1598
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 1599
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 1600
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    .line 1601
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 1602
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 1603
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 1604
    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1605
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/Format;->initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getPixelCount()I
    .locals 3

    .line 1486
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v2

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1521
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    if-nez v0, :cond_8

    .line 1524
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 1525
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1526
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1527
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1528
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1529
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1530
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1532
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1534
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1535
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1538
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1540
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1541
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1542
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1543
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1544
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1546
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1549
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1550
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1551
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1552
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1553
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1555
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1556
    iget v2, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1558
    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    .line 1559
    iput v0, p0, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    .line 1561
    :cond_8
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->hashCode:I

    return v0
.end method

.method public final initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 4

    .line 1617
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 1620
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1621
    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 1491
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    iget v5, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    iget-object v6, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    iget v7, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v8, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v9, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    iget v10, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v11, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x68

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Format("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1673
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1675
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->roleFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1678
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1681
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1684
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1685
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1686
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1688
    iget-object v3, p0, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1690
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1691
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1693
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1694
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1696
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1697
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1698
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroid/os/Parcel;Z)V

    .line 1699
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->projectionData:[B

    if-eqz v0, :cond_2

    .line 1700
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1702
    :cond_2
    iget v0, p0, Landroidx/media2/exoplayer/external/Format;->stereoMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1703
    iget-object v0, p0, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1705
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1706
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1708
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    iget-object p2, p0, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1712
    iget p2, p0, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
