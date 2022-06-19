.class public Lcom/google/android/material/datepicker/s$a;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "YearGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final q:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    .line 41
    iput-object p1, p0, Lcom/google/android/material/datepicker/s$a;->q:Landroid/widget/TextView;

    .line 42
    return-void
.end method
