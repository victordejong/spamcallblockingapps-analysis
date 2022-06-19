.class Lcom/google/android/material/transformation/FabTransformationBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/google/android/material/transformation/FabTransformationBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->d:Lcom/google/android/material/transformation/FabTransformationBehavior;

    iput-boolean p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->a:Z

    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->a:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->a:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 172
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$1;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method
