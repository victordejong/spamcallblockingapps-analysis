.class public final Landroidx/media2/session/ConnectionRequestParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Lyv;
    .locals 3

    new-instance v0, Lyv;

    invoke-direct {v0}, Lyv;-><init>()V

    iget v1, v0, Lyv;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lyv;->a:I

    iget-object v1, v0, Lyv;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->E(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lyv;->b:Ljava/lang/String;

    iget v1, v0, Lyv;->c:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lyv;->c:I

    iget-object v1, v0, Lyv;->d:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ld40;->k(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Lyv;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public static write(Lyv;Ld40;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    iget v1, p0, Lyv;->a:I

    invoke-virtual {p1, v1, v0}, Ld40;->Y(II)V

    iget-object v0, p0, Lyv;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld40;->h0(Ljava/lang/String;I)V

    iget v0, p0, Lyv;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget-object p0, p0, Lyv;->d:Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0}, Ld40;->O(Landroid/os/Bundle;I)V

    return-void
.end method
