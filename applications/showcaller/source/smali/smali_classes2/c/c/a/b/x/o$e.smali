.class public Lc/c/a/b/x/o$e;
.super Lc/c/a/b/x/o$f;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/x/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private b:F

.field private c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/b/x/o$f;-><init>()V

    return-void
.end method

.method static synthetic b(Lc/c/a/b/x/o$e;)F
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/b/x/o$e;->b:F

    return p0
.end method

.method static synthetic c(Lc/c/a/b/x/o$e;F)F
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/b/x/o$e;->b:F

    return p1
.end method

.method static synthetic d(Lc/c/a/b/x/o$e;)F
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/b/x/o$e;->c:F

    return p0
.end method

.method static synthetic e(Lc/c/a/b/x/o$e;F)F
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/b/x/o$e;->c:F

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/o$f;->a:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 4
    iget v0, p0, Lc/c/a/b/x/o$e;->b:F

    iget v1, p0, Lc/c/a/b/x/o$e;->c:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
