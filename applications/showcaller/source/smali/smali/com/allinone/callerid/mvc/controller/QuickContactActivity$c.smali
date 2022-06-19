.class Lcom/allinone/callerid/mvc/controller/QuickContactActivity$c;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$c;->a:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$c;->a:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->c0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/QuickContactActivity$c;->a:Lcom/allinone/callerid/mvc/controller/QuickContactActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/QuickContactActivity;->c0(Lcom/allinone/callerid/mvc/controller/QuickContactActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->s1(Z)V

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
