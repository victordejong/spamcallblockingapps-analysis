.class public Lcom/google/android/gms/internal/ads/zzbyz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzgbj:Lcom/google/android/gms/internal/ads/zzcag;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcag;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyz;-><init>(Lcom/google/android/gms/internal/ads/zzcag;Lcom/google/android/gms/internal/ads/zzbeb;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcag;Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzgbj:Lcom/google/android/gms/internal/ads/zzcag;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    return-void
.end method


# virtual methods
.method public final zzaje()Lcom/google/android/gms/internal/ads/zzbeb;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    return-object v0
.end method

.method public final zzamt()Lcom/google/android/gms/internal/ads/zzcag;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzgbj:Lcom/google/android/gms/internal/ads/zzcag;

    return-object v0
.end method

.method public final zzamu()Landroid/view/View;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzamv()Landroid/view/View;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbya;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbvn;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyz;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbya;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbzb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbzb;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbya;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzbql;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbql;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbrm;",
            ">;>;"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbya;->zzb(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbya;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzbql;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbql;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbya<",
            "Lcom/google/android/gms/internal/ads/zzbxp;",
            ">;>;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbya;->zzb(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbya;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
