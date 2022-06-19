.class public final Lcom/google/android/material/internal/e$g;
.super Landroidx/recyclerview/widget/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/material/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/e;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/google/android/material/internal/e$g;->d:Lcom/google/android/material/internal/e;

    .line 777
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/a/c;)V
    .locals 4

    .line 783
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/l;->a(Landroid/view/View;Landroidx/core/view/a/c;)V

    .line 784
    iget-object p1, p0, Lcom/google/android/material/internal/e$g;->d:Lcom/google/android/material/internal/e;

    iget-object p1, p1, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    .line 1718
    iget-object v0, p1, Lcom/google/android/material/internal/e$b;->c:Lcom/google/android/material/internal/e;

    iget-object v0, v0, Lcom/google/android/material/internal/e;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    .line 1719
    :goto_1
    iget-object v3, p1, Lcom/google/android/material/internal/e$b;->c:Lcom/google/android/material/internal/e;

    iget-object v3, v3, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    invoke-virtual {v3}, Lcom/google/android/material/internal/e$b;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1720
    iget-object v3, p1, Lcom/google/android/material/internal/e$b;->c:Lcom/google/android/material/internal/e;

    iget-object v3, v3, Lcom/google/android/material/internal/e;->e:Lcom/google/android/material/internal/e$b;

    invoke-virtual {v3, v2}, Lcom/google/android/material/internal/e$b;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1756
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_3

    .line 1757
    new-instance p1, Landroidx/core/view/a/c$b;

    invoke-static {v0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/core/view/a/c$b;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 1760
    :cond_3
    new-instance p1, Landroidx/core/view/a/c$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/core/view/a/c$b;-><init>(Ljava/lang/Object;)V

    .line 784
    :goto_2
    invoke-virtual {p2, p1}, Landroidx/core/view/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method
