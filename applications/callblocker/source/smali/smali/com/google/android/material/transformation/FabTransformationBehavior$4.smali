.class Lcom/google/android/material/transformation/FabTransformationBehavior$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;FFLjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/f/d;

.field final synthetic b:Lcom/google/android/material/transformation/FabTransformationBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/f/d;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$4;->b:Lcom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$4;->a:Lcom/google/android/material/f/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$4;->a:Lcom/google/android/material/f/d;

    invoke-interface {v0}, Lcom/google/android/material/f/d;->getRevealInfo()Lcom/google/android/material/f/d$d;

    move-result-object v0

    .line 407
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Lcom/google/android/material/f/d$d;->c:F

    .line 408
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$4;->a:Lcom/google/android/material/f/d;

    invoke-interface {v1, v0}, Lcom/google/android/material/f/d;->setRevealInfo(Lcom/google/android/material/f/d$d;)V

    .line 409
    return-void
.end method
