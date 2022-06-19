.class public final Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final bitrateMax:I

.field public final bitrateMin:I

.field public final bitrateNominal:I

.field public final blockSize0:I

.field public final blockSize1:I

.field public final channels:I

.field public final data:[B

.field public final framingFlag:Z

.field public final sampleRate:J

.field public final version:J


# direct methods
.method public constructor <init>(JIJIIIIIZ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->version:J

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->channels:I

    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->sampleRate:J

    iput p6, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    iput p7, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    iput p8, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    iput p9, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize0:I

    iput p10, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->blockSize1:I

    iput-boolean p11, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->framingFlag:Z

    iput-object p12, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->data:[B

    return-void
.end method


# virtual methods
.method public getApproximateBitrate()I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMin:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisUtil$VorbisIdHeader;->bitrateMax:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method
