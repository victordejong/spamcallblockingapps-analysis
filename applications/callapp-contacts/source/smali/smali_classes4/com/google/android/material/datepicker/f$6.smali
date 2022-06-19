.class final Lcom/google/android/material/datepicker/f$6;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/datepicker/f;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/f;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/google/android/material/datepicker/f$6;->b:Lcom/google/android/material/datepicker/f;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 1

    .line 375
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 376
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$6;->b:Lcom/google/android/material/datepicker/f;

    .line 377
    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->f(Lcom/google/android/material/datepicker/f;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/f$6;->b:Lcom/google/android/material/datepicker/f;

    sget v0, Lcom/google/android/material/a$j;->mtrl_picker_toggle_to_year_selection:I

    .line 378
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/f;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$6;->b:Lcom/google/android/material/datepicker/f;

    sget v0, Lcom/google/android/material/a$j;->mtrl_picker_toggle_to_day_selection:I

    .line 379
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/f;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 376
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->f(Ljava/lang/CharSequence;)V

    return-void
.end method
