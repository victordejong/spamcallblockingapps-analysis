.class final Lcom/google/android/material/datepicker/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final synthetic b:Lcom/google/android/material/datepicker/j;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/j;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/material/datepicker/j$1;->b:Lcom/google/android/material/datepicker/j;

    iput-object p2, p0, Lcom/google/android/material/datepicker/j$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/google/android/material/datepicker/j$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/i;

    move-result-object p1

    .line 2212
    iget-object p2, p1, Lcom/google/android/material/datepicker/i;->b:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result p2

    if-lt p3, p2, :cond_0

    .line 1245
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/i;->a()I

    move-result p1

    if-gt p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/google/android/material/datepicker/j$1;->b:Lcom/google/android/material/datepicker/j;

    .line 3038
    iget-object p1, p1, Lcom/google/android/material/datepicker/j;->b:Lcom/google/android/material/datepicker/f$b;

    .line 126
    iget-object p2, p0, Lcom/google/android/material/datepicker/j$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/i;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/material/datepicker/i;->a(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/material/datepicker/f$b;->a(J)V

    :cond_1
    return-void
.end method
