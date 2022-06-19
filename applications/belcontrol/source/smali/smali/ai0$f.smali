.class public Lai0$f;
.super Lai0$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public final synthetic c:Lai0;


# direct methods
.method public constructor <init>(Lai0;FF)V
    .locals 1

    iput-object p1, p0, Lai0$f;->c:Lai0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai0$j;-><init>(Lai0;Lai0$a;)V

    iput p2, p0, Lai0$f;->a:F

    iput p3, p0, Lai0$f;->b:F

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TextSequence render"

    invoke-static {v1, v0}, Lai0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lai0$f;->c:Lai0;

    invoke-static {v0}, Lai0;->b(Lai0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lai0$f;->c:Lai0;

    invoke-static {v0}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v0

    iget-boolean v0, v0, Lai0$h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lai0$f;->c:Lai0;

    invoke-static {v0}, Lai0;->d(Lai0;)Landroid/graphics/Canvas;

    move-result-object v0

    iget v1, p0, Lai0$f;->a:F

    iget v2, p0, Lai0$f;->b:F

    iget-object v3, p0, Lai0$f;->c:Lai0;

    invoke-static {v3}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v3

    iget-object v3, v3, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lai0$f;->c:Lai0;

    invoke-static {v0}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v0

    iget-boolean v0, v0, Lai0$h;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lai0$f;->c:Lai0;

    invoke-static {v0}, Lai0;->d(Lai0;)Landroid/graphics/Canvas;

    move-result-object v0

    iget v1, p0, Lai0$f;->a:F

    iget v2, p0, Lai0$f;->b:F

    iget-object v3, p0, Lai0$f;->c:Lai0;

    invoke-static {v3}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v3

    iget-object v3, v3, Lai0$h;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget v0, p0, Lai0$f;->a:F

    iget-object v1, p0, Lai0$f;->c:Lai0;

    invoke-static {v1}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v1

    iget-object v1, v1, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lai0$f;->a:F

    return-void
.end method
