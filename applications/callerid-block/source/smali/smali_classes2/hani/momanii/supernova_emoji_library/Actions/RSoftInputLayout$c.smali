.class Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;


# direct methods
.method constructor <init>(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$c;->a:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$c;->a:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->b(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$c;->a:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    invoke-static {p1}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->c(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
