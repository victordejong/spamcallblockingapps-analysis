.class public Lcom/google/android/material/b/b;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/material/b/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/material/internal/e;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/internal/e;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/material/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v2, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/google/android/material/internal/e;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/internal/e;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 158
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/e;->keyAt(I)I

    move-result v3

    .line 159
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/e;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/b/a$a;

    .line 160
    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "BadgeDrawable\'s savedState cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Lcom/google/android/material/b/a$a;)Lcom/google/android/material/b/a;

    move-result-object v0

    .line 164
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_1
    return-object v2
.end method

.method public static a(Landroid/util/SparseArray;)Lcom/google/android/material/internal/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/material/b/a;",
            ">;)",
            "Lcom/google/android/material/internal/e;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Lcom/google/android/material/internal/e;

    invoke-direct {v2}, Lcom/google/android/material/internal/e;-><init>()V

    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 134
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/b/a;

    .line 135
    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "badgeDrawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/b/a;->a()Lcom/google/android/material/b/a$a;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/material/internal/e;->put(ILjava/lang/Object;)V

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_1
    return-object v2
.end method

.method public static a(Landroid/graphics/Rect;FFFF)V
    .locals 4

    .prologue
    .line 58
    sub-float v0, p1, p3

    float-to-int v0, v0

    sub-float v1, p2, p4

    float-to-int v1, v1

    add-float v2, p1, p3

    float-to-int v2, v2

    add-float v3, p2, p4

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    return-void
.end method

.method public static a(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p0, p1, p2}, Lcom/google/android/material/b/b;->c(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 77
    sget-boolean v0, Lcom/google/android/material/b/b;->a:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static b(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-boolean v0, Lcom/google/android/material/b/b;->a:Z

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static c(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    .prologue
    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 113
    sget-boolean v0, Lcom/google/android/material/b/b;->a:Z

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 114
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/google/android/material/b/a;->setBounds(Landroid/graphics/Rect;)V

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/b/a;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 117
    return-void

    :cond_0
    move-object v0, p1

    .line 113
    goto :goto_0
.end method
