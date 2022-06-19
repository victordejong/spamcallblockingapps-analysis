.class Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f$a;
.super Ljava/lang/Object;
.source "ShowTipActivityNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->i0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->i0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->m0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
