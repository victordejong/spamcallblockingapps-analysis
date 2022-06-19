.class public final Lorg/mistergroup/shouldianswer/ui/c$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/c;->a(ZLandroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/c$b;->a:Landroid/view/View;

    iput p2, p0, Lorg/mistergroup/shouldianswer/ui/c$b;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 57
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/c$b;->a:Landroid/view/View;

    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/c$b;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
