.class public final Landroidx/media2/exoplayer/external/extractor/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 44
    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/h;->a(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 49
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method

.method public final a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/Format;)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;I)V
    .locals 0

    .line 56
    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    return-void
.end method
