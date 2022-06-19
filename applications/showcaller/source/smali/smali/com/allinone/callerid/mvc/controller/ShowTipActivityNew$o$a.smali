.class Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o$a;
.super Ljava/lang/Object;
.source "ShowTipActivityNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/util/h1;->t()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
