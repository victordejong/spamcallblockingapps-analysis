.class public final Lcom/google/android/gms/internal/ads/czy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/ads/czx",
        "<TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/czy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/czy",
            "<",
            "Lcom/google/android/gms/internal/ads/daa;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/ads/czy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/czy",
            "<",
            "Lcom/google/android/gms/internal/ads/dae;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/ads/czy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/czy",
            "<",
            "Lcom/google/android/gms/internal/ads/czz;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/ads/czy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/czy",
            "<",
            "Lcom/google/android/gms/internal/ads/dab;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/ads/czy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/czy",
            "<",
            "Lcom/google/android/gms/internal/ads/dac;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/logging/Logger;

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/google/android/gms/internal/ads/czy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/czy",
            "<",
            "Lcom/google/android/gms/internal/ads/dag;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/google/android/gms/internal/ads/czy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/czy",
            "<",
            "Lcom/google/android/gms/internal/ads/dad;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Lcom/google/android/gms/internal/ads/czx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 16
    const-class v0, Lcom/google/android/gms/internal/ads/czy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->f:Ljava/util/logging/Logger;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/dal;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v0, "GmsCore_OpenSSL"

    aput-object v0, v2, v1

    const-string/jumbo v0, "AndroidOpenSSL"

    aput-object v0, v2, v11

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 21
    :goto_0
    if-ge v0, v12, :cond_1

    aget-object v4, v2, v0

    .line 22
    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/ads/czy;->f:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v7, "com.google.crypto.tink.subtle.EngineFactory"

    const-string/jumbo v8, "toProviderList"

    const-string/jumbo v9, "Provider %s not available"

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v4, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v8, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_1
    sput-object v3, Lcom/google/android/gms/internal/ads/czy;->g:Ljava/util/List;

    .line 30
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/czy;

    new-instance v1, Lcom/google/android/gms/internal/ads/daa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/daa;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/czy;-><init>(Lcom/google/android/gms/internal/ads/czx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->a:Lcom/google/android/gms/internal/ads/czy;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/czy;

    new-instance v1, Lcom/google/android/gms/internal/ads/dae;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dae;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/czy;-><init>(Lcom/google/android/gms/internal/ads/czx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->b:Lcom/google/android/gms/internal/ads/czy;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/czy;

    new-instance v1, Lcom/google/android/gms/internal/ads/dag;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dag;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/czy;-><init>(Lcom/google/android/gms/internal/ads/czx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->h:Lcom/google/android/gms/internal/ads/czy;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/czy;

    new-instance v1, Lcom/google/android/gms/internal/ads/dad;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dad;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/czy;-><init>(Lcom/google/android/gms/internal/ads/czx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->i:Lcom/google/android/gms/internal/ads/czy;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/czy;

    new-instance v1, Lcom/google/android/gms/internal/ads/czz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/czz;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/czy;-><init>(Lcom/google/android/gms/internal/ads/czx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->c:Lcom/google/android/gms/internal/ads/czy;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/czy;

    new-instance v1, Lcom/google/android/gms/internal/ads/dab;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dab;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/czy;-><init>(Lcom/google/android/gms/internal/ads/czx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->d:Lcom/google/android/gms/internal/ads/czy;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/czy;

    new-instance v1, Lcom/google/android/gms/internal/ads/dac;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dac;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/czy;-><init>(Lcom/google/android/gms/internal/ads/czx;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->e:Lcom/google/android/gms/internal/ads/czy;

    return-void

    .line 29
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/czy;->g:Ljava/util/List;

    goto :goto_2
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/czx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/czy;->j:Lcom/google/android/gms/internal/ads/czx;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/czy;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/czy;->k:Ljava/util/List;

    .line 4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/czy;->l:Z

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czy;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/czy;->j:Lcom/google/android/gms/internal/ads/czx;

    invoke-interface {v4, p1, v0}, Lcom/google/android/gms/internal/ads/czx;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 14
    :goto_1
    return-object v0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    if-nez v1, :cond_2

    :goto_2
    move-object v1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/czy;->l:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/czy;->j:Lcom/google/android/gms/internal/ads/czx;

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/internal/ads/czx;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 15
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "No good Provider found."

    invoke-direct {v0, v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method
