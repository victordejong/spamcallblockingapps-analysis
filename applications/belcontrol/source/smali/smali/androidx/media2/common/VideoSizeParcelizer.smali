.class public final Landroidx/media2/common/VideoSizeParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Landroidx/media2/common/VideoSize;
    .locals 3

    new-instance v0, Landroidx/media2/common/VideoSize;

    invoke-direct {v0}, Landroidx/media2/common/VideoSize;-><init>()V

    iget v1, v0, Landroidx/media2/common/VideoSize;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Landroidx/media2/common/VideoSize;->a:I

    iget v1, v0, Landroidx/media2/common/VideoSize;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result p0

    iput p0, v0, Landroidx/media2/common/VideoSize;->b:I

    return-object v0
.end method

.method public static write(Landroidx/media2/common/VideoSize;Ld40;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    iget v0, p0, Landroidx/media2/common/VideoSize;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget p0, p0, Landroidx/media2/common/VideoSize;->b:I

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Ld40;->Y(II)V

    return-void
.end method
