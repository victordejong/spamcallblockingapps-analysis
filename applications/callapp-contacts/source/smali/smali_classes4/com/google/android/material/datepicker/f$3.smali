.class final Lcom/google/android/material/datepicker/f$3;
.super Lcom/google/android/material/datepicker/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/datepicker/f;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/f;Landroid/content/Context;IZI)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/google/android/material/datepicker/f$3;->b:Lcom/google/android/material/datepicker/f;

    iput p5, p0, Lcom/google/android/material/datepicker/f$3;->a:I

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/material/datepicker/m;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$s;[I)V
    .locals 2

    .line 172
    iget p1, p0, Lcom/google/android/material/datepicker/f$3;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$3;->b:Lcom/google/android/material/datepicker/f;

    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->a(Lcom/google/android/material/datepicker/f;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    aput p1, p2, v1

    .line 174
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$3;->b:Lcom/google/android/material/datepicker/f;

    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->a(Lcom/google/android/material/datepicker/f;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    aput p1, p2, v0

    return-void

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$3;->b:Lcom/google/android/material/datepicker/f;

    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->a(Lcom/google/android/material/datepicker/f;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    aput p1, p2, v1

    .line 177
    iget-object p1, p0, Lcom/google/android/material/datepicker/f$3;->b:Lcom/google/android/material/datepicker/f;

    invoke-static {p1}, Lcom/google/android/material/datepicker/f;->a(Lcom/google/android/material/datepicker/f;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    aput p1, p2, v0

    return-void
.end method
