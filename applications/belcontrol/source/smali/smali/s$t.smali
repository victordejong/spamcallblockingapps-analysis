.class public final Ls$t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "t"
.end annotation


# instance fields
.field public final synthetic a:Ls;


# direct methods
.method public constructor <init>(Ls;)V
    .locals 0

    iput-object p1, p0, Ls$t;->a:Ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx0;)Z
    .locals 2

    invoke-virtual {p1}, Lx0;->getRootMenu()Lx0;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ls$t;->a:Ls;

    iget-boolean v1, v0, Ls;->C:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ls;->d0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ls$t;->a:Ls;

    iget-boolean v1, v1, Ls;->O:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCloseMenu(Lx0;Z)V
    .locals 4

    invoke-virtual {p1}, Lx0;->getRootMenu()Lx0;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ls$t;->a:Ls;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Ls;->W(Landroid/view/Menu;)Ls$s;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    iget-object p2, p0, Ls$t;->a:Ls;

    iget v2, p1, Ls$s;->a:I

    invoke-virtual {p2, v2, p1, v0}, Ls;->I(ILs$s;Landroid/view/Menu;)V

    iget-object p2, p0, Ls$t;->a:Ls;

    invoke-virtual {p2, p1, v1}, Ls;->M(Ls$s;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ls$t;->a:Ls;

    invoke-virtual {v0, p1, p2}, Ls;->M(Ls$s;Z)V

    :cond_3
    :goto_1
    return-void
.end method
