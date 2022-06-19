.class public final Landroidx/media2/session/SessionTokenImplLegacyParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ld40;)Lkw;
    .locals 3

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    iget-object v1, v0, Lkw;->b:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ld40;->k(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lkw;->b:Landroid/os/Bundle;

    iget v1, v0, Lkw;->c:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lkw;->c:I

    iget v1, v0, Lkw;->d:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ld40;->v(II)I

    move-result v1

    iput v1, v0, Lkw;->d:I

    iget-object v1, v0, Lkw;->e:Landroid/content/ComponentName;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ld40;->A(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, v0, Lkw;->e:Landroid/content/ComponentName;

    iget-object v1, v0, Lkw;->f:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ld40;->E(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkw;->f:Ljava/lang/String;

    iget-object v1, v0, Lkw;->g:Landroid/os/Bundle;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ld40;->k(Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Lkw;->g:Landroid/os/Bundle;

    invoke-virtual {v0}, Lkw;->d()V

    return-object v0
.end method

.method public static write(Lkw;Ld40;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ld40;->K(ZZ)V

    invoke-virtual {p1}, Ld40;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lkw;->e(Z)V

    iget-object v0, p0, Lkw;->b:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ld40;->O(Landroid/os/Bundle;I)V

    iget v0, p0, Lkw;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget v0, p0, Lkw;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ld40;->Y(II)V

    iget-object v0, p0, Lkw;->e:Landroid/content/ComponentName;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ld40;->d0(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lkw;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ld40;->h0(Ljava/lang/String;I)V

    iget-object p0, p0, Lkw;->g:Landroid/os/Bundle;

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Ld40;->O(Landroid/os/Bundle;I)V

    return-void
.end method
