.class public final Lcom/google/android/gms/internal/ads/cti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cti$b;,
        Lcom/google/android/gms/internal/ads/cti$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cti$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cti$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/csp",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/cth",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/google/android/gms/internal/ads/cti;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cti;->a:Ljava/util/logging/Logger;

    .line 174
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 175
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cti;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 176
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cti;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 177
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cti;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cti;->f:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/csp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/csp",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "catalogueName must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/csp;

    .line 11
    if-nez v0, :cond_a

    .line 12
    const-string/jumbo v0, "no catalogue found for %s. "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tinkaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Maybe call AeadConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tinkdeterministicaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Maybe call DeterministicAeadConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_2
    :goto_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tinkstreamingaead"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Maybe call StreamingAeadConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tinkhybriddecrypt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tinkhybridencrypt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 21
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Maybe call HybridConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tinkmac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Maybe call MacConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tinkpublickeysign"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tinkpublickeyverify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    :cond_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Maybe call SignatureConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 27
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Maybe call TinkConfig.register()."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 30
    :cond_a
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/css;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TP;>;)",
            "Lcom/google/android/gms/internal/ads/css",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cti;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cti$a;

    move-result-object v0

    .line 114
    if-nez p1, :cond_0

    .line 115
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->a()Lcom/google/android/gms/internal/ads/css;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cti$a;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/css;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    new-instance v2, Ljava/security/GeneralSecurityException;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->c()Ljava/util/Set;

    move-result-object v1

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const/4 v0, 0x1

    .line 125
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 126
    if-nez v1, :cond_2

    .line 127
    const-string/jumbo v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const/4 v0, 0x0

    move v1, v0

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4d

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Primitive type "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " not supported by key manager of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", supported primitives: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static a(Lcom/google/android/gms/internal/ads/csy;Lcom/google/android/gms/internal/ads/css;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/ctf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/csy;",
            "Lcom/google/android/gms/internal/ads/css",
            "<TP;>;",
            "Ljava/lang/Class",
            "<TP;>;)",
            "Lcom/google/android/gms/internal/ads/ctf",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/csy;->a()Lcom/google/android/gms/internal/ads/cye;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ctq;->b(Lcom/google/android/gms/internal/ads/cye;)V

    .line 154
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ctf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/ctf;

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/csy;->a()Lcom/google/android/gms/internal/ads/cye;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cye;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cye$a;

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cye$a;->c()Lcom/google/android/gms/internal/ads/cxy;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/cxy;->b:Lcom/google/android/gms/internal/ads/cxy;

    if-ne v4, v5, :cond_0

    .line 159
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cye$a;->b()Lcom/google/android/gms/internal/ads/cxu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cxu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cye$a;->b()Lcom/google/android/gms/internal/ads/cxu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cxu;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v5

    .line 160
    invoke-static {v4, v5, v0}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dbi;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 161
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/ctf;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/cye$a;)Lcom/google/android/gms/internal/ads/cte;

    move-result-object v4

    .line 162
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/csy;->a()Lcom/google/android/gms/internal/ads/cye;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cye;->a()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 163
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/ctf;->a(Lcom/google/android/gms/internal/ads/cte;)V

    goto :goto_0

    .line 166
    :cond_1
    return-object v2
.end method

