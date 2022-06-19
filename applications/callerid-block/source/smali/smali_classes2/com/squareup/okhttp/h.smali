.class public final Lcom/squareup/okhttp/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/h$b;
    }
.end annotation


# static fields
.field private static final e:[Lcom/squareup/okhttp/CipherSuite;

.field public static final f:Lcom/squareup/okhttp/h;

.field public static final g:Lcom/squareup/okhttp/h;

.field public static final h:Lcom/squareup/okhttp/h;


# instance fields
.field final a:Z

.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->L0:Lcom/squareup/okhttp/CipherSuite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->P0:Lcom/squareup/okhttp/CipherSuite;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->X:Lcom/squareup/okhttp/CipherSuite;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->n0:Lcom/squareup/okhttp/CipherSuite;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->m0:Lcom/squareup/okhttp/CipherSuite;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->w0:Lcom/squareup/okhttp/CipherSuite;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->x0:Lcom/squareup/okhttp/CipherSuite;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->G:Lcom/squareup/okhttp/CipherSuite;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->F:Lcom/squareup/okhttp/CipherSuite;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->K:Lcom/squareup/okhttp/CipherSuite;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->V:Lcom/squareup/okhttp/CipherSuite;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->E:Lcom/squareup/okhttp/CipherSuite;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->I:Lcom/squareup/okhttp/CipherSuite;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->i:Lcom/squareup/okhttp/CipherSuite;

    const/16 v6, 0xd

    aput-object v1, v0, v6

    sput-object v0, Lcom/squareup/okhttp/h;->e:[Lcom/squareup/okhttp/CipherSuite;

    new-instance v1, Lcom/squareup/okhttp/h$b;

    invoke-direct {v1, v3}, Lcom/squareup/okhttp/h$b;-><init>(Z)V

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/h$b;->f([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/h$b;

    new-array v0, v5, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v5, Lcom/squareup/okhttp/TlsVersion;->b:Lcom/squareup/okhttp/TlsVersion;

    aput-object v5, v0, v2

    sget-object v5, Lcom/squareup/okhttp/TlsVersion;->c:Lcom/squareup/okhttp/TlsVersion;

    aput-object v5, v0, v3

    sget-object v5, Lcom/squareup/okhttp/TlsVersion;->d:Lcom/squareup/okhttp/TlsVersion;

    aput-object v5, v0, v4

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/h$b;->i([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/h$b;

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/h$b;->h(Z)Lcom/squareup/okhttp/h$b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/h$b;->e()Lcom/squareup/okhttp/h;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/h;->f:Lcom/squareup/okhttp/h;

    new-instance v1, Lcom/squareup/okhttp/h$b;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/h$b;-><init>(Lcom/squareup/okhttp/h;)V

    new-array v0, v3, [Lcom/squareup/okhttp/TlsVersion;

    aput-object v5, v0, v2

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/h$b;->i([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/h$b;

    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/h$b;->h(Z)Lcom/squareup/okhttp/h$b;

    invoke-virtual {v1}, Lcom/squareup/okhttp/h$b;->e()Lcom/squareup/okhttp/h;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/h;->g:Lcom/squareup/okhttp/h;

    new-instance v0, Lcom/squareup/okhttp/h$b;

    invoke-direct {v0, v2}, Lcom/squareup/okhttp/h$b;-><init>(Z)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/h$b;->e()Lcom/squareup/okhttp/h;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/h;->h:Lcom/squareup/okhttp/h;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/h$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/squareup/okhttp/h$b;->a(Lcom/squareup/okhttp/h$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/h;->a:Z

    invoke-static {p1}, Lcom/squareup/okhttp/h$b;->b(Lcom/squareup/okhttp/h$b;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    invoke-static {p1}, Lcom/squareup/okhttp/h$b;->c(Lcom/squareup/okhttp/h$b;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    invoke-static {p1}, Lcom/squareup/okhttp/h$b;->d(Lcom/squareup/okhttp/h$b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/squareup/okhttp/h;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/h$b;Lcom/squareup/okhttp/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/h;-><init>(Lcom/squareup/okhttp/h$b;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/h;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/h;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    return-object p0
.end method

.method private static e([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {p1, v3}, Lcom/squareup/okhttp/u/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static g([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p0

    if-eqz v1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-static {p1, v3}, Lcom/squareup/okhttp/h;->e([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private h(Ljavax/net/ssl/SSLSocket;Z)Lcom/squareup/okhttp/h;
    .locals 6

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/squareup/okhttp/u/i;->l(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    array-length p2, v1

    add-int/lit8 p2, p2, 0x1

    new-array v3, p2, [Ljava/lang/String;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, -0x1

    aput-object v2, v3, p2

    move-object v1, v3

    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/squareup/okhttp/u/i;->l(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-instance p2, Lcom/squareup/okhttp/h$b;

    invoke-direct {p2, p0}, Lcom/squareup/okhttp/h$b;-><init>(Lcom/squareup/okhttp/h;)V

    invoke-virtual {p2, v1}, Lcom/squareup/okhttp/h$b;->g([Ljava/lang/String;)Lcom/squareup/okhttp/h$b;

    invoke-virtual {p2, p1}, Lcom/squareup/okhttp/h$b;->j([Ljava/lang/String;)Lcom/squareup/okhttp/h$b;

    invoke-virtual {p2}, Lcom/squareup/okhttp/h$b;->e()Lcom/squareup/okhttp/h;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method c(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/h;->h(Ljavax/net/ssl/SSLSocket;Z)Lcom/squareup/okhttp/h;

    move-result-object p2

    iget-object v0, p2, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    iget-object p2, p2, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lcom/squareup/okhttp/CipherSuite;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/squareup/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/squareup/okhttp/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/squareup/okhttp/h;

    iget-boolean v2, p0, Lcom/squareup/okhttp/h;->a:Z

    iget-boolean v3, p1, Lcom/squareup/okhttp/h;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    iget-object v3, p1, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    iget-object v3, p1, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lcom/squareup/okhttp/h;->d:Z

    iget-boolean p1, p1, Lcom/squareup/okhttp/h;->d:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public f(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/squareup/okhttp/h;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/squareup/okhttp/h;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_2

    array-length p1, p1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/squareup/okhttp/h;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/h;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    iget-object v1, p0, Lcom/squareup/okhttp/h;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/squareup/okhttp/h;->d:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/h;->d:Z

    return v0
.end method

.method public j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/squareup/okhttp/TlsVersion;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/h;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/squareup/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/squareup/okhttp/h;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/h;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[use default]"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionSpec(cipherSuites="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/okhttp/h;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/squareup/okhttp/h;->d:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "ConnectionSpec()"

    return-object v0
.end method
