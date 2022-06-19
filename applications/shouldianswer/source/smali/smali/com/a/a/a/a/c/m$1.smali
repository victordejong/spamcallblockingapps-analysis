.class final Lcom/a/a/a/a/c/m$1;
.super Ljava/lang/Object;
.source "SwapTargetItemOperator.java"

# interfaces
.implements Landroidx/core/g/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-static {p1}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->a(Landroidx/core/g/z;)Landroidx/core/g/y;

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method
