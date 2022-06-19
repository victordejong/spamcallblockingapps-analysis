.class Lcom/google/android/gms/internal/ads/dbt;
.super Lcom/google/android/gms/internal/ads/dbu;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field protected final b:[B


# direct methods
.method constructor <init>([B)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbu;-><init>()V

    .line 2
    if-nez p1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    .line 5
    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method protected final a(III)I
    .locals 3

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v0

    add-int/2addr v0, p2

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/dgd;->a(I[BII)I

    move-result v0

    return v0
.end method

.method public final a(II)Lcom/google/android/gms/internal/ads/dbi;
    .locals 4

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dbt;->c(III)I

    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    .line 12
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dbp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v3

    add-int/2addr v3, p1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dbp;-><init>([BII)V

    goto :goto_0
.end method

.method protected final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 17
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final a(Lcom/google/android/gms/internal/ads/dbj;)V
    .locals 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbj;->a([BII)V

    .line 16
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/dbi;II)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Length too large: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    add-int v1, p2, p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v1

    const/16 v2, 0x3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Ran off end of other: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/dbt;

    if-eqz v1, :cond_4

    .line 44
    check-cast p1, Lcom/google/android/gms/internal/ads/dbt;

    .line 45
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    .line 46
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v1

    add-int v5, v1, p3

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v2

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v1

    add-int/2addr v1, p2

    .line 50
    :goto_0
    if-ge v2, v5, :cond_3

    .line 51
    aget-byte v6, v3, v2

    aget-byte v7, v4, v1

    if-eq v6, v7, :cond_2

    .line 55
    :goto_1
    return v0

    .line 53
    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 55
    :cond_4
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/dbi;->a(II)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/ads/dbi;->a(II)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dbi;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method b(I)B
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    array-length v0, v0

    return v0
.end method

.method protected final b(III)I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/ads/dcz;->a(I[BII)I

    move-result v0

    return v0
.end method

.method protected b([BIII)V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 37
    :goto_0
    return v0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dbi;

    if-nez v0, :cond_1

    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/dbi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/dbt;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/ads/dbt;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->k()I

    move-result v1

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->k()I

    move-result v0

    .line 34
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    if-eq v1, v0, :cond_4

    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/ads/dbt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/dbu;->a(Lcom/google/android/gms/internal/ads/dbi;II)Z

    move-result v0

    goto :goto_0

    .line 37
    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 3

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dgd;->a([BII)Z

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/dby;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbt;->b:[B

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v2

    const/4 v3, 0x1

    .line 59
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dby;->a([BIIZ)Lcom/google/android/gms/internal/ads/dby;

    move-result-object v0

    return-object v0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
