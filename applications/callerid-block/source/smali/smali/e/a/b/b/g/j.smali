.class public Le/a/b/b/g/j;
.super Le/a/b/b/g/e;
.source ""

# interfaces
.implements Li/a/a/a/e;
.implements Li/a/a/a/a;


# direct methods
.method constructor <init>(Le/a/b/b/g/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le/a/b/b/g/e;-><init>(Le/a/b/b/g/d;Ljava/lang/String;)V

    return-void
.end method

.method private j(Ljava/lang/String;Z)I
    .locals 4

    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-virtual {p0}, Le/a/b/b/e;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    check-cast p1, Li/a/a/a/d;

    invoke-interface {p1}, Li/a/a/a/d;->b()Li/a/a/a/f;

    move-result-object p1

    invoke-interface {p1}, Li/a/a/a/f;->d()Li/a/a/a/i;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-interface {p1}, Li/a/a/a/a;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Li/a/a/a/a;->getHeight()I

    move-result p1

    :goto_0
    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    invoke-virtual {p0, v0}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "height"

    invoke-virtual {p0, v1}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Le/a/b/b/e;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Li/a/a/a/d;

    invoke-interface {v1}, Li/a/a/a/d;->b()Li/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/f;->d()Li/a/a/a/i;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/a;->getHeight()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    invoke-virtual {p0}, Le/a/b/b/e;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Li/a/a/a/d;

    invoke-interface {v1}, Li/a/a/a/d;->b()Li/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/f;->d()Li/a/a/a/i;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/a;->getHeight()I

    move-result v1

    :try_start_1
    const-string v2, "top"

    invoke-virtual {p0, v2}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr v1, v2

    :catch_1
    :try_start_2
    const-string v2, "bottom"

    invoke-virtual {p0, v2}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v1, v0

    :catch_2
    return v1
.end method

.method public getWidth()I
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "width"

    invoke-virtual {p0, v1}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Le/a/b/b/e;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Li/a/a/a/d;

    invoke-interface {v1}, Li/a/a/a/d;->b()Li/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/f;->d()Li/a/a/a/i;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/a;->getWidth()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v1

    :catch_0
    invoke-virtual {p0}, Le/a/b/b/e;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Li/a/a/a/d;

    invoke-interface {v1}, Li/a/a/a/d;->b()Li/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/f;->d()Li/a/a/a/i;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/a;->getWidth()I

    move-result v1

    :try_start_1
    const-string v2, "left"

    invoke-virtual {p0, v2}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr v1, v2

    :catch_1
    :try_start_2
    const-string v2, "right"

    invoke-virtual {p0, v2}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v1, v0

    :catch_2
    return v1
.end method

.method public h()I
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "left"

    invoke-virtual {p0, v1}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Le/a/b/b/e;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Li/a/a/a/d;

    invoke-interface {v1}, Li/a/a/a/d;->b()Li/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/f;->d()Li/a/a/a/i;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/a;->getWidth()I

    move-result v1

    const-string v2, "right"

    invoke-virtual {p0, v2}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v2

    const-string v3, "width"

    invoke-virtual {p0, v3}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "top"

    invoke-virtual {p0, v1}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Le/a/b/b/e;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Li/a/a/a/d;

    invoke-interface {v1}, Li/a/a/a/d;->b()Li/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/f;->d()Li/a/a/a/i;

    move-result-object v1

    invoke-interface {v1}, Li/a/a/a/a;->getHeight()I

    move-result v1

    const-string v2, "bottom"

    invoke-virtual {p0, v2}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v2

    const-string v3, "height"

    invoke-virtual {p0, v3}, Le/a/b/b/c;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Le/a/b/b/g/j;->j(Ljava/lang/String;Z)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    :catch_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/b/b/g/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/b/b/g/j;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/b/b/g/j;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/b/b/g/j;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/b/b/g/j;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
