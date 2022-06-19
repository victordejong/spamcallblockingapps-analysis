.class public final Lokhttp3/r;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final a:Lokhttp3/af;

.field private final b:Lokhttp3/h;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lokhttp3/af;Lokhttp3/h;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/af;",
            "Lokhttp3/h;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lokhttp3/r;->a:Lokhttp3/af;

    .line 44
    iput-object p2, p0, Lokhttp3/r;->b:Lokhttp3/h;

    .line 45
    iput-object p3, p0, Lokhttp3/r;->c:Ljava/util/List;

    .line 46
    iput-object p4, p0, Lokhttp3/r;->d:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lokhttp3/r;
    .locals 5

    .prologue
    .line 50
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    invoke-static {v0}, Lokhttp3/h;->a(Ljava/lang/String;)Lokhttp3/h;

    move-result-object v2

    .line 54
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    invoke-static {v0}, Lokhttp3/af;->a(Ljava/lang/String;)Lokhttp3/af;

    move-result-object v3

    .line 60
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    if-eqz v0, :cond_2

    .line 65
    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 68
    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    invoke-static {v1}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 73
    :goto_2
    new-instance v4, Lokhttp3/r;

    invoke-direct {v4, v3, v2, v0, v1}, Lokhttp3/r;-><init>(Lokhttp3/af;Lokhttp3/h;Ljava/util/List;Ljava/util/List;)V

    return-object v4

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public a()Lokhttp3/h;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/r;->b:Lokhttp3/h;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lokhttp3/r;->c:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 122
    instance-of v1, p1, Lokhttp3/r;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    check-cast p1, Lokhttp3/r;

    .line 124
    iget-object v1, p0, Lokhttp3/r;->a:Lokhttp3/af;

    iget-object v2, p1, Lokhttp3/r;->a:Lokhttp3/af;

    invoke-virtual {v1, v2}, Lokhttp3/af;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/r;->b:Lokhttp3/h;

    iget-object v2, p1, Lokhttp3/r;->b:Lokhttp3/h;

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/r;->c:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/r;->c:Ljava/util/List;

    .line 126
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/r;->d:Ljava/util/List;

    iget-object v2, p1, Lokhttp3/r;->d:Ljava/util/List;

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 131
    .line 132
    iget-object v0, p0, Lokhttp3/r;->a:Lokhttp3/af;

    invoke-virtual {v0}, Lokhttp3/af;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 133
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/r;->b:Lokhttp3/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/r;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    return v0
.end method
