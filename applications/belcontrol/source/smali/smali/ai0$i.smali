.class public Lai0$i;
.super Lai0$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:Landroid/graphics/RectF;

.field public final synthetic d:Lai0;


# direct methods
.method public constructor <init>(Lai0;FF)V
    .locals 1

    iput-object p1, p0, Lai0$i;->d:Lai0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai0$j;-><init>(Lai0;Lai0$a;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lai0$i;->c:Landroid/graphics/RectF;

    iput p2, p0, Lai0$i;->a:F

    iput p3, p0, Lai0$i;->b:F

    return-void
.end method


# virtual methods
.method public a(Lzh0$y0;)Z
    .locals 5

    instance-of v0, p1, Lzh0$z0;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lzh0$z0;

    iget-object p1, p1, Lzh0$n0;->a:Lzh0;

    iget-object v2, v0, Lzh0$z0;->n:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lzh0;->m(Ljava/lang/String;)Lzh0$n0;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lzh0$z0;->n:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "TextPath path reference \'%s\' not found"

    invoke-static {v0, p1}, Lai0;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    check-cast p1, Lzh0$v;

    new-instance v0, Lai0$d;

    iget-object v3, p0, Lai0$i;->d:Lai0;

    iget-object v4, p1, Lzh0$v;->o:Lzh0$w;

    invoke-direct {v0, v3, v4}, Lai0$d;-><init>(Lai0;Lzh0$w;)V

    invoke-virtual {v0}, Lai0$d;->f()Landroid/graphics/Path;

    move-result-object v0

    iget-object p1, p1, Lzh0$l;->n:Landroid/graphics/Matrix;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lai0$i;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return v2

    :cond_2
    return v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lai0$i;->d:Lai0;

    invoke-static {v0}, Lai0;->b(Lai0;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lai0$i;->d:Lai0;

    invoke-static {v1}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v1

    iget-object v1, v1, Lai0$h;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v0, p0, Lai0$i;->a:F

    iget v2, p0, Lai0$i;->b:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lai0$i;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_0
    iget v0, p0, Lai0$i;->a:F

    iget-object v1, p0, Lai0$i;->d:Lai0;

    invoke-static {v1}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v1

    iget-object v1, v1, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lai0$i;->a:F

    return-void
.end method
