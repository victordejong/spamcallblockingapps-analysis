.class public Landroidx/gridlayout/widget/GridLayout$g$a;
.super Landroidx/gridlayout/widget/GridLayout$m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/gridlayout/widget/GridLayout$g;->b()Landroidx/gridlayout/widget/GridLayout$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout$g;)V
    .locals 0

    invoke-direct {p0}, Landroidx/gridlayout/widget/GridLayout$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$i;IZ)I
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/gridlayout/widget/GridLayout$m;->a(Landroidx/gridlayout/widget/GridLayout;Landroid/view/View;Landroidx/gridlayout/widget/GridLayout$i;IZ)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public b(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$m;->b(II)V

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$g$a;->d:I

    add-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/gridlayout/widget/GridLayout$g$a;->d:I

    return-void
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Landroidx/gridlayout/widget/GridLayout$m;->d()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/gridlayout/widget/GridLayout$g$a;->d:I

    return-void
.end method

.method public e(Z)I
    .locals 1

    invoke-super {p0, p1}, Landroidx/gridlayout/widget/GridLayout$m;->e(Z)I

    move-result p1

    iget v0, p0, Landroidx/gridlayout/widget/GridLayout$g$a;->d:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
