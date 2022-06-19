.class final Landroidx/e/a/b$8;
.super Landroidx/e/a/b$d;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Landroidx/e/a/b$d;-><init>(Ljava/lang/String;Landroidx/e/a/b$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 0

    .line 95
    invoke-static {p1}, Landroidx/core/g/u;->p(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)F
    .locals 0

    .line 87
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/e/a/b$8;->a(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .line 90
    invoke-static {p1, p2}, Landroidx/core/g/u;->b(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;F)V
    .locals 0

    .line 87
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/e/a/b$8;->a(Landroid/view/View;F)V

    return-void
.end method
