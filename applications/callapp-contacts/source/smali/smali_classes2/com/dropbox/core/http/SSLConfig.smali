.class public Lcom/dropbox/core/http/SSLConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/SSLConfig$LoadException;,
        Lcom/dropbox/core/http/SSLConfig$b;,
        Lcom/dropbox/core/http/SSLConfig$a;
    }
.end annotation


# static fields
.field private static final a:Ljavax/net/ssl/X509TrustManager;

.field private static final b:Ljavax/net/ssl/SSLSocketFactory;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static f:Lcom/dropbox/core/http/SSLConfig$a;

.field private static final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 58

    const-string v0, "/com/dropbox/core/trusted-certs.raw"

    .line 3214
    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->a(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 3215
    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->a(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 60
    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->a:Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 3219
    invoke-static {v1}, Lcom/dropbox/core/http/SSLConfig;->a([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 3220
    new-instance v1, Lcom/dropbox/core/http/SSLConfig$b;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dropbox/core/http/SSLConfig$b;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 61
    sput-object v1, Lcom/dropbox/core/http/SSLConfig;->b:Ljavax/net/ssl/SSLSocketFactory;

    const-string v0, "TLSv1.2"

    .line 63
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->c:[Ljava/lang/String;

    const-string v0, "TLSv1.1"

    .line 64
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->d:[Ljava/lang/String;

    const-string v0, "TLSv1"

    .line 65
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->e:[Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "SSL_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v2, "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const-string v3, "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v4, "SSL_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v5, "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v6, "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v7, "SSL_ECDHE_RSA_WITH_RC4_128_SHA"

    const-string v8, "SSL_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v9, "SSL_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const-string v10, "SSL_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v11, "SSL_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v12, "SSL_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v13, "SSL_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v14, "SSL_RSA_WITH_AES_256_GCM_SHA384"

    const-string v15, "SSL_RSA_WITH_AES_256_CBC_SHA256"

    const-string v16, "SSL_RSA_WITH_AES_256_CBC_SHA"

    const-string v17, "SSL_RSA_WITH_AES_128_GCM_SHA256"

    const-string v18, "SSL_RSA_WITH_AES_128_CBC_SHA256"

    const-string v19, "SSL_RSA_WITH_AES_128_CBC_SHA"

    const-string v20, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v21, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const-string v22, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v23, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v24, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v25, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v26, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const-string v27, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v28, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const-string v29, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v30, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v31, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v32, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v33, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const-string v34, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const-string v35, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v36, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v37, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const-string v38, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v39, "ECDHE-RSA-AES256-GCM-SHA384"

    const-string v40, "ECDHE-RSA-AES256-SHA384"

    const-string v41, "ECDHE-RSA-AES256-SHA"

    const-string v42, "ECDHE-RSA-AES128-GCM-SHA256"

    const-string v43, "ECDHE-RSA-AES128-SHA256"

    const-string v44, "ECDHE-RSA-AES128-SHA"

    const-string v45, "ECDHE-RSA-RC4-SHA"

    const-string v46, "DHE-RSA-AES256-GCM-SHA384"

    const-string v47, "DHE-RSA-AES256-SHA256"

    const-string v48, "DHE-RSA-AES256-SHA"

    const-string v49, "DHE-RSA-AES128-GCM-SHA256"

    const-string v50, "DHE-RSA-AES128-SHA256"

    const-string v51, "DHE-RSA-AES128-SHA"

    const-string v52, "AES256-GCM-SHA384"

    const-string v53, "AES256-SHA256"

    const-string v54, "AES256-SHA"

    const-string v55, "AES128-GCM-SHA256"

    const-string v56, "AES128-SHA256"

    const-string v57, "AES128-SHA"

    filled-new-array/range {v1 .. v57}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->g:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5

    const-string v0, "Error loading from \""

    const-string v1, "Couldn\'t initialize KeyStore"

    .line 323
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [C

    const/4 v4, 0x0

    .line 325
    invoke-virtual {v2, v4, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 336
    const-class v1, Lcom/dropbox/core/http/SSLConfig;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "\""

    if-eqz v1, :cond_0

    .line 341
    :try_start_1
    invoke-static {v2, v1}, Lcom/dropbox/core/http/SSLConfig;->a(Ljava/security/KeyStore;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/dropbox/core/http/SSLConfig$LoadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->b(Ljava/io/InputStream;)V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 347
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v2

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception v2

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    :goto_0
    invoke-static {v1}, Lcom/dropbox/core/util/IOUtil;->b(Ljava/io/InputStream;)V

    .line 350
    throw p0

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find resource \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_3
    move-exception p0

    .line 333
    invoke-static {v1, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_4
    move-exception p0

    .line 331
    invoke-static {v1, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_5
    move-exception p0

    .line 329
    invoke-static {v1, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_6
    move-exception p0

    .line 327
    invoke-static {v1, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static a([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;
    .locals 2

    :try_start_0
    const-string v0, "TLS"

    .line 281
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 287
    :try_start_1
    invoke-virtual {v0, v1, p0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "Couldn\'t initialize SSLContext"

    .line 289
    invoke-static {v0, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    const-string v0, "Couldn\'t create SSLContext"

    .line 283
    invoke-static {v0, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 147
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->a:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method private static a(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    :try_start_0
    const-string v0, "X509"

    .line 298
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    :try_start_1
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 309
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    .line 310
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 313
    aget-object v1, p0, v0

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_0

    .line 317
    aget-object p0, p0, v0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;

    return-object p0

    .line 314
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TrustManager not of type X509: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 311
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "More than 1 TrustManager created."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :catch_0
    move-exception p0

    const-string v0, "Unable to initialize TrustManagerFactory with key store"

    .line 306
    invoke-static {v0, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    const-string v0, "Unable to create TrustManagerFactory"

    .line 300
    invoke-static {v0, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static a(Ljava/security/KeyStore;Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/http/SSLConfig$LoadException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const-string v0, "Error loading certificate: "

    :try_start_0
    const-string v1, "X.509"

    .line 368
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2391
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2393
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x2800

    new-array v4, p1, [B

    .line 2396
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-gt v5, p1, :cond_0

    const/4 v6, 0x0

    .line 2401
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 2402
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v4, v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2399
    :cond_0
    new-instance p0, Lcom/dropbox/core/http/SSLConfig$LoadException;

    const-string p1, "Invalid length for certificate entry: "

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v6}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 2405
    :cond_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result p1
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    if-gez p1, :cond_3

    .line 380
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 381
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 383
    :try_start_2
    invoke-virtual {p0, v2, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 385
    new-instance p1, Lcom/dropbox/core/http/SSLConfig$LoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return-void

    .line 2406
    :cond_3
    :try_start_3
    new-instance p0, Lcom/dropbox/core/http/SSLConfig$LoadException;

    const-string p1, "Found data after after zero-length header."

    invoke-direct {p0, p1, v6}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p0

    .line 377
    new-instance p1, Lcom/dropbox/core/http/SSLConfig$LoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    const-string p1, "Couldn\'t initialize X.509 CertificateFactory"

    .line 370
    invoke-static {p1, p0}, Lcom/dropbox/core/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method static synthetic a(Ljavax/net/ssl/SSLSocket;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 3155
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 3164
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v6, v0, v2

    const-string v7, "TLSv1.2"

    .line 3165
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const-string v7, "TLSv1.1"

    .line 3167
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const-string v7, "TLSv1"

    .line 3169
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 3174
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->c:[Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    .line 3175
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->d:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    .line 3176
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->e:[Ljava/lang/String;

    .line 3155
    :goto_2
    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 3156
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void

    .line 3177
    :cond_6
    new-instance p0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Socket\'s available protocols doesn\'t overlap with our allowed protocols: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dropbox/core/util/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 183
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->f:Lcom/dropbox/core/http/SSLConfig$a;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v1, v0, Lcom/dropbox/core/http/SSLConfig$a;->a:[Ljava/lang/String;

    .line 185
    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2203
    iget-object p0, v0, Lcom/dropbox/core/http/SSLConfig$a;->b:[Ljava/lang/String;

    return-object p0

    .line 191
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/dropbox/core/http/SSLConfig;->g:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 193
    sget-object v4, Lcom/dropbox/core/http/SSLConfig;->g:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 199
    new-instance v1, Lcom/dropbox/core/http/SSLConfig$a;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/http/SSLConfig$a;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/dropbox/core/http/SSLConfig;->f:Lcom/dropbox/core/http/SSLConfig$a;

    return-object v0
.end method

.method public static b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 151
    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
