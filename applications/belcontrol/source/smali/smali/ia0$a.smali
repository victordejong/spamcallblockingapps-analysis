.class public Lia0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lia0;


# direct methods
.method public constructor <init>(Lia0;)V
    .locals 0

    iput-object p1, p0, Lia0$a;->a:Lia0;

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

    iget-object v0, p0, Lia0$a;->a:Lia0;

    invoke-static {v0}, Lia0;->a(Lia0;)Landroid/animation/Animator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lia0$a;->a:Lia0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lia0;->b(Lia0;Landroid/animation/Animator;)Landroid/animation/Animator;

    :cond_0
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
