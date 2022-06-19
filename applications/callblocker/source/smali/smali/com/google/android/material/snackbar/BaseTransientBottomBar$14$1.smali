.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$14$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14$1;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14$1;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d(I)V

    .line 722
    return-void
.end method
