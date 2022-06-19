.class final Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
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

    .line 406
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;
    .locals 1

    .line 412
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/view/ac;->d()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 413
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/view/ac;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 414
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Landroidx/core/view/ac;->c()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I

    .line 415
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    return-object p2
.end method
