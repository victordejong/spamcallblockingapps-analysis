.class abstract Landroidx/l/a/a/i$e;
.super Landroidx/l/a/a/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/l/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "e"
.end annotation


# instance fields
.field protected l:[Landroidx/core/graphics/c$b;

.field m:Ljava/lang/String;

.field n:I

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1693
    invoke-direct {p0, v0}, Landroidx/l/a/a/i$d;-><init>(Landroidx/l/a/a/i$1;)V

    .line 1687
    iput-object v0, p0, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Landroidx/l/a/a/i$e;->n:I

    return-void
.end method

.method public constructor <init>(Landroidx/l/a/a/i$e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1719
    invoke-direct {p0, v0}, Landroidx/l/a/a/i$d;-><init>(Landroidx/l/a/a/i$1;)V

    .line 1687
    iput-object v0, p0, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Landroidx/l/a/a/i$e;->n:I

    .line 1720
    iget-object v0, p1, Landroidx/l/a/a/i$e;->m:Ljava/lang/String;

    iput-object v0, p0, Landroidx/l/a/a/i$e;->m:Ljava/lang/String;

    .line 1721
    iget v0, p1, Landroidx/l/a/a/i$e;->o:I

    iput v0, p0, Landroidx/l/a/a/i$e;->o:I

    .line 1722
    iget-object p1, p1, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    invoke-static {p1}, Landroidx/core/graphics/c;->a([Landroidx/core/graphics/c$b;)[Landroidx/core/graphics/c$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;)V
    .locals 1

    .line 1726
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1727
    iget-object v0, p0, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    if-eqz v0, :cond_0

    .line 1728
    invoke-static {v0, p1}, Landroidx/core/graphics/c$b;->a([Landroidx/core/graphics/c$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroidx/core/graphics/c$b;
    .locals 1

    .line 1750
    iget-object v0, p0, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1733
    iget-object v0, p0, Landroidx/l/a/a/i$e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroidx/core/graphics/c$b;)V
    .locals 6

    .line 1755
    iget-object v0, p0, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/c;->a([Landroidx/core/graphics/c$b;[Landroidx/core/graphics/c$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    invoke-static {p1}, Landroidx/core/graphics/c;->a([Landroidx/core/graphics/c$b;)[Landroidx/core/graphics/c$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Landroidx/l/a/a/i$e;->l:[Landroidx/core/graphics/c$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2163
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2164
    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Landroidx/core/graphics/c$b;->a:C

    iput-char v4, v3, Landroidx/core/graphics/c$b;->a:C

    const/4 v3, 0x0

    .line 2165
    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Landroidx/core/graphics/c$b;->b:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 2166
    aget-object v4, v0, v2

    iget-object v4, v4, Landroidx/core/graphics/c$b;->b:[F

    aget-object v5, p1, v2

    iget-object v5, v5, Landroidx/core/graphics/c$b;->b:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
