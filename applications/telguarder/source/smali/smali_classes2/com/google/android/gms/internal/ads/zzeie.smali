.class public final Lcom/google/android/gms/internal/ads/zzeie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/ads/zzeid<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzikf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzikg:Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeie<",
            "Lcom/google/android/gms/internal/ads/zzeig;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzikh:Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeie<",
            "Lcom/google/android/gms/internal/ads/zzeik;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziki:Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeie<",
            "Lcom/google/android/gms/internal/ads/zzeim;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzikj:Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeie<",
            "Lcom/google/android/gms/internal/ads/zzeij;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzikk:Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeie<",
            "Lcom/google/android/gms/internal/ads/zzeif;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzikl:Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeie<",
            "Lcom/google/android/gms/internal/ads/zzeih;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzikm:Lcom/google/android/gms/internal/ads/zzeie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeie<",
            "Lcom/google/android/gms/internal/ads/zzeii;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzikn:Lcom/google/android/gms/internal/ads/zzeid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private zziko:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private zzikp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    const-class v0, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->logger:Ljava/util/logging/Logger;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeiw;->zzbfw()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GmsCore_OpenSSL"

    const-string v1, "AndroidOpenSSL"

    .line 18
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 21
    aget-object v4, v0, v3

    .line 22
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 24
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/ads/zzeie;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    const-string v4, "Provider %s not available"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v8, "toProviderList"

    invoke-virtual {v5, v6, v7, v8, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sput-object v1, Lcom/google/android/gms/internal/ads/zzeie;->zzikf:Ljava/util/List;

    goto :goto_2

    .line 29
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikf:Ljava/util/List;

    .line 30
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeig;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeig;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeid;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikg:Lcom/google/android/gms/internal/ads/zzeie;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeik;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeik;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeid;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikh:Lcom/google/android/gms/internal/ads/zzeie;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeim;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeim;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeid;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zziki:Lcom/google/android/gms/internal/ads/zzeie;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeij;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeij;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeid;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikj:Lcom/google/android/gms/internal/ads/zzeie;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeif;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeif;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeid;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikk:Lcom/google/android/gms/internal/ads/zzeie;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeih;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeih;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeid;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikl:Lcom/google/android/gms/internal/ads/zzeie;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeii;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeii;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeid;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeie;->zzikm:Lcom/google/android/gms/internal/ads/zzeie;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeid;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzikn:Lcom/google/android/gms/internal/ads/zzeid;

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeie;->zzikf:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziko:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzikp:Z

    return-void
.end method


# virtual methods
.method public final zzhw(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zziko:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzikn:Lcom/google/android/gms/internal/ads/zzeid;

    invoke-interface {v4, p1, v3}, Lcom/google/android/gms/internal/ads/zzeid;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzikp:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeie;->zzikn:Lcom/google/android/gms/internal/ads/zzeid;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeid;->zza(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No good Provider found."

    invoke-direct {p1, v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
