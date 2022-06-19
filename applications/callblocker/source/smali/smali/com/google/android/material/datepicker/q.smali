.class Lcom/google/android/material/datepicker/q;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SmoothCalendarLayoutManager.java"


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/material/datepicker/q$1;

    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/q$1;-><init>(Lcom/google/android/material/datepicker/q;Landroid/content/Context;)V

    .line 48
    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/h;->c(I)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/q;->a(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 50
    return-void
.end method
