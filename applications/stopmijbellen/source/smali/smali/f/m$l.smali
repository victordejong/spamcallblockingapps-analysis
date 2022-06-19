.class public final Lf/m$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Lf/m;


# direct methods
.method public constructor <init>(Lf/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/m$l;->a:Lf/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/e;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->k()Landroidx/appcompat/view/menu/e;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lf/m$l;->a:Lf/m;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Lf/m;->N(Landroid/view/Menu;)Lf/m$k;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 3
    iget-object p2, p0, Lf/m$l;->a:Lf/m;

    iget v2, p1, Lf/m$k;->a:I

    invoke-virtual {p2, v2, p1, v0}, Lf/m;->E(ILf/m$k;Landroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Lf/m$l;->a:Lf/m;

    invoke-virtual {p2, p1, v1}, Lf/m;->G(Lf/m$k;Z)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lf/m$l;->a:Lf/m;

    invoke-virtual {v0, p1, p2}, Lf/m;->G(Lf/m$k;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/e;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->k()Landroidx/appcompat/view/menu/e;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lf/m$l;->a:Lf/m;

    iget-boolean v1, v0, Lf/m;->y:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/m;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lf/m$l;->a:Lf/m;

    iget-boolean v1, v1, Lf/m;->J:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
