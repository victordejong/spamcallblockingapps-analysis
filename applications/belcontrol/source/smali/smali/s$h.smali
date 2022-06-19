.class public final Ls$h;
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
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Ls;


# direct methods
.method public constructor <init>(Ls;)V
    .locals 0

    iput-object p1, p0, Ls$h;->a:Ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx0;)Z
    .locals 2

    iget-object v0, p0, Ls$h;->a:Ls;

    invoke-virtual {v0}, Ls;->d0()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCloseMenu(Lx0;Z)V
    .locals 0

    iget-object p2, p0, Ls$h;->a:Ls;

    invoke-virtual {p2, p1}, Ls;->J(Lx0;)V

    return-void
.end method
