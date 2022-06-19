.class public final Lcom/google/android/gms/internal/ads/bvq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bvo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/crs;

.field private final c:Lcom/google/android/gms/internal/ads/bfg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/bfg;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvq;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvq;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bvq;->c:Lcom/google/android/gms/internal/ads/bfg;

    .line 5
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/chs;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/chs;->n()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    const-string/jumbo v1, "sdk_version"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/chs;->n()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/nb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/chs;->m()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    const-string/jumbo v1, "adapter_version"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/chs;->m()Lcom/google/android/gms/internal/ads/nb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/nb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_1 .. :try_end_1} :catch_0

    .line 23
    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bvo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvq;->a:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8
    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aG:Lcom/google/android/gms/internal/ads/ect;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cos;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bvo;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bvo;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/bvs;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvq;->b:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bvu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bvu;-><init>(Lcom/google/android/gms/internal/ads/bvq;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/bvo;
    .locals 5

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aG:Lcom/google/android/gms/internal/ads/ect;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bvq;->c:Lcom/google/android/gms/internal/ads/bfg;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 31
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/ads/bfg;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/chs;

    move-result-object v3

    .line 33
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/bvq;->a(Lcom/google/android/gms/internal/ads/chs;)Landroid/os/Bundle;

    move-result-object v3

    .line 34
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bvo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bvo;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/bvs;)V

    return-object v0
.end method
