.class abstract Landroidx/k/a/a/i$e;
.super Landroidx/k/a/a/i$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field protected l:[Landroidx/core/graphics/b$b;

.field m:Ljava/lang/String;

.field n:I

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1693
    invoke-direct {p0, v0}, Landroidx/k/a/a/i$d;-><init>(Landroidx/k/a/a/i$1;)V

    .line 1687
    iput-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    .line 1690
    const/4 v0, 0x0

    iput v0, p0, Landroidx/k/a/a/i$e;->n:I

    .line 1695
    return-void
.end method

.method public constructor <init>(Landroidx/k/a/a/i$e;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1719
    invoke-direct {p0, v0}, Landroidx/k/a/a/i$d;-><init>(Landroidx/k/a/a/i$1;)V

    .line 1687
    iput-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    .line 1690
    const/4 v0, 0x0

    iput v0, p0, Landroidx/k/a/a/i$e;->n:I

    .line 1720
    iget-object v0, p1, Landroidx/k/a/a/i$e;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/k/a/a/i$e;->m:Ljava/lang/String;

    .line 1721
    iget v0, p1, Landroidx/k/a/a/i$e;->o:I

    iput v0, p0, Landroidx/k/a/a/i$e;->o:I

    .line 1722
    iget-object v0, p1, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {v0}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    .line 1723
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    .prologue
    .line 1726
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1727
    iget-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/b$b;->a([Landroidx/core/graphics/b$b;Landroid/graphics/Path;)V

    .line 1730
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1744
    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroidx/core/graphics/b$b;
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Landroidx/k/a/a/i$e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroidx/core/graphics/b$b;)V
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    invoke-static {p1}, Landroidx/core/graphics/b;->a([Landroidx/core/graphics/b$b;)[Landroidx/core/graphics/b$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    .line 1761
    :goto_0
    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Landroidx/k/a/a/i$e;->l:[Landroidx/core/graphics/b$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/b;->b([Landroidx/core/graphics/b$b;[Landroidx/core/graphics/b$b;)V

    goto :goto_0
.end method
