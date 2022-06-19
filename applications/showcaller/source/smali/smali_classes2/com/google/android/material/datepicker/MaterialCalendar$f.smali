.class Lcom/google/android/material/datepicker/MaterialCalendar$f;
.super Lb/h/l/a;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->j2(Landroid/view/View;Lcom/google/android/material/datepicker/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$f;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Lb/h/l/a;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;Lb/h/l/f0/c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lb/h/l/a;->g(Landroid/view/View;Lb/h/l/f0/c;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$f;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->h2(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$f;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget v0, Lc/c/a/b/j;->mtrl_picker_toggle_to_year_selection:I

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->d0(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$f;->d:Lcom/google/android/material/datepicker/MaterialCalendar;

    sget v0, Lc/c/a/b/j;->mtrl_picker_toggle_to_day_selection:I

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->d0(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p2, p1}, Lb/h/l/f0/c;->m0(Ljava/lang/CharSequence;)V

    return-void
.end method
