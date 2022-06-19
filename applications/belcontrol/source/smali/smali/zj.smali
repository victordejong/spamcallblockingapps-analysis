.class public final Lzj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JIIILkk$a;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/media2/exoplayer/external/Format;)V
    .locals 0

    return-void
.end method

.method public c(Lyt;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lyt;->K(I)V

    return-void
.end method

.method public d(Lbk;IZ)I
    .locals 0

    invoke-interface {p1, p2}, Lbk;->skip(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method
