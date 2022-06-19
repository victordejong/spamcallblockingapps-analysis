.class public final Lcom/google/android/exoplayer2/Format$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field D:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/h;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lcom/google/android/exoplayer2/metadata/Metadata;

.field j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public n:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public o:J

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:F

.field public u:[B

.field public v:I

.field public w:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 174
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 175
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 177
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->l:I

    const-wide v1, 0x7fffffffffffffffL

    .line 178
    iput-wide v1, p0, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 180
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 181
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->q:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 182
    iput v1, p0, Lcom/google/android/exoplayer2/Format$a;->r:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 183
    iput v1, p0, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 184
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->v:I

    .line 186
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 187
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 188
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 190
    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->C:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    .line 200
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->b:Ljava/lang/String;

    .line 201
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 202
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->d:I

    .line 203
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->e:I

    .line 204
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 205
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 206
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 209
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->j:Ljava/lang/String;

    .line 211
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 212
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 213
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 214
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->n:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 215
    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/Format$a;->o:J

    .line 217
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->p:I

    .line 218
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->q:I

    .line 219
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->r:F

    .line 220
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->s:I

    .line 221
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->t:F

    .line 222
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->u:[B

    .line 223
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->v:I

    .line 224
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format$a;->w:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 226
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 227
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 228
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 229
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->A:I

    .line 230
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->B:I

    .line 232
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iput v0, p0, Lcom/google/android/exoplayer2/Format$a;->C:I

    .line 234
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$a;->D:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Format$a;-><init>(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/exoplayer2/Format$a;
    .locals 0

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 595
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$a;Lcom/google/android/exoplayer2/Format$1;)V

    return-object v0
.end method
