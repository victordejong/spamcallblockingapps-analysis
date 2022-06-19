.class public final Lcom/google/android/gms/internal/ads/z92;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/ads/fa2<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/ads/z92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/z92<",
            "Lcom/google/android/gms/internal/ads/aa2;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/google/android/gms/internal/ads/z92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/z92<",
            "Lcom/google/android/gms/internal/ads/ea2;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/google/android/gms/internal/ads/z92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/z92<",
            "Lcom/google/android/gms/internal/ads/ba2;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/google/android/gms/internal/ads/z92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/z92<",
            "Lcom/google/android/gms/internal/ads/da2;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lcom/google/android/gms/internal/ads/z92;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/z92<",
            "Lcom/google/android/gms/internal/ads/ca2;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fa2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lcom/google/android/gms/internal/ads/z92;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/z92;->c:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qa2;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GmsCore_OpenSSL"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "AndroidOpenSSL"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v7, Lcom/google/android/gms/internal/ads/z92;->c:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v6, v9, v3

    const-string v6, "Provider %s not available"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.google.crypto.tink.subtle.EngineFactory"

    const-string v10, "toProviderList"

    invoke-virtual {v7, v8, v9, v10, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/google/android/gms/internal/ads/z92;->d:Ljava/util/List;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/z92;->d:Ljava/util/List;

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/z92;

    new-instance v1, Lcom/google/android/gms/internal/ads/aa2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/aa2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/z92;-><init>(Lcom/google/android/gms/internal/ads/fa2;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/z92;->e:Lcom/google/android/gms/internal/ads/z92;

    new-instance v0, Lcom/google/android/gms/internal/ads/z92;

    new-instance v1, Lcom/google/android/gms/internal/ads/ea2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ea2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/z92;-><init>(Lcom/google/android/gms/internal/ads/fa2;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/z92;->f:Lcom/google/android/gms/internal/ads/z92;

    new-instance v0, Lcom/google/android/gms/internal/ads/z92;

    new-instance v1, Lcom/google/android/gms/internal/ads/ba2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ba2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/z92;-><init>(Lcom/google/android/gms/internal/ads/fa2;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/z92;->g:Lcom/google/android/gms/internal/ads/z92;

    new-instance v0, Lcom/google/android/gms/internal/ads/z92;

    new-instance v1, Lcom/google/android/gms/internal/ads/da2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/da2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/z92;-><init>(Lcom/google/android/gms/internal/ads/fa2;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/z92;->h:Lcom/google/android/gms/internal/ads/z92;

    new-instance v0, Lcom/google/android/gms/internal/ads/z92;

    new-instance v1, Lcom/google/android/gms/internal/ads/ca2;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ca2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/z92;-><init>(Lcom/google/android/gms/internal/ads/fa2;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/z92;->i:Lcom/google/android/gms/internal/ads/z92;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/fa2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z92;->a:Lcom/google/android/gms/internal/ads/fa2;

    sget-object p1, Lcom/google/android/gms/internal/ads/z92;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z92;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z92;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/z92;->a:Lcom/google/android/gms/internal/ads/fa2;

    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/ads/fa2;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z92;->a:Lcom/google/android/gms/internal/ads/fa2;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/fa2;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
