.class public Lcom/google/android/material/datepicker/n$a;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "MonthsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final q:Landroid/widget/TextView;

.field final r:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    .line 79
    sget v0, Lcom/google/android/material/a$f;->month_title:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/n$a;->q:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/google/android/material/datepicker/n$a;->q:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/h/u;->c(Landroid/view/View;Z)V

    .line 81
    sget v0, Lcom/google/android/material/a$f;->month_grid:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/n$a;->r:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 82
    if-nez p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/material/datepicker/n$a;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method
