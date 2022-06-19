.class Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$1;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->revertAnimation(Lcom/telguarder/helpers/ui/loadingButton/OnAnimationEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$1;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 305
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$1;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 307
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 308
    iget-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$1;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
