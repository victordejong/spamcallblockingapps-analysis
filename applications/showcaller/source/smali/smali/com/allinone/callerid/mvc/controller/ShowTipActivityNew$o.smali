.class Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;
.super Ljava/lang/Object;
.source "ShowTipActivityNew.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->w0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o$a;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->w0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o$b;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
