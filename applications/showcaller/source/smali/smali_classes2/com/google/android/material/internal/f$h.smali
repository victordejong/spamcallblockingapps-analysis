.class Lcom/google/android/material/internal/f$h;
.super Landroidx/recyclerview/widget/k;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic f:Lcom/google/android/material/internal/f;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/f;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/f$h;->f:Lcom/google/android/material/internal/f;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;Lb/h/l/f0/c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/k;->g(Landroid/view/View;Lb/h/l/f0/c;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/internal/f$h;->f:Lcom/google/android/material/internal/f;

    iget-object p1, p1, Lcom/google/android/material/internal/f;->i:Lcom/google/android/material/internal/f$c;

    invoke-virtual {p1}, Lcom/google/android/material/internal/f$c;->D()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lb/h/l/f0/c$b;->a(IIZ)Lb/h/l/f0/c$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/h/l/f0/c;->e0(Ljava/lang/Object;)V

    return-void
.end method
