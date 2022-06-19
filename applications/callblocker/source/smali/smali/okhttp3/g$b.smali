.class final Lokhttp3/g$b;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:La/f;


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lokhttp3/g$b;->a:Ljava/lang/String;

    const-string/jumbo v2, "*."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lokhttp3/g$b;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lokhttp3/g$b;->b:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/g$b;->b:Ljava/lang/String;

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v4, v1

    .line 292
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 296
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lokhttp3/g$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 300
    instance-of v0, p1, Lokhttp3/g$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/g$b;->a:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lokhttp3/g$b;

    iget-object v0, v0, Lokhttp3/g$b;->a:Ljava/lang/String;

    .line 301
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/g$b;->c:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lokhttp3/g$b;

    iget-object v0, v0, Lokhttp3/g$b;->c:Ljava/lang/String;

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/g$b;->d:La/f;

    check-cast p1, Lokhttp3/g$b;

    iget-object v1, p1, Lokhttp3/g$b;->d:La/f;

    .line 303
    invoke-virtual {v0, v1}, La/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 307
    .line 308
    iget-object v0, p0, Lokhttp3/g$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 309
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/g$b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/g$b;->d:La/f;

    invoke-virtual {v1}, La/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/g$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/g$b;->d:La/f;

    invoke-virtual {v1}, La/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
