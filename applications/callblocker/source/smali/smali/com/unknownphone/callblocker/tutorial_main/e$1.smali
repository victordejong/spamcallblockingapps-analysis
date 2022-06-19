.class Lcom/unknownphone/callblocker/tutorial_main/e$1;
.super Ljava/lang/Object;
.source "MainTutorialPage5Fragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/tutorial_main/e;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/tutorial_main/e;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/tutorial_main/e;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 65
    int-to-float v0, v0

    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v2}, Lcom/unknownphone/callblocker/tutorial_main/e;->b(Lcom/unknownphone/callblocker/tutorial_main/e;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 66
    int-to-float v1, v1

    iget-object v2, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v2}, Lcom/unknownphone/callblocker/tutorial_main/e;->c(Lcom/unknownphone/callblocker/tutorial_main/e;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 69
    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 70
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 71
    iget-object v0, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v0}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/tutorial_main/e$1;->a:Lcom/unknownphone/callblocker/tutorial_main/e;

    invoke-static {v1}, Lcom/unknownphone/callblocker/tutorial_main/e;->a(Lcom/unknownphone/callblocker/tutorial_main/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 72
    return-void
.end method
