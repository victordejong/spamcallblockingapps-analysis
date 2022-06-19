.class final Lcom/google/android/material/datepicker/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/datepicker/p;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/p;I)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/android/material/datepicker/p$1;->b:Lcom/google/android/material/datepicker/p;

    iput p2, p0, Lcom/google/android/material/datepicker/p$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget p1, p0, Lcom/google/android/material/datepicker/p$1;->a:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/p$1;->b:Lcom/google/android/material/datepicker/p;

    .line 1031
    iget-object v0, v0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 1284
    iget-object v0, v0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/Month;

    .line 87
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->month:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/Month;->create(II)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/google/android/material/datepicker/p$1;->b:Lcom/google/android/material/datepicker/p;

    .line 2031
    iget-object v0, v0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 2290
    iget-object v0, v0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 89
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints;->clamp(Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/google/android/material/datepicker/p$1;->b:Lcom/google/android/material/datepicker/p;

    .line 3031
    iget-object v0, v0, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 90
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/f;->a(Lcom/google/android/material/datepicker/Month;)V

    .line 91
    iget-object p1, p0, Lcom/google/android/material/datepicker/p$1;->b:Lcom/google/android/material/datepicker/p;

    .line 4031
    iget-object p1, p1, Lcom/google/android/material/datepicker/p;->a:Lcom/google/android/material/datepicker/f;

    .line 91
    sget v0, Lcom/google/android/material/datepicker/f$a;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/f;->a(I)V

    return-void
.end method
