.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

.field private b:I


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 1

    .prologue
    .line 995
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;->b:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 1000
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1001
    invoke-static {}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;->b:I

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Landroidx/core/h/u;->e(Landroid/view/View;I)V

    .line 1009
    :goto_0
    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;->b:I

    .line 1010
    return-void

    .line 1007
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->setTranslationY(F)V

    goto :goto_0
.end method
