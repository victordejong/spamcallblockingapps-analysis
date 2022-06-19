.class Lcom/unknownphone/callblocker/tutorial_other/e$1;
.super Ljava/lang/Object;
.source "OtherTutorialPage5Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/tutorial_other/e;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/tutorial_other/e;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/tutorial_other/e;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_other/e;->a(Lcom/unknownphone/callblocker/tutorial_other/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_other/e;->a(Lcom/unknownphone/callblocker/tutorial_other/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 62
    int-to-float v0, v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v2}, Lcom/unknownphone/callblocker/tutorial_other/e;->b(Lcom/unknownphone/callblocker/tutorial_other/e;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 63
    int-to-float v1, v1

    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v2}, Lcom/unknownphone/callblocker/tutorial_other/e;->c(Lcom/unknownphone/callblocker/tutorial_other/e;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_other/e;->a(Lcom/unknownphone/callblocker/tutorial_other/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 66
    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_other/e;->a(Lcom/unknownphone/callblocker/tutorial_other/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 67
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_other/e;->a(Lcom/unknownphone/callblocker/tutorial_other/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_other/e;->a(Lcom/unknownphone/callblocker/tutorial_other/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 68
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_other/e;->a(Lcom/unknownphone/callblocker/tutorial_other/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_other/e$1;->a:Lcom/unknownphone/callblocker/tutorial_other/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_other/e;->a(Lcom/unknownphone/callblocker/tutorial_other/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 69
    return-void
.end method
