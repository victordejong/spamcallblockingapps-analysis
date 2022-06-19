.class public Lcom/google/api/client/a/a;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/a/a$a;,
        Lcom/google/api/client/a/a$b;,
        Lcom/google/api/client/a/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field a:I

.field b:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;)I
    .locals 4

    .line 274
    iget v0, p0, Lcom/google/api/client/a/a;->a:I

    shl-int/lit8 v0, v0, 0x1

    .line 275
    iget-object v1, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 277
    aget-object v3, v1, v2

    if-nez p1, :cond_0

    if-nez v3, :cond_1

    goto :goto_1

    .line 278
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    return p1
.end method

.method public static a()Lcom/google/api/client/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/api/client/a/a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/api/client/a/a;

    invoke-direct {v0}, Lcom/google/api/client/a/a;-><init>()V

    return-object v0
.end method

.method private a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    .line 259
    aput-object p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 260
    aput-object p3, v0, p1

    return-void
.end method

.method private c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 106
    iget v0, p0, Lcom/google/api/client/a/a;->a:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/google/api/client/a/a;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 144
    iget v0, p0, Lcom/google/api/client/a/a;->a:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 149
    invoke-direct {p0, p1}, Lcom/google/api/client/a/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final b()Lcom/google/api/client/a/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/client/a/a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 333
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/a/a;

    .line 334
    iget-object v1, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 336
    array-length v2, v1

    .line 337
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    .line 338
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final b(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 290
    iget v0, p0, Lcom/google/api/client/a/a;->a:I

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 294
    invoke-direct {p0, v2}, Lcom/google/api/client/a/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    sub-int v4, v0, p1

    add-int/lit8 v4, v4, -0x2

    if-eqz v4, :cond_1

    add-int/lit8 v5, p1, 0x2

    .line 298
    invoke-static {v3, v5, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_1
    iget p1, p0, Lcom/google/api/client/a/a;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/api/client/a/a;->a:I

    add-int/lit8 v0, v0, -0x2

    .line 301
    invoke-direct {p0, v0, v1, v1}, Lcom/google/api/client/a/a;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    iput v0, p0, Lcom/google/api/client/a/a;->a:I

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/api/client/a/a;->b()Lcom/google/api/client/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 176
    invoke-direct {p0, p1}, Lcom/google/api/client/a/a;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    .line 313
    iget v0, p0, Lcom/google/api/client/a/a;->a:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    .line 314
    iget-object v2, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 316
    aget-object v4, v2, v3

    if-nez p1, :cond_0

    if-nez v4, :cond_1

    goto :goto_1

    .line 317
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/google/api/client/a/a$c;

    invoke-direct {v0, p0}, Lcom/google/api/client/a/a$c;-><init>(Lcom/google/api/client/a/a;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1}, Lcom/google/api/client/a/a;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/api/client/a/a;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1181
    invoke-direct {p0, p1}, Lcom/google/api/client/a/a;->a(Ljava/lang/Object;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    iget v0, p0, Lcom/google/api/client/a/a;->a:I

    :cond_0
    if-ltz v0, :cond_9

    add-int/lit8 v1, v0, 0x1

    if-ltz v1, :cond_8

    .line 2227
    iget-object v2, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 2229
    :cond_1
    array-length v5, v2

    :goto_0
    if-le v3, v5, :cond_6

    .line 2231
    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    .line 2232
    rem-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-ge v5, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    if-nez v3, :cond_4

    const/4 v2, 0x0

    .line 2244
    iput-object v2, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    goto :goto_2

    .line 2247
    :cond_4
    iget v5, p0, Lcom/google/api/client/a/a;->a:I

    if-eqz v5, :cond_5

    .line 2249
    array-length v6, v2

    if-eq v3, v6, :cond_6

    .line 2250
    :cond_5
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/api/client/a/a;->b:[Ljava/lang/Object;

    if-eqz v5, :cond_6

    shl-int/lit8 v5, v5, 0x1

    .line 2252
    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    .line 2129
    invoke-direct {p0, v2}, Lcom/google/api/client/a/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 2130
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/client/a/a;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2131
    iget p1, p0, Lcom/google/api/client/a/a;->a:I

    if-le v1, p1, :cond_7

    .line 2132
    iput v1, p0, Lcom/google/api/client/a/a;->a:I

    :cond_7
    return-object v2

    .line 2225
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 2124
    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1}, Lcom/google/api/client/a/a;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/api/client/a/a;->b(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/api/client/a/a;->a:I

    return v0
.end method
