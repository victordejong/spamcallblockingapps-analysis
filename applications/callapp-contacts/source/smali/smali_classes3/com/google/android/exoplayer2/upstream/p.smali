.class public final Lcom/google/android/exoplayer2/upstream/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/r;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/p;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/p;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 111
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/p;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    return v0
.end method

.method public synthetic a()J
    .locals 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/r$-CC;->$default$a(Lcom/google/android/exoplayer2/upstream/r;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/r$a;)J
    .locals 2

    .line 96
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/r$a;->c:Ljava/io/IOException;

    .line 100
    instance-of v1, v0, Lcom/google/android/exoplayer2/ParserException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget p1, p1, Lcom/google/android/exoplayer2/upstream/r$a;->d:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
