.class public final Landroidx/media2/exoplayer/external/upstream/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/t;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 59
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/q;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/q;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 109
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/q;->a:I

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

.method public final a(Ljava/io/IOException;)J
    .locals 3

    .line 78
    instance-of v0, p1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 79
    check-cast p1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p1, p1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->c:I

    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v1

    :cond_1
    :goto_0
    const-wide/32 v0, 0xea60

    return-wide v0

    :cond_2
    return-wide v1
.end method

.method public final a(Ljava/io/IOException;I)J
    .locals 1

    .line 98
    instance-of v0, p1, Landroidx/media2/exoplayer/external/ParserException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_1

    instance-of p1, p1, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    mul-int/lit16 p2, p2, 0x3e8

    const/16 p1, 0x1388

    .line 100
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_1
    :goto_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method
