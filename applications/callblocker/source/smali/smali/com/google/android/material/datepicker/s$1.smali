.class Lcom/google/android/material/datepicker/s$1;
.super Ljava/lang/Object;
.source "YearGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/s;->g(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/datepicker/s;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/s;I)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/material/datepicker/s$1;->b:Lcom/google/android/material/datepicker/s;

    iput p2, p0, Lcom/google/android/material/datepicker/s$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/material/datepicker/s$1;->a:I

    iget-object v1, p0, Lcom/google/android/material/datepicker/s$1;->b:Lcom/google/android/material/datepicker/s;

    invoke-static {v1}, Lcom/google/android/material/datepicker/s;->a(Lcom/google/android/material/datepicker/s;)Lcom/google/android/material/datepicker/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/h;->a()Lcom/google/android/material/datepicker/l;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/datepicker/l;->a:I

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/l;->a(II)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/android/material/datepicker/s$1;->b:Lcom/google/android/material/datepicker/s;

    invoke-static {v1}, Lcom/google/android/material/datepicker/s;->a(Lcom/google/android/material/datepicker/s;)Lcom/google/android/material/datepicker/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/l;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/material/datepicker/s$1;->b:Lcom/google/android/material/datepicker/s;

    invoke-static {v0}, Lcom/google/android/material/datepicker/s;->a(Lcom/google/android/material/datepicker/s;)Lcom/google/android/material/datepicker/h;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/datepicker/h$a;->a:Lcom/google/android/material/datepicker/h$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h$a;)V

    .line 90
    return-void
.end method
