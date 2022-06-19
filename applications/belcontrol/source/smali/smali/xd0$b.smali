.class public Lxd0$b;
.super Lxd0$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lxd0$d;


# direct methods
.method public constructor <init>(Lxd0$d;)V
    .locals 0

    invoke-direct {p0}, Lxd0$g;-><init>()V

    iput-object p1, p0, Lxd0$b;->b:Lxd0$d;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Ltd0;ILandroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lxd0$b;->b:Lxd0$d;

    iget v6, v0, Lxd0$d;->f:F

    iget v7, v0, Lxd0$d;->g:F

    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lxd0$b;->b:Lxd0$d;

    iget v1, v0, Lxd0$d;->b:F

    iget v2, v0, Lxd0$d;->c:F

    iget v3, v0, Lxd0$d;->d:F

    iget v0, v0, Lxd0$d;->e:F

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Ltd0;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
