.class final Lcom/google/android/gms/internal/ads/ctq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ctq;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cye;)Lcom/google/android/gms/internal/ads/cyf;
    .locals 5

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyf;->a()Lcom/google/android/gms/internal/ads/cyf$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cye;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cyf$a;->a(I)Lcom/google/android/gms/internal/ads/cyf$a;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cye;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cye$a;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/cyf$b;->a()Lcom/google/android/gms/internal/ads/cyf$b$a;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->b()Lcom/google/android/gms/internal/ads/cxu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cxu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/cyf$b$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/cyf$b$a;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->c()Lcom/google/android/gms/internal/ads/cxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/cyf$b$a;->a(Lcom/google/android/gms/internal/ads/cxy;)Lcom/google/android/gms/internal/ads/cyf$b$a;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->e()Lcom/google/android/gms/internal/ads/cyq;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/cyf$b$a;->a(Lcom/google/android/gms/internal/ads/cyq;)Lcom/google/android/gms/internal/ads/cyf$b$a;

    move-result-object v3

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/cyf$b$a;->a(I)Lcom/google/android/gms/internal/ads/cyf$b$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cyf$b;

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/cyf$a;->a(Lcom/google/android/gms/internal/ads/cyf$b;)Lcom/google/android/gms/internal/ads/cyf$a;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cyf;

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/cye;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cye;->a()I

    move-result v6

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cye;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v4

    move v5, v2

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cye$a;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->c()Lcom/google/android/gms/internal/ads/cxy;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/ads/cxy;->b:Lcom/google/android/gms/internal/ads/cxy;

    if-ne v8, v9, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->a()Z

    move-result v8

    if-nez v8, :cond_1

    .line 21
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "key %d has no key data"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->e()Lcom/google/android/gms/internal/ads/cyq;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/ads/cyq;->a:Lcom/google/android/gms/internal/ads/cyq;

    if-ne v8, v9, :cond_2

    .line 23
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "key %d has unknown prefix"

    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->c()Lcom/google/android/gms/internal/ads/cxy;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/ads/cxy;->a:Lcom/google/android/gms/internal/ads/cxy;

    if-ne v8, v9, :cond_3

    .line 26
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v3, "key %d has unknown status"

    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->d()I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 29
    if-eqz v5, :cond_4

    .line 30
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "keyset contains multiple primary keys"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v5, v4

    .line 32
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->b()Lcom/google/android/gms/internal/ads/cxu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxu;->c()Lcom/google/android/gms/internal/ads/cxu$b;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/internal/ads/cxu$b;->d:Lcom/google/android/gms/internal/ads/cxu$b;

    if-eq v0, v8, :cond_6

    move v3, v2

    .line 34
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 35
    goto/16 :goto_0

    .line 36
    :cond_7
    if-nez v1, :cond_8

    .line 37
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "keyset must contain at least one ENABLED key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_8
    if-nez v5, :cond_9

    if-nez v3, :cond_9

    .line 39
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "keyset doesn\'t contain a valid primary key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_9
    return-void
.end method
