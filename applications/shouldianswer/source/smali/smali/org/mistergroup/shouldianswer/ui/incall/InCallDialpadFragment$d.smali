.class public final Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InCallDialpadFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 59
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$d;->a:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;)Lorg/mistergroup/shouldianswer/a/ak;

    move-result-object p1

    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ak;->d:Landroid/widget/LinearLayout;

    const-string v0, "binding.llDialer"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
