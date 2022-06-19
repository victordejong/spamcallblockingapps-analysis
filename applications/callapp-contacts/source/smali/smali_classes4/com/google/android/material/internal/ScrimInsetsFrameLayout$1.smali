.class final Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/ScrimInsetsFrameLayout;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;
    .locals 4

    .line 78
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object p1, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object p1, p1, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->b:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p2}, Landroidx/core/view/ac;->a()I

    move-result v0

    .line 83
    invoke-virtual {p2}, Landroidx/core/view/ac;->b()I

    move-result v1

    .line 84
    invoke-virtual {p2}, Landroidx/core/view/ac;->c()I

    move-result v2

    .line 85
    invoke-virtual {p2}, Landroidx/core/view/ac;->d()I

    move-result v3

    .line 81
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->a(Landroidx/core/view/ac;)V

    .line 87
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 1428
    iget-object v0, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    .line 1183
    sget-object v1, Landroidx/core/graphics/b;->a:Landroidx/core/graphics/b;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v0, v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 88
    iget-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;->a:Lcom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-static {p1}, Landroidx/core/view/v;->d(Landroid/view/View;)V

    .line 2244
    iget-object p1, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {p1}, Landroidx/core/view/ac$e;->c()Landroidx/core/view/ac;

    move-result-object p1

    return-object p1
.end method
