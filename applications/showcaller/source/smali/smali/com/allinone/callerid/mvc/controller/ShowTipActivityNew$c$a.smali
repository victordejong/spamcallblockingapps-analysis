.class Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$a;
.super Ljava/lang/Object;
.source "ShowTipActivityNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$a;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/util/h1;->t()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
