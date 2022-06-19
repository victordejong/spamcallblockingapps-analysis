.class final Lcom/google/android/material/f/a$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/f/a;->a(Lcom/google/android/material/f/d;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/f/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/f/d;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/material/f/a$1;->a:Lcom/google/android/material/f/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/material/f/a$1;->a:Lcom/google/android/material/f/d;

    invoke-interface {v0}, Lcom/google/android/material/f/d;->b()V

    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/material/f/a$1;->a:Lcom/google/android/material/f/d;

    invoke-interface {v0}, Lcom/google/android/material/f/d;->a()V

    .line 127
    return-void
.end method
