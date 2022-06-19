.class public Lcom/google/android/material/datepicker/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/datepicker/c0;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/c0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/datepicker/b0;->b:Lcom/google/android/material/datepicker/c0;

    iput p2, p0, Lcom/google/android/material/datepicker/b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/b0;->a:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/b0;->b:Lcom/google/android/material/datepicker/c0;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/datepicker/c0;->c:Lcom/google/android/material/datepicker/g;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/g;->e:Lcom/google/android/material/datepicker/s;

    .line 4
    iget v0, v0, Lcom/google/android/material/datepicker/s;->b:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/s;->b(II)Lcom/google/android/material/datepicker/s;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/datepicker/b0;->b:Lcom/google/android/material/datepicker/c0;

    .line 6
    iget-object v0, v0, Lcom/google/android/material/datepicker/c0;->c:Lcom/google/android/material/datepicker/g;

    .line 7
    iget-object v0, v0, Lcom/google/android/material/datepicker/g;->d:Lcom/google/android/material/datepicker/a;

    .line 8
    iget-object v1, v0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/s;

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/s;->a(Lcom/google/android/material/datepicker/s;)I

    move-result v1

    if-gez v1, :cond_0

    .line 9
    iget-object p1, v0, Lcom/google/android/material/datepicker/a;->a:Lcom/google/android/material/datepicker/s;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/s;

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/s;->a(Lcom/google/android/material/datepicker/s;)I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    iget-object p1, v0, Lcom/google/android/material/datepicker/a;->b:Lcom/google/android/material/datepicker/s;

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/b0;->b:Lcom/google/android/material/datepicker/c0;

    .line 13
    iget-object v0, v0, Lcom/google/android/material/datepicker/c0;->c:Lcom/google/android/material/datepicker/g;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/g;->e(Lcom/google/android/material/datepicker/s;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/material/datepicker/b0;->b:Lcom/google/android/material/datepicker/c0;

    .line 16
    iget-object p1, p1, Lcom/google/android/material/datepicker/c0;->c:Lcom/google/android/material/datepicker/g;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/g;->f(I)V

    return-void
.end method
