.class public Lai0$g;
.super Lai0$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:Landroid/graphics/Path;

.field public final synthetic d:Lai0;


# direct methods
.method public constructor <init>(Lai0;FFLandroid/graphics/Path;)V
    .locals 1

    iput-object p1, p0, Lai0$g;->d:Lai0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai0$j;-><init>(Lai0;Lai0$a;)V

    iput p2, p0, Lai0$g;->a:F

    iput p3, p0, Lai0$g;->b:F

    iput-object p4, p0, Lai0$g;->c:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(Lzh0$y0;)Z
    .locals 2

    instance-of p1, p1, Lzh0$z0;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Using <textPath> elements in a clip path is not supported."

    invoke-static {v1, v0}, Lai0;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lai0$g;->d:Lai0;

    invoke-static {v0}, Lai0;->b(Lai0;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lai0$g;->d:Lai0;

    invoke-static {v1}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v1

    iget-object v1, v1, Lai0$h;->d:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lai0$g;->a:F

    iget v6, p0, Lai0$g;->b:F

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    iget-object v1, p0, Lai0$g;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_0
    iget v0, p0, Lai0$g;->a:F

    iget-object v1, p0, Lai0$g;->d:Lai0;

    invoke-static {v1}, Lai0;->c(Lai0;)Lai0$h;

    move-result-object v1

    iget-object v1, v1, Lai0$h;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lai0$g;->a:F

    return-void
.end method
