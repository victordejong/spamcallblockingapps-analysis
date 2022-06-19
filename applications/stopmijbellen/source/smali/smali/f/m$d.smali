.class public final Lf/m$d;
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
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lf/m;


# direct methods
.method public constructor <init>(Lf/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/m$d;->a:Lf/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/e;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/m$d;->a:Lf/m;

    invoke-virtual {p2, p1}, Lf/m;->F(Landroidx/appcompat/view/menu/e;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/e;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m$d;->a:Lf/m;

    invoke-virtual {v0}, Lf/m;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
