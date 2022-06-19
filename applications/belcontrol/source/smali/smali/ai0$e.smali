.class public Lai0$e;
.super Lai0$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public d:Landroid/graphics/Path;

.field public final synthetic e:Lai0;


# direct methods
.method public constructor <init>(Lai0;Landroid/graphics/Path;FF)V
    .locals 0

    iput-object p1, p0, Lai0$e;->e:Lai0;

    invoke-direct {p0, p1, p3, p4}, Lai0$f;-><init>(Lai0;FF)V

    iput-object p2, p0, Lai0$e;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lai0$e;->e:Lai0;

    invoke-static {v0}, Lai0;->b(Lai0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lai0$e;->e:Lai0;

    invoke-static {v0}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v0

    iget-boolean v0, v0, Lai0$h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai0$e;->e:Lai0;

    invoke-static {v0}, Lai0;->d(Lai0;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v3, p0, Lai0$e;->d:Landroid/graphics/Path;

    iget v4, p0, Lai0$f;->a:F

    iget v5, p0, Lai0$f;->b:F

    iget-object v0, p0, Lai0$e;->e:Lai0;

    invoke-static {v0}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v0

    iget-object v6, v0, Lai0$h;->d:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lai0$e;->e:Lai0;

    invoke-static {v0}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v0

    iget-boolean v0, v0, Lai0$h;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lai0$e;->e:Lai0;

    invoke-static {v0}, Lai0;->d(Lai0;)Landroid/graphics/Canvas;

    move-result-object v1

    iget-object v3, p0, Lai0$e;->d:Landroid/graphics/Path;

    iget v4, p0, Lai0$f;->a:F

    iget v5, p0, Lai0$f;->b:F

    iget-object v0, p0, Lai0$e;->e:Lai0;

    invoke-static {v0}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v0

    iget-object v6, v0, Lai0$h;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Lai0$f;->a:F

    iget-object v1, p0, Lai0$e;->e:Lai0;

    invoke-static {v1}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v1

    iget-object v1, v1, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lai0$f;->a:F

    return-void
.end method
