.class public final Ls9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/j;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp9/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls9/b;->b:I

    .line 3
    iput-object p1, p0, Ls9/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Lp9/j;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ls9/b;->b:I

    iget-object v1, p0, Ls9/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Ls9/b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp9/j;

    .line 3
    invoke-virtual {v2, p1}, Lp9/j;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iput v0, p0, Ls9/b;->b:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_b

    .line 5
    iget v0, p0, Ls9/b;->b:I

    :goto_2
    iget-object v1, p0, Ls9/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_3

    .line 6
    iget-object v1, p0, Ls9/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp9/j;

    invoke-virtual {v1, p1}, Lp9/j;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 7
    :goto_3
    iput-boolean v0, p0, Ls9/b;->c:Z

    .line 8
    sget-object v0, Lq9/a;->a:Lq9/a;

    iget-boolean v1, p0, Ls9/b;->d:Z

    check-cast v0, Lp9/v$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, v2, Lp9/j;->c:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 10
    sget-object v0, Lp9/h;->b:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lp9/j;->c:[Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lq9/c;->q(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 12
    :goto_4
    iget-object v4, v2, Lp9/j;->d:[Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 13
    sget-object v4, Lq9/c;->f:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lp9/j;->d:[Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lq9/c;->q(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 14
    :cond_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    .line 15
    :goto_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v5

    .line 16
    sget-object v6, Lp9/h;->b:Ljava/util/Comparator;

    sget-object v7, Lq9/c;->a:[B

    .line 17
    array-length v7, v5

    const/4 v8, 0x0

    :goto_6
    const/4 v9, -0x1

    if-ge v8, v7, :cond_7

    .line 18
    aget-object v10, v5, v8

    move-object v11, v6

    check-cast v11, Lp9/h$a;

    const-string v12, "TLS_FALLBACK_SCSV"

    invoke-virtual {v11, v10, v12}, Lp9/h$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-nez v10, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    const/4 v8, -0x1

    :goto_7
    if-eqz v1, :cond_8

    if-eq v8, v9, :cond_8

    .line 19
    aget-object v1, v5, v8

    .line 20
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    .line 21
    array-length v7, v0

    invoke-static {v0, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v9

    .line 22
    aput-object v1, v6, v5

    move-object v0, v6

    .line 23
    :cond_8
    new-instance v1, Lp9/j$a;

    invoke-direct {v1, v2}, Lp9/j$a;-><init>(Lp9/j;)V

    .line 24
    invoke-virtual {v1, v0}, Lp9/j$a;->a([Ljava/lang/String;)Lp9/j$a;

    .line 25
    invoke-virtual {v1, v4}, Lp9/j$a;->d([Ljava/lang/String;)Lp9/j$a;

    .line 26
    new-instance v0, Lp9/j;

    invoke-direct {v0, v1}, Lp9/j;-><init>(Lp9/j$a;)V

    .line 27
    iget-object v1, v0, Lp9/j;->d:[Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 28
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 29
    :cond_9
    iget-object v0, v0, Lp9/j;->c:[Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_a
    return-object v2

    .line 31
    :cond_b
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Unable to find acceptable protocols. isFallback="

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ls9/b;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls9/b;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
