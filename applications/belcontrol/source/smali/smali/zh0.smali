.class public Lzh0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh0$w;,
        Lzh0$x;,
        Lzh0$c0;,
        Lzh0$s;,
        Lzh0$f1;,
        Lzh0$o;,
        Lzh0$y;,
        Lzh0$e;,
        Lzh0$q0;,
        Lzh0$m0;,
        Lzh0$d0;,
        Lzh0$j;,
        Lzh0$r;,
        Lzh0$t0;,
        Lzh0$s0;,
        Lzh0$z0;,
        Lzh0$u0;,
        Lzh0$c1;,
        Lzh0$v0;,
        Lzh0$w0;,
        Lzh0$a1;,
        Lzh0$y0;,
        Lzh0$x0;,
        Lzh0$b1;,
        Lzh0$a0;,
        Lzh0$z;,
        Lzh0$q;,
        Lzh0$i;,
        Lzh0$d;,
        Lzh0$b0;,
        Lzh0$v;,
        Lzh0$e1;,
        Lzh0$l;,
        Lzh0$h;,
        Lzh0$t;,
        Lzh0$m;,
        Lzh0$f0;,
        Lzh0$r0;,
        Lzh0$p0;,
        Lzh0$n;,
        Lzh0$h0;,
        Lzh0$j0;,
        Lzh0$i0;,
        Lzh0$g0;,
        Lzh0$k0;,
        Lzh0$l0;,
        Lzh0$n0;,
        Lzh0$c;,
        Lzh0$p;,
        Lzh0$u;,
        Lzh0$g;,
        Lzh0$f;,
        Lzh0$o0;,
        Lzh0$e0;,
        Lzh0$b;,
        Lzh0$k;,
        Lzh0$d1;
    }
.end annotation


# instance fields
.field public a:Lzh0$f0;

.field public b:Lbi0;

.field public c:F

.field public d:Luh0$h;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzh0$n0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzh0;->a:Lzh0$f0;

    const/high16 v0, 0x42c00000    # 96.0f

    iput v0, p0, Lzh0;->c:F

    new-instance v0, Luh0$h;

    invoke-direct {v0}, Luh0$h;-><init>()V

    iput-object v0, p0, Lzh0;->d:Luh0$h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzh0;->e:Ljava/util/Map;

    return-void
.end method

.method public static f(Landroid/content/Context;I)Lzh0;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lzh0;->g(Landroid/content/res/Resources;I)Lzh0;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/res/Resources;I)Lzh0;
    .locals 2

    new-instance v0, Ldi0;

    invoke-direct {v0}, Ldi0;-><init>()V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0, v1}, Ldi0;->q(Ljava/io/InputStream;)Lzh0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p0
.end method


# virtual methods
.method public a(Luh0$h;)V
    .locals 1

    iget-object v0, p0, Lzh0;->d:Luh0$h;

    invoke-virtual {v0, p1}, Luh0$h;->b(Luh0$h;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luh0$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzh0;->d:Luh0$h;

    invoke-virtual {v0}, Luh0$h;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lzh0;->a:Lzh0$f0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lzh0$r0;->o:Lzh0$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lzh0$b;->f()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SVG document is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)Lzh0$n0;
    .locals 1

    iget-object v0, p0, Lzh0;->a:Lzh0$f0;

    iget-object v0, v0, Lzh0$l0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lzh0;->a:Lzh0$f0;

    return-object p1

    :cond_0
    iget-object v0, p0, Lzh0;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzh0$n0;

    return-object p1
.end method

.method public e()Lbi0;
    .locals 1

    iget-object v0, p0, Lzh0;->b:Lbi0;

    return-object v0
.end method

.method public h()Lzh0$f0;
    .locals 1

    iget-object v0, p0, Lzh0;->a:Lzh0$f0;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lzh0;->d:Luh0$h;

    invoke-virtual {v0}, Luh0$h;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j(Lzh0$l0;)V
    .locals 4

    iget-object v0, p1, Lzh0$l0;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lzh0;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh0$n0;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate ID \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": element "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " overwrote "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidSVG"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lzh0;->l(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public l(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, p2}, Lzh0$b;->b(FFFF)Lzh0$b;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Lzh0$b;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Lzh0$b;-><init>(FFFF)V

    :goto_0
    new-instance v0, Lai0;

    iget v1, p0, Lzh0;->c:F

    invoke-direct {v0, p1, p2, v1}, Lai0;-><init>(Landroid/graphics/Canvas;Lzh0$b;F)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p2, p2, p1}, Lai0;->G0(Lzh0;Lzh0$b;Lyh0;Z)V

    return-void
.end method

.method public m(Ljava/lang/String;)Lzh0$n0;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzh0;->d(Ljava/lang/String;)Lzh0$n0;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public o(F)V
    .locals 2

    iget-object v0, p0, Lzh0;->a:Lzh0$f0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$p;

    invoke-direct {v1, p1}, Lzh0$p;-><init>(F)V

    iput-object v1, v0, Lzh0$f0;->s:Lzh0$p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(F)V
    .locals 2

    iget-object v0, p0, Lzh0;->a:Lzh0$f0;

    if-eqz v0, :cond_0

    new-instance v1, Lzh0$p;

    invoke-direct {v1, p1}, Lzh0$p;-><init>(F)V

    iput-object v1, v0, Lzh0$f0;->r:Lzh0$p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lzh0$f0;)V
    .locals 0

    iput-object p1, p0, Lzh0;->a:Lzh0$f0;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
