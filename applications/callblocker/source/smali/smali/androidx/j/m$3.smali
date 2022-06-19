.class Landroidx/j/m$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/m;->a(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/m;


# direct methods
.method constructor <init>(Landroidx/j/m;)V
    .locals 0

    .prologue
    .line 1911
    iput-object p1, p0, Landroidx/j/m$3;->a:Landroidx/j/m;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Landroidx/j/m$3;->a:Landroidx/j/m;

    invoke-virtual {v0}, Landroidx/j/m;->k()V

    .line 1915
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1916
    return-void
.end method
