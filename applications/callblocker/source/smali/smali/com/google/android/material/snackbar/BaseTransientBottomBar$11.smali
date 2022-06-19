.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroidx/core/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
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
    .line 381
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/h/ac;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 388
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/h/ac;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 389
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/h/ac;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 390
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 391
    return-object p2
.end method
