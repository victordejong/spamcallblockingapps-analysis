.class Lcom/google/android/material/transformation/FabTransformationBehavior$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$a;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/f/d;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/google/android/material/transformation/FabTransformationBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/f/d;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->c:Lcom/google/android/material/transformation/FabTransformationBehavior;

    iput-object p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->a:Lcom/google/android/material/f/d;

    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->a:Lcom/google/android/material/f/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/material/f/d;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->a:Lcom/google/android/material/f/d;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$3;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/google/android/material/f/d;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method
