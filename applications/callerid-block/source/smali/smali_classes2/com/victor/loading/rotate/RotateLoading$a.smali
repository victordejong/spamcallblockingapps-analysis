.class Lcom/victor/loading/rotate/RotateLoading$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/victor/loading/rotate/RotateLoading;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/victor/loading/rotate/RotateLoading;


# direct methods
.method constructor <init>(Lcom/victor/loading/rotate/RotateLoading;)V
    .locals 0

    iput-object p1, p0, Lcom/victor/loading/rotate/RotateLoading$a;->a:Lcom/victor/loading/rotate/RotateLoading;

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

    iget-object p1, p0, Lcom/victor/loading/rotate/RotateLoading$a;->a:Lcom/victor/loading/rotate/RotateLoading;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/victor/loading/rotate/RotateLoading;->a(Lcom/victor/loading/rotate/RotateLoading;Z)Z

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
