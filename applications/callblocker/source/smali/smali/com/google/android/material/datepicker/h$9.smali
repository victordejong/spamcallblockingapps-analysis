.class Lcom/google/android/material/datepicker/h$9;
.super Ljava/lang/Object;
.source "MaterialCalendar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/h;->a(Landroid/view/View;Lcom/google/android/material/datepicker/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/n;

.field final synthetic b:Lcom/google/android/material/datepicker/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/h;Lcom/google/android/material/datepicker/n;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$9;->b:Lcom/google/android/material/datepicker/h;

    iput-object p2, p0, Lcom/google/android/material/datepicker/h$9;->a:Lcom/google/android/material/datepicker/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$9;->b:Lcom/google/android/material/datepicker/h;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/h;->at()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->o()I

    move-result v0

    .line 431
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/google/android/material/datepicker/h$9;->b:Lcom/google/android/material/datepicker/h;

    invoke-static {v2}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 432
    iget-object v1, p0, Lcom/google/android/material/datepicker/h$9;->b:Lcom/google/android/material/datepicker/h;

    iget-object v2, p0, Lcom/google/android/material/datepicker/h$9;->a:Lcom/google/android/material/datepicker/n;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/material/datepicker/n;->f(I)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/l;)V

    .line 434
    :cond_0
    return-void
.end method
