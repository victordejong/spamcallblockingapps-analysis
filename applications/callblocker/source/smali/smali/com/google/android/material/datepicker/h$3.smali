.class Lcom/google/android/material/datepicker/h$3;
.super Lcom/google/android/material/datepicker/q;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/datepicker/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/h;Landroid/content/Context;IZI)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/material/datepicker/h$3;->b:Lcom/google/android/material/datepicker/h;

    iput p5, p0, Lcom/google/android/material/datepicker/h$3;->a:I

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/material/datepicker/q;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method protected a(Landroidx/recyclerview/widget/RecyclerView$u;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    iget v0, p0, Lcom/google/android/material/datepicker/h$3;->a:I

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$3;->b:Lcom/google/android/material/datepicker/h;

    invoke-static {v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    aput v0, p2, v1

    .line 173
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$3;->b:Lcom/google/android/material/datepicker/h;

    invoke-static {v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    aput v0, p2, v2

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$3;->b:Lcom/google/android/material/datepicker/h;

    invoke-static {v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    aput v0, p2, v1

    .line 176
    iget-object v0, p0, Lcom/google/android/material/datepicker/h$3;->b:Lcom/google/android/material/datepicker/h;

    invoke-static {v0}, Lcom/google/android/material/datepicker/h;->a(Lcom/google/android/material/datepicker/h;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    aput v0, p2, v2

    goto :goto_0
.end method
