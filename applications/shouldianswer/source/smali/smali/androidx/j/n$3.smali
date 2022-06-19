.class Landroidx/j/n$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/n;->animate(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/n;


# direct methods
.method constructor <init>(Landroidx/j/n;)V
    .locals 0

    .line 1907
    iput-object p1, p0, Landroidx/j/n$3;->a:Landroidx/j/n;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1910
    iget-object v0, p0, Landroidx/j/n$3;->a:Landroidx/j/n;

    invoke-virtual {v0}, Landroidx/j/n;->end()V

    .line 1911
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
