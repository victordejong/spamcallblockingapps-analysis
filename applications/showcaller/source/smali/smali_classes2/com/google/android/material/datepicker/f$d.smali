.class Lcom/google/android/material/datepicker/f$d;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/f;->D2(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/material/datepicker/f;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/f$d;->d:Lcom/google/android/material/datepicker/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$d;->d:Lcom/google/android/material/datepicker/f;

    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->t2(Lcom/google/android/material/datepicker/f;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/f$d;->d:Lcom/google/android/material/datepicker/f;

    invoke-static {v0}, Lcom/google/android/material/datepicker/f;->s2(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->U()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$d;->d:Lcom/google/android/material/datepicker/f;

    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->u2(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$d;->d:Lcom/google/android/material/datepicker/f;

    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->u2(Lcom/google/android/material/datepicker/f;)Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/f;->v2(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$d;->d:Lcom/google/android/material/datepicker/f;

    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->w2(Lcom/google/android/material/datepicker/f;)V

    return-void
.end method
