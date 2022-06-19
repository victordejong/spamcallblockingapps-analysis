.class public Lokhttp3/internal/e/f;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final a:Lokhttp3/internal/e/f;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lokhttp3/internal/e/f;->b()Lokhttp3/internal/e/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->a:Lokhttp3/internal/e/f;

    .line 81
    const-class v0, Lokhttp3/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/y;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 164
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/y;

    .line 165
    sget-object v4, Lokhttp3/y;->a:Lokhttp3/y;

    if-ne v0, v4, :cond_0

    .line 163
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v0}, Lokhttp3/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_1
    return-object v2
.end method

.method private static b()Lokhttp3/internal/e/f;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lokhttp3/internal/e/a;->a()Lokhttp3/internal/e/f;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    invoke-static {}, Lokhttp3/internal/e/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-static {}, Lokhttp3/internal/e/b;->b()Lokhttp3/internal/e/f;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 213
    :cond_2
    invoke-static {}, Lokhttp3/internal/e/c;->b()Lokhttp3/internal/e/c;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lokhttp3/internal/e/d;->b()Lokhttp3/internal/e/f;

    move-result-object v0

    .line 221
    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lokhttp3/internal/e/f;

    invoke-direct {v0}, Lokhttp3/internal/e/f;-><init>()V

    goto :goto_0
.end method

.method static b(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/y;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v2, La/c;

    invoke-direct {v2}, La/c;-><init>()V

    .line 235
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 236
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/y;

    .line 237
    sget-object v4, Lokhttp3/y;->a:Lokhttp3/y;

    if-ne v0, v4, :cond_0

    .line 235
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v0}, Lokhttp3/y;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, La/c;->b(I)La/c;

    .line 239
    invoke-virtual {v0}, Lokhttp3/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, La/c;->a(Ljava/lang/String;)La/c;

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v2}, La/c;->p()[B

    move-result-object v0

    return-object v0
.end method

.method public static c()Lokhttp3/internal/e/f;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lokhttp3/internal/e/f;->a:Lokhttp3/internal/e/f;

    return-object v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 188
    const-string/jumbo v0, "conscrypt"

    const-string/jumbo v1, "okhttp.platform"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "Conscrypt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public K_()Ljavax/net/ssl/SSLContext;
    .locals 3

    .prologue
    .line 269
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No TLS provider"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lokhttp3/internal/e/f;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/f/c;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lokhttp3/internal/f/a;

    invoke-virtual {p0, p1}, Lokhttp3/internal/e/f;->b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/f/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/f/a;-><init>(Lokhttp3/internal/f/e;)V

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 134
    :goto_0
    sget-object v1, Lokhttp3/internal/e/f;->b:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void

    .line 133
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    :cond_0
    const/4 v0, 0x5

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, p1, p2}, Lokhttp3/internal/e/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 130
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/y;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    return-void
.end method

.method public b(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/f/e;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lokhttp3/internal/f/b;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/f/b;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method
