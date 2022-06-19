.class public final Lcom/google/android/gms/internal/ads/bhg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bho;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bho;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 21
    const-string/jumbo v0, "cnt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "network_coarse"

    const-string/jumbo v2, "cnt"

    .line 23
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    const-string/jumbo v0, "gnt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "network_fine"

    const-string/jumbo v2, "gnt"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;)V
    .locals 3

    .prologue
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cha;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cha;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cgr;

    .line 6
    iget v0, v0, Lcom/google/android/gms/internal/ads/cgr;->b:I

    packed-switch v0, :pswitch_data_0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ad_format"

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgs;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "gqi"

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_1
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ad_format"

    const-string/jumbo v2, "banner"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ad_format"

    const-string/jumbo v2, "interstitial"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ad_format"

    const-string/jumbo v2, "native_express"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ad_format"

    const-string/jumbo v2, "native_advanced"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhg;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ad_format"

    const-string/jumbo v2, "rewarded"

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
