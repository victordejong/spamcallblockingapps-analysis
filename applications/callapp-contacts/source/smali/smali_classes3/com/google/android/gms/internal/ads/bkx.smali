.class public final Lcom/google/android/gms/internal/ads/bkx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/arp;
.implements Lcom/google/android/gms/internal/ads/atb;
.implements Lcom/google/android/gms/internal/ads/auf;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/blf;

.field private final b:Lcom/google/android/gms/internal/ads/bln;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/blf;Lcom/google/android/gms/internal/ads/bln;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bkx;->b:Lcom/google/android/gms/internal/ads/bln;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    .line 1036
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "action"

    const-string v2, "loaded"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkx;->b:Lcom/google/android/gms/internal/ads/bln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    .line 2036
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/blq;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cpk;)V
    .locals 4

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    .line 8007
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpi;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 8008
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpi;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cov;

    .line 8009
    iget v1, v1, Lcom/google/android/gms/internal/ads/cov;->b:I

    const-string v2, "ad_format"

    packed-switch v1, :pswitch_data_0

    .line 8025
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "unknown"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8020
    :pswitch_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "app_open_ad"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8021
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8022
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/blf;->b:Lcom/google/android/gms/internal/ads/yo;

    .line 8063
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/yo;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const-string v3, "as"

    .line 8023
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8018
    :pswitch_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "rewarded"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8016
    :pswitch_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "native_advanced"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8014
    :pswitch_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "native_express"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8012
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "interstitial"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8010
    :pswitch_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "banner"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8026
    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8027
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauj;->zzdys:Landroid/os/Bundle;

    const-string v1, "cnt"

    .line 7029
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7030
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7031
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "network_coarse"

    .line 7032
    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "gnt"

    .line 7033
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7034
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "network_fine"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    .line 3036
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "action"

    const-string v2, "ftl"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    .line 4036
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    .line 5036
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzcht:Ljava/lang/String;

    const-string v1, "ed"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bkx;->b:Lcom/google/android/gms/internal/ads/bln;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkx;->a:Lcom/google/android/gms/internal/ads/blf;

    .line 6036
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/blq;->a(Ljava/util/Map;)V

    return-void
.end method
