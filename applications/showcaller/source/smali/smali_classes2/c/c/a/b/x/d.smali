.class public Lc/c/a/b/x/d;
.super Ljava/lang/Object;
.source "CornerTreatment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/b/x/o;FFF)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b(Lc/c/a/b/x/o;FFLandroid/graphics/RectF;Lc/c/a/b/x/c;)V
    .locals 0

    .line 1
    invoke-interface {p5, p4}, Lc/c/a/b/x/c;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/b/x/d;->a(Lc/c/a/b/x/o;FFF)V

    return-void
.end method
