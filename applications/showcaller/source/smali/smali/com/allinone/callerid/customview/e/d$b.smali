.class Lcom/allinone/callerid/customview/e/d$b;
.super Ljava/lang/Object;
.source "ViewAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/e/d;->n()Lcom/allinone/callerid/customview/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/customview/e/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/e/d$b;->d:Lcom/allinone/callerid/customview/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/d$b;->d:Lcom/allinone/callerid/customview/e/d;

    invoke-static {v0}, Lcom/allinone/callerid/customview/e/d;->e(Lcom/allinone/callerid/customview/e/d;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/e/d$b;->d:Lcom/allinone/callerid/customview/e/d;

    invoke-static {v0}, Lcom/allinone/callerid/customview/e/d;->f(Lcom/allinone/callerid/customview/e/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method
