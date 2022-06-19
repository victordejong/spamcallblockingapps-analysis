.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Format$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final exoMediaCryptoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/h;",
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

.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

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

    .line 1663
    new-instance v0, Lcom/google/android/exoplayer2/Format$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 1238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 1239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 1240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 1241
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 1242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 1243
    const-class v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 1247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 1249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1252
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1254
    :cond_1
    const-class v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 1257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1259
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 1261
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1262
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Parcel;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1263
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 1264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 1265
    const-class v1, Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 1268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 1269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 1271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 1273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-eqz v0, :cond_3

    .line 1276
    const-class v2, Lcom/google/android/exoplayer2/drm/n;

    :cond_3
    iput-object v2, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Format$a;)V
    .locals 5

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 1185
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 18121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 1186
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 19121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 1187
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 20121
    iget v0, p1, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 1188
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 21121
    iget v0, p1, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 1189
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 22121
    iget v0, p1, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 1190
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 23121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 1191
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 1192
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 24121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 1193
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 25121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1194
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 26121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->j:Ljava/lang/String;

    .line 1196
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 27121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 1198
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 28121
    iget v0, p1, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 1199
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 29121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 30121
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 1201
    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 31121
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1202
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 32121
    iget-wide v3, p1, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 1203
    iput-wide v3, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 33121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 1205
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 34121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 1206
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 35121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 1207
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 36121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->s:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 37121
    :cond_2
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->s:I

    .line 1208
    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 38121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->t:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    .line 39121
    :cond_3
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 1210
    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 40121
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format$a;->u:[B

    .line 1211
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 41121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->v:I

    .line 1212
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 42121
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format$a;->w:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1213
    iput-object v1, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 43121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 1215
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 44121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 1216
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 45121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 1217
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 46121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->A:I

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    .line 47121
    :cond_4
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->A:I

    .line 1218
    :goto_3
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 48121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->B:I

    if-ne v1, v2, :cond_5

    goto :goto_4

    .line 49121
    :cond_5
    iget v3, p1, Lcom/google/android/exoplayer2/Format$a;->B:I

    .line 1219
    :goto_4
    iput v3, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 50121
    iget v1, p1, Lcom/google/android/exoplayer2/Format$a;->C:I

    .line 1221
    iput v1, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 50122
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format$a;->D:Ljava/lang/Class;

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 1225
    const-class p1, Lcom/google/android/exoplayer2/drm/n;

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    return-void

    .line 50123
    :cond_6
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format$a;->D:Ljava/lang/Class;

    .line 1227
    iput-object p1, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/Format$a;Lcom/google/android/exoplayer2/Format$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$a;)V

    return-void
.end method

