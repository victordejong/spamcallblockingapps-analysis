.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 806
    packed-switch p1, :pswitch_data_0

    .line 819
    :goto_0
    return-void

    .line 810
    :pswitch_0
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->c(Lcom/google/android/material/snackbar/b$a;)V

    goto :goto_0

    .line 814
    :pswitch_1
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->d(Lcom/google/android/material/snackbar/b$a;)V

    goto :goto_0

    .line 806
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 800
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(I)V

    .line 802
    return-void
.end method
