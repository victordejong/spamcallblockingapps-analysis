.class Lcom/google/android/material/datepicker/i$4;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/i;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/i;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/i;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/material/datepicker/i$4;->a:Lcom/google/android/material/datepicker/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/material/datepicker/i$4;->a:Lcom/google/android/material/datepicker/i;

    invoke-static {v0}, Lcom/google/android/material/datepicker/i;->f(Lcom/google/android/material/datepicker/i;)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 351
    iget-object v0, p0, Lcom/google/android/material/datepicker/i$4;->a:Lcom/google/android/material/datepicker/i;

    iget-object v1, p0, Lcom/google/android/material/datepicker/i$4;->a:Lcom/google/android/material/datepicker/i;

    invoke-static {v1}, Lcom/google/android/material/datepicker/i;->f(Lcom/google/android/material/datepicker/i;)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/i;->a(Lcom/google/android/material/datepicker/i;Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 352
    iget-object v0, p0, Lcom/google/android/material/datepicker/i$4;->a:Lcom/google/android/material/datepicker/i;

    invoke-static {v0}, Lcom/google/android/material/datepicker/i;->g(Lcom/google/android/material/datepicker/i;)V

    .line 353
    return-void
.end method
