.class final Lcom/google/android/material/appbar/AppBarLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$1;->a:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;
    .locals 2

    .line 274
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$1;->a:Lcom/google/android/material/appbar/AppBarLayout;

    .line 2005
    invoke-static {p1}, Landroidx/core/view/v;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2011
    :goto_0
    iget-object v1, p1, Lcom/google/android/material/appbar/AppBarLayout;->c:Landroidx/core/view/ac;

    invoke-static {v1, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2012
    iput-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->c:Landroidx/core/view/ac;

    .line 2013
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->b()V

    .line 2014
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->requestLayout()V

    :cond_1
    return-object p2
.end method
