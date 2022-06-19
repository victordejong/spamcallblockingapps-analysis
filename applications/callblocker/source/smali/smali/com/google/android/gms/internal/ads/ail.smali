.class public final Lcom/google/android/gms/internal/ads/ail;
.super Lcom/google/android/gms/internal/ads/dhe;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private b:Ljava/util/Date;

.field private c:Ljava/util/Date;

.field private d:J

.field private e:J

.field private f:D

.field private g:F

.field private h:Lcom/google/android/gms/internal/ads/dho;

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1
    const-string/jumbo v0, "mvhd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dhe;-><init>(Ljava/lang/String;)V

    .line 2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->f:D

    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/ail;->g:F

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dho;->a:Lcom/google/android/gms/internal/ads/dho;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ail;->h:Lcom/google/android/gms/internal/ads/dho;

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dhe;->b(Ljava/nio/ByteBuffer;)J

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dhe;->e()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->c(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhh;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ail;->b:Ljava/util/Date;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->c(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhh;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ail;->c:Ljava/util/Date;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->d:J

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->c(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->e:J

    .line 18
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->d(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->f:D

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 21
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 22
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x0

    int-to-short v1, v1

    .line 23
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 24
    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/google/android/gms/internal/ads/ail;->g:F

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->b(Ljava/nio/ByteBuffer;)I

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dho;->a(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/dho;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ail;->h:Lcom/google/android/gms/internal/ads/dho;

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ail;->j:I

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ail;->k:I

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ail;->l:I

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ail;->m:I

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ail;->n:I

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ail;->o:I

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->i:J

    .line 37
    return-void

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhh;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ail;->b:Ljava/util/Date;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhh;->a(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ail;->c:Ljava/util/Date;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->d:J

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aej;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->e:J

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->d:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ail;->e:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string/jumbo v1, "MovieHeaderBox["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, "creationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ail;->b:Ljava/util/Date;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "modificationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ail;->c:Ljava/util/Date;

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v1, "timescale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ail;->d:J

    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, "duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ail;->e:J

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, "rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ail;->f:D

    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, "volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    iget v2, p0, Lcom/google/android/gms/internal/ads/ail;->g:F

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "matrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ail;->h:Lcom/google/android/gms/internal/ads/dho;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, "nextTrackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ail;->i:J

    .line 68
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
