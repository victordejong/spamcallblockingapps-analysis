.class Lcom/google/android/material/datepicker/h$6;
.super Landroidx/core/h/a;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/h;->a(Landroid/view/View;Lcom/google/android/material/datepicker/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/h;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$6;->a:Lcom/google/android/material/datepicker/h;

    invoke-direct {p0}, Landroidx/core/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 2

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Landroidx/core/h/a;->a(Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$6;->a:Lcom/google/android/material/datepicker/h;

    .line 376
    invoke-static {v0}, Lcom/google/android/material/datepicker/h;->f(Lcom/google/android/material/datepicker/h;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/h$6;->a:Lcom/google/android/material/datepicker/h;

    sget v1, Lcom/google/android/material/a$j;->mtrl_picker_toggle_to_year_selection:I

    .line 377
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/h;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/h/a/c;->f(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$6;->a:Lcom/google/android/material/datepicker/h;

    sget v1, Lcom/google/android/material/a$j;->mtrl_picker_toggle_to_day_selection:I

    .line 378
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/h;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
