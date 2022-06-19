.class Lcom/google/android/material/bottomsheet/a$4;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/a;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/a$4;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/a$4;->a:Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->cancel()V

    .line 299
    :cond_0
    return-void
.end method
