.class Lcom/google/android/material/datepicker/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/m;->y(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/datepicker/m;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/m;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/m$a;->c:Lcom/google/android/material/datepicker/m;

    iput p2, p0, Lcom/google/android/material/datepicker/m$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/google/android/material/datepicker/m$a;->b:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/m$a;->c:Lcom/google/android/material/datepicker/m;

    invoke-static {v0}, Lcom/google/android/material/datepicker/m;->x(Lcom/google/android/material/datepicker/m;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->P1()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->c:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/Month;->e(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/m$a;->c:Lcom/google/android/material/datepicker/m;

    invoke-static {v0}, Lcom/google/android/material/datepicker/m;->x(Lcom/google/android/material/datepicker/m;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->N1()Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->a(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/m$a;->c:Lcom/google/android/material/datepicker/m;

    invoke-static {v0}, Lcom/google/android/material/datepicker/m;->x(Lcom/google/android/material/datepicker/m;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->U1(Lcom/google/android/material/datepicker/Month;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/m$a;->c:Lcom/google/android/material/datepicker/m;

    invoke-static {p1}, Lcom/google/android/material/datepicker/m;->x(Lcom/google/android/material/datepicker/m;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->b:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->V1(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    return-void
.end method