.method private static a(Lcom/google/android/gms/internal/ads/csx;)Lcom/google/android/gms/internal/ads/cti$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/ads/deg;",
            ">(",
            "Lcom/google/android/gms/internal/ads/csx",
            "<TKeyProtoT;>;)",
            "Lcom/google/android/gms/internal/ads/cti$a;"
        }
    .end annotation

    .prologue
    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ctk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ctk;-><init>(Lcom/google/android/gms/internal/ads/csx;)V

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/google/android/gms/internal/ads/cya;)Lcom/google/android/gms/internal/ads/cxu;
    .locals 5

    .prologue
    .line 133
    const-class v1, Lcom/google/android/gms/internal/ads/cti;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cya;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/css;

    move-result-object v2

    .line 134
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cya;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cya;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/css;->c(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 136
    :cond_0
    :try_start_1
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "newKey-operation not permitted for key type "

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cya;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 137
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/ctf;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/ctf",
            "<TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ctf;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cth;

    .line 169
    if-nez v0, :cond_1

    .line 170
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "No wrapper found for "

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ctf;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/cth;->a(Lcom/google/android/gms/internal/ads/ctf;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33
    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dbi;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dbi;",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/css;

    move-result-object v0

    .line 148
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/css;->a(Lcom/google/android/gms/internal/ads/dbi;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/deg;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/deg;",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 144
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/css;

    move-result-object v0

    .line 145
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/css;->a(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method public static a(Ljava/lang/String;[BLjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    .line 150
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dbi;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public static declared-synchronized a(Lcom/google/android/gms/internal/ads/css;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/css",
            "<TP;>;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    const-class v1, Lcom/google/android/gms/internal/ads/cti;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 46
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "key manager must be non-null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 47
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/css;->a()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 49
    sget-object v2, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    sget-object v2, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 52
    new-instance v3, Lcom/google/android/gms/internal/ads/ctm;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/ctm;-><init>(Lcom/google/android/gms/internal/ads/css;)V

    .line 53
    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/cti;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/android/gms/internal/ads/csx;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/ads/deg;",
            ">(",
            "Lcom/google/android/gms/internal/ads/csx",
            "<TKeyProtoT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 56
    const-class v1, Lcom/google/android/gms/internal/ads/cti;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/csx;->b()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 58
    sget-object v2, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    sget-object v2, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/csx;)Lcom/google/android/gms/internal/ads/cti$a;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lcom/google/android/gms/internal/ads/cti;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cti;->b(Lcom/google/android/gms/internal/ads/csx;)Lcom/google/android/gms/internal/ads/cti$b;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/cti;->d:Ljava/util/concurrent/ConcurrentMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v1

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/google/android/gms/internal/ads/cth;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/cth",
            "<TP;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    const-class v2, Lcom/google/android/gms/internal/ads/cti;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrapper must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 96
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/cth;->a()Ljava/lang/Class;

    move-result-object v3

    .line 97
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 99
    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cth;

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    sget-object v4, Lcom/google/android/gms/internal/ads/cti;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v6, "com.google.crypto.tink.Registry"

    const-string/jumbo v7, "registerPrimitiveWrapper"

    const-string/jumbo v8, "Attempted overwrite of a registered SetWrapper for type "

    .line 102
    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    :goto_0
    invoke-virtual {v4, v5, v6, v7, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v4, "SetWrapper for primitive (%s) is already registered to be %s, cannot be re-registered with %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 105
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    .line 108
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3, p0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/android/gms/internal/ads/ctj;Lcom/google/android/gms/internal/ads/csx;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/ads/deg;",
            "PublicKeyProtoT::",
            "Lcom/google/android/gms/internal/ads/deg;",
            ">(",
            "Lcom/google/android/gms/internal/ads/ctj",
            "<TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/ads/csx",
            "<TPublicKeyProtoT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 63
    const-class v1, Lcom/google/android/gms/internal/ads/cti;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/csx;->b()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csx;->b()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "Private and public key type must be different."

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 69
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 71
    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cti$a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->d()Ljava/lang/Class;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    sget-object v4, Lcom/google/android/gms/internal/ads/cti;->a:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v6, "com.google.crypto.tink.Registry"

    const-string/jumbo v7, "registerAsymmetricKeyManagers"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x60

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v8, "Attempted overwrite of a registered key manager for key type "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " with inconsistent public key type "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v7, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "public key manager corresponding to %s is already registered with %s, cannot be re-registered with %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 79
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 81
    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cti$a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->d()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 82
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 86
    new-instance v4, Lcom/google/android/gms/internal/ads/cto;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/ads/cto;-><init>(Lcom/google/android/gms/internal/ads/ctj;Lcom/google/android/gms/internal/ads/csx;)V

    .line 87
    invoke-interface {v0, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cti;->b(Lcom/google/android/gms/internal/ads/csx;)Lcom/google/android/gms/internal/ads/cti$b;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->d:Ljava/util/concurrent/ConcurrentMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/csx;)Lcom/google/android/gms/internal/ads/cti$a;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->d:Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    const-class v2, Lcom/google/android/gms/internal/ads/cti;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    monitor-exit v2

    return-void

    .line 36
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cti$a;

    .line 37
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 38
    sget-object v3, Lcom/google/android/gms/internal/ads/cti;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v5, "com.google.crypto.tink.Registry"

    const-string/jumbo v6, "ensureKeyManagerInsertable"

    const-string/jumbo v7, "Attempted overwrite of a registered key manager for key type "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v4, v5, v6, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "typeUrl (%s) is already registered with %s, cannot be re-registered with %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    .line 40
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 41
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 38
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "New keys are already disallowed for key type "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cti$a;
    .locals 5

    .prologue
    .line 5
    const-class v1, Lcom/google/android/gms/internal/ads/cti;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "No key manager found for key type "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cti$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/ads/csx;)Lcom/google/android/gms/internal/ads/cti$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyProtoT::",
            "Lcom/google/android/gms/internal/ads/deg;",
            ">(",
            "Lcom/google/android/gms/internal/ads/csx",
            "<TKeyProtoT;>;)",
            "Lcom/google/android/gms/internal/ads/cti$b;"
        }
    .end annotation

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ctn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ctn;-><init>(Lcom/google/android/gms/internal/ads/csx;)V

    return-object v0
.end method

.method public static declared-synchronized b(Lcom/google/android/gms/internal/ads/cya;)Lcom/google/android/gms/internal/ads/deg;
    .locals 5

    .prologue
    .line 138
    const-class v1, Lcom/google/android/gms/internal/ads/cti;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cya;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/css;

    move-result-object v2

    .line 139
    sget-object v0, Lcom/google/android/gms/internal/ads/cti;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cya;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cya;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/css;->b(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 141
    :cond_0
    :try_start_1
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "newKey-operation not permitted for key type "

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cya;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 142
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/css;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/css",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cti;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cti$a;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cti$a;->a()Lcom/google/android/gms/internal/ads/css;

    move-result-object v0

    return-object v0
.end method
