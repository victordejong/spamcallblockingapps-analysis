.class Lcom/google/android/material/datepicker/n$1;
.super Ljava/lang/Object;
.source "MonthsPagerAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/n;->a(Lcom/google/android/material/datepicker/n$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final synthetic b:Lcom/google/android/material/datepicker/n;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/n;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/material/datepicker/n$1;->b:Lcom/google/android/material/datepicker/n;

    iput-object p2, p0, Lcom/google/android/material/datepicker/n$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/material/datepicker/n$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/material/datepicker/m;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/material/datepicker/n$1;->b:Lcom/google/android/material/datepicker/n;

    invoke-static {v0}, Lcom/google/android/material/datepicker/n;->a(Lcom/google/android/material/datepicker/n;)Lcom/google/android/material/datepicker/h$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/n$1;->a:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/m;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/material/datepicker/m;->a(I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/material/datepicker/h$b;->a(J)V

    .line 125
    :cond_0
    return-void
.end method
