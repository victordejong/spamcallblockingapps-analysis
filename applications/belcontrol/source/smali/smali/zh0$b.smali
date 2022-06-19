.class public Lzh0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzh0$b;->a:F

    iput p2, p0, Lzh0$b;->b:F

    iput p3, p0, Lzh0$b;->c:F

    iput p4, p0, Lzh0$b;->d:F

    return-void
.end method

.method public static b(FFFF)Lzh0$b;
    .locals 1

    new-instance v0, Lzh0$b;

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    invoke-direct {v0, p0, p1, p2, p3}, Lzh0$b;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public c()F
    .locals 2

    iget v0, p0, Lzh0$b;->a:F

    iget v1, p0, Lzh0$b;->c:F

    add-float/2addr v0, v1

    return v0
.end method

.method public d()F
    .locals 2

    iget v0, p0, Lzh0$b;->b:F

    iget v1, p0, Lzh0$b;->d:F

    add-float/2addr v0, v1

    return v0
.end method

.method public f()Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lzh0$b;->a:F

    iget v2, p0, Lzh0$b;->b:F

    invoke-virtual {p0}, Lzh0$b;->c()F

    move-result v3

    invoke-virtual {p0}, Lzh0$b;->d()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public g(Lzh0$b;)V
    .locals 2

    iget v0, p1, Lzh0$b;->a:F

    iget v1, p0, Lzh0$b;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput v0, p0, Lzh0$b;->a:F

    :cond_0
    iget v0, p1, Lzh0$b;->b:F

    iget v1, p0, Lzh0$b;->b:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    iput v0, p0, Lzh0$b;->b:F

    :cond_1
    invoke-virtual {p1}, Lzh0$b;->c()F

    move-result v0

    invoke-virtual {p0}, Lzh0$b;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lzh0$b;->c()F

    move-result v0

    iget v1, p0, Lzh0$b;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lzh0$b;->c:F

    :cond_2
    invoke-virtual {p1}, Lzh0$b;->d()F

    move-result v0

    invoke-virtual {p0}, Lzh0$b;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lzh0$b;->d()F

    move-result p1

    iget v0, p0, Lzh0$b;->b:F

    sub-float/2addr p1, v0

    iput p1, p0, Lzh0$b;->d:F

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzh0$b;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzh0$b;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzh0$b;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzh0$b;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
