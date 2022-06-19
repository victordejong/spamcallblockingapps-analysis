.class public Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;,
        Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    const-class v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    monitor-enter v0

    :try_start_0
    const-string v1, "BC"

    .line 46
    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/security/Provider;)Z
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "BC"

    .line 73
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm;->a(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized b()V
    .locals 4

    const-class v0, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 54
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    .line 58
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 60
    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    .line 62
    :try_start_2
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->a:Lcom/amazonaws/logging/Log;

    const-string v3, "Bouncy Castle not available"

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static b(Ljava/security/Provider;)Z
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "BC"

    .line 77
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding;->a(Ljava/security/Provider;)Z

    move-result p0

    return p0
.end method
