.class Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$b;
.super Ljava/lang/Object;
.source "ExpandLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->d(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$b;->a:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout$b;->a:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->c(Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;)Landroid/view/View;

    move-result-object v0

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->setViewHeight(Landroid/view/View;I)V

    return-void
.end method