.method public static createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;IIILjava/util/List;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "III",
            "Ljava/util/List<",
            "[B>;II",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 921
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 6244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 6267
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 6278
    iput-object p12, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 6289
    iput p10, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 6300
    iput p11, v0, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 6311
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 6322
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 6333
    iput-object p4, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 6344
    iput-object p5, v0, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 6357
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->j:Ljava/lang/String;

    .line 6370
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 6392
    iput-object p9, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 6517
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 6528
    iput p8, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 936
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1019
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 9244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 9278
    iput-object p13, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 9289
    iput p12, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 9311
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 9322
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 9333
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 9344
    iput-object p14, v0, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 9370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 9381
    iput p4, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 9392
    iput-object p10, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 9403
    iput-object p11, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 9517
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 9528
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 9539
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 9550
    iput p8, v0, Lcom/google/android/exoplayer2/Format$a;->A:I

    .line 9561
    iput p9, v0, Lcom/google/android/exoplayer2/Format$a;->B:I

    .line 1036
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 984
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 8244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 8278
    iput-object p11, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 8289
    iput p10, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 8311
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 8322
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 8333
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 8370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 8381
    iput p4, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 8392
    iput-object p8, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 8403
    iput-object p9, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 8517
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 8528
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 8539
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 998
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 953
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 7244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 7278
    iput-object p10, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 7289
    iput p9, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 7311
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 7322
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 7333
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 7370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 7381
    iput p4, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 7392
    iput-object p7, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 7403
    iput-object p8, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 7517
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 7528
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 966
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1164
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 15244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 15267
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 15278
    iput-object p8, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 15289
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 15300
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 15311
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 15322
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 15333
    iput-object p4, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 15357
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->j:Ljava/lang/String;

    .line 15370
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 1175
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1141
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 14244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 14278
    iput-object p4, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 14289
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 14370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 14392
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 1147
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1181
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 16244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 16370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 1181
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1053
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 10244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 10267
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 10278
    iput-object p8, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 10289
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 10300
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 10311
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 10322
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 10333
    iput-object p4, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 10357
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->j:Ljava/lang/String;

    .line 10370
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 1064
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1080
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 11244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 11267
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 11278
    iput-object p8, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 11289
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 11300
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 11311
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 11322
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 11333
    iput-object p4, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 11357
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->j:Ljava/lang/String;

    .line 11370
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 11574
    iput p9, v0, Lcom/google/android/exoplayer2/Format$a;->C:I

    .line 1092
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1102
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 12244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 12278
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 12289
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 12370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 1107
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/util/List;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1120
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 13244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 13278
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 13289
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 13370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 13392
    iput-object p7, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 13414
    iput-wide p5, v0, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 13574
    iput p4, v0, Lcom/google/android/exoplayer2/Format$a;->C:I

    .line 1128
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;IIIFLjava/util/List;II)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;II)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 787
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 2244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 2267
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 2289
    iput p11, v0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 2300
    iput p12, v0, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 2311
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 2322
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 2333
    iput-object p4, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 2344
    iput-object p5, v0, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2357
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->j:Ljava/lang/String;

    .line 2370
    iput-object p3, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 2392
    iput-object p10, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 2427
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 2438
    iput p8, v0, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 2449
    iput p9, v0, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 802
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 848
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 4244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 4311
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 4322
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 4333
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 4370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 4381
    iput p4, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 4392
    iput-object p8, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 4403
    iput-object p11, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 4427
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 4438
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 4449
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 4460
    iput p9, v0, Lcom/google/android/exoplayer2/Format$a;->s:I

    .line 4471
    iput p10, v0, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 862
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/google/android/exoplayer2/video/ColorInfo;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 883
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 5244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 5311
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 5322
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 5333
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 5370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 5381
    iput p4, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 5392
    iput-object p8, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 5403
    iput-object p14, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 5427
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 5438
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 5449
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 5460
    iput p9, v0, Lcom/google/android/exoplayer2/Format$a;->s:I

    .line 5471
    iput p10, v0, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 5482
    iput-object p11, v0, Lcom/google/android/exoplayer2/Format$a;->u:[B

    .line 5493
    iput p12, v0, Lcom/google/android/exoplayer2/Format$a;->v:I

    .line 5504
    iput-object p13, v0, Lcom/google/android/exoplayer2/Format$a;->w:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 900
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 818
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 3244
    iput-object p0, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 3311
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 3322
    iput p3, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 3333
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 3370
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 3381
    iput p4, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 3392
    iput-object p8, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 3403
    iput-object p9, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3427
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 3438
    iput p6, v0, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 3449
    iput p7, v0, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 830
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1582
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, ", bitrate="

    .line 1585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1587
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", codecs="

    .line 1588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    :cond_2
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_3

    const-string v1, ", res="

    .line 1591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1593
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    const-string v1, ", fps="

    .line 1594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1596
    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v1, v2, :cond_5

    const-string v1, ", channels="

    .line 1597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1599
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v1, v2, :cond_6

    const-string v1, ", sample_rate="

    .line 1600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1602
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, ", language="

    .line 1603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, ", label="

    .line 1606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/exoplayer2/Format$a;
    .locals 2

    .line 1281
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format$a;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V

    return-object v0
.end method

.method public final copyWithBitrate(I)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50162
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 50164
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 1408
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1393
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50158
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1393
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithExoMediaCryptoType(Ljava/lang/Class;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/h;",
            ">;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .line 1423
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50170
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->D:Ljava/lang/Class;

    .line 1423
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithFrameRate(F)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1387
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50156
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 1387
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithGaplessInfo(II)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1381
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50152
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->A:I

    .line 50154
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->B:I

    .line 1381
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1299
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50128
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 1299
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1305
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithMaxInputSize(I)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1287
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50124
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 1287
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1399
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50160
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1399
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1293
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50126
    iput-wide p1, v0, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 1293
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final copyWithVideoSize(II)Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1417
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v0

    .line 50166
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 50168
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 1417
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
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

    .line 1515
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 1518
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 1519
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v2, :cond_2

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    .line 1523
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1539
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1540
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    .line 1541
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1542
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1543
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 1544
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 1545
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1546
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1547
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 1548
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1549
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1550
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1551
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1552
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getPixelCount()I
    .locals 3

    .line 1431
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

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

    .line 1466
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-nez v0, :cond_8

    .line 1469
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

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

    .line 1470
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1471
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1472
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1473
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1474
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1475
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1476
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1477
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1479
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1481
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1482
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1485
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 1487
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1488
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1489
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1490
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1491
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1493
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1496
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1497
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1498
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1499
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1500
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1502
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1504
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    .line 1505
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    .line 1507
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    return v0
.end method

.method public final initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z
    .locals 4

    .line 1564
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 1567
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1568
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

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
    .locals 3

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    if-ne p0, p1, :cond_0

    return-object p0

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/q;->g(Ljava/lang/String;)I

    move-result v0

    .line 1318
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1321
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1322
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v5, :cond_3

    .line 1323
    :cond_2
    iget-object v4, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v3, v4

    .line 1330
    :cond_3
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 1331
    :cond_4
    iget v7, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v7, v6, :cond_5

    iget v7, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    .line 1332
    :cond_5
    iget-object v6, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 1336
    iget-object v8, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1337
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/af;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v5, :cond_6

    move-object v6, v8

    .line 1344
    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v5, :cond_7

    .line 1345
    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    goto :goto_1

    .line 1346
    :cond_7
    iget-object v8, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    .line 1348
    :goto_1
    iget v8, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v8, v9

    if-nez v9, :cond_8

    const/4 v9, 0x2

    if-ne v0, v9, :cond_8

    .line 1350
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1354
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v9, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    or-int/2addr v0, v9

    .line 1355
    iget v9, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v10, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    or-int/2addr v9, v10

    .line 1357
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v10, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1358
    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/drm/DrmInitData;->createSessionCreationData(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    .line 1360
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object v10

    .line 50130
    iput-object v1, v10, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 50132
    iput-object v2, v10, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 50134
    iput-object v3, v10, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 50136
    iput v0, v10, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 50138
    iput v9, v10, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 50140
    iput v4, v10, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 50142
    iput v7, v10, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 50144
    iput-object v6, v10, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 50146
    iput-object v5, v10, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 50148
    iput-object p1, v10, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 50150
    iput v8, v10, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 1372
    invoke-virtual {v10}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1620
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1623
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1624
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1630
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1632
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1633
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1635
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1637
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1640
    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1642
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1645
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1647
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Parcel;Z)V

    .line 1648
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    if-eqz v0, :cond_2

    .line 1649
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1651
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1652
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1654
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
