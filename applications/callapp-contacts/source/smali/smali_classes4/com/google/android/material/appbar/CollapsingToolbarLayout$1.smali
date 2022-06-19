.class final Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;
    .locals 2

    .line 252
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$1;->a:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 1291
    invoke-static {p1}, Landroidx/core/view/v;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1297
    :goto_0
    iget-object v1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/core/view/ac;

    invoke-static {v1, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1298
    iput-object v0, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroidx/core/view/ac;

    .line 1299
    invoke-virtual {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->requestLayout()V

    .line 2244
    :cond_1
    iget-object p1, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {p1}, Landroidx/core/view/ac$e;->c()Landroidx/core/view/ac;

    move-result-object p1

    return-object p1
.end method
