.class final Lcom/google/android/exoplayer2/extractor/g/g;
.super Lcom/google/android/exoplayer2/extractor/g/h;
.source "SourceFile"


# static fields
.field private static final j:[B


# instance fields
.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 34
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/g/g;->j:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/g/h;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;)Z
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    sget-object v1, Lcom/google/android/exoplayer2/extractor/g/g;->j:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    return v3

    .line 42
    :cond_0
    array-length v0, v1

    new-array v0, v0, [B

    .line 43
    array-length v2, v1

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 44
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/g/h;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/g/g;->k:Z

    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/util/u;JLcom/google/android/exoplayer2/extractor/g/h$a;)Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 63
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/g/g;->k:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 2169
    iget-object p2, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3127
    iget p1, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 64
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    .line 4042
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 66
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/p;->a([B)Ljava/util/List;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    const-string v1, "audio/opus"

    .line 4370
    iput-object v1, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 4517
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    const p2, 0xbb80

    .line 4528
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 5392
    iput-object p1, v0, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/g/h$a;->a:Lcom/google/android/exoplayer2/Format;

    .line 74
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/g/g;->k:Z

    return p3

    .line 77
    :cond_0
    iget-object p2, p4, Lcom/google/android/exoplayer2/extractor/g/h$a;->a:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result p2

    const p4, 0x4f707573

    const/4 v0, 0x0

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 79
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return p3
.end method

.method protected final b(Lcom/google/android/exoplayer2/util/u;)J
    .locals 6

    .line 1169
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v0, 0x0

    .line 2091
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 2102
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/g/g;->b(J)J

    move-result-wide v0

    return-wide v0
.end method
