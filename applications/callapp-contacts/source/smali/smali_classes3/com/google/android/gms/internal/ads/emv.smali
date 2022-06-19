.class public final Lcom/google/android/gms/internal/ads/emv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/ads/AdListener;

.field public b:Lcom/google/android/gms/internal/ads/ekw;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/ads/reward/AdMetadataListener;

.field public e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field public f:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field public g:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

.field public h:Z

.field public i:Lcom/google/android/gms/ads/OnPaidEventListener;

.field private final j:Lcom/google/android/gms/internal/ads/mj;

.field private final k:Landroid/content/Context;

.field private final l:Lcom/google/android/gms/internal/ads/ejb;

.field private m:Lcom/google/android/gms/internal/ads/eir;

.field private n:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/emv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ejb;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/emv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ejb;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ejb;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p3, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/emv;->j:Lcom/google/android/gms/internal/ads/mj;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emv;->k:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/emv;->l:Lcom/google/android/gms/internal/ads/ejb;

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is called."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    .line 59
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emv;->a:Lcom/google/android/gms/ads/AdListener;

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 61
    new-instance v1, Lcom/google/android/gms/internal/ads/eiu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/eiu;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/eki;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 64
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eir;)V
    .locals 2

    .line 66
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emv;->m:Lcom/google/android/gms/internal/ads/eir;

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 69
    new-instance v1, Lcom/google/android/gms/internal/ads/eis;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/eis;-><init>(Lcom/google/android/gms/internal/ads/eir;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 70
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ekc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 73
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emr;)V
    .locals 5

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-nez v0, :cond_8

    const-string v0, "loadAd"

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emv;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/emv;->b(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/emv;->h:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzql()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvt;-><init>()V

    .line 36
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emv;->k:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/emv;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/emv;->j:Lcom/google/android/gms/internal/ads/mj;

    .line 37
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/ejj;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/ekw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emv;->a:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_2

    .line 39
    new-instance v1, Lcom/google/android/gms/internal/ads/eiu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emv;->a:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/eiu;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/eki;)V

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->m:Lcom/google/android/gms/internal/ads/eir;

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v1, Lcom/google/android/gms/internal/ads/eis;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emv;->m:Lcom/google/android/gms/internal/ads/eir;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/eis;-><init>(Lcom/google/android/gms/internal/ads/eir;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ekc;)V

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->d:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v1, Lcom/google/android/gms/internal/ads/eiy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emv;->d:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/eiy;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ekz;)V

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_5

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v1, Lcom/google/android/gms/internal/ads/ejg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emv;->e:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ejg;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/ele;)V

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->f:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_6

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v1, Lcom/google/android/gms/internal/ads/bs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emv;->f:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/bs;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/bn;)V

    .line 48
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->g:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v1, Lcom/google/android/gms/internal/ads/uc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emv;->g:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/uc;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/tz;)V

    .line 50
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v1, Lcom/google/android/gms/internal/ads/s;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/emv;->i:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/s;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/emd;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ekw;->setImmersiveMode(Z)V

    .line 53
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emv;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ejb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->j:Lcom/google/android/gms/internal/ads/mj;

    .line 1049
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/emr;->h:Ljava/util/Map;

    .line 2013
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/mj;->a:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 57
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emv;->c:Ljava/lang/String;

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    .line 144
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->n:Ljava/lang/Boolean;

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ekw;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 149
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-nez v1, :cond_0

    return v0

    .line 20
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ekw;->isReady()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 22
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-nez v1, :cond_0

    return v0

    .line 26
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ekw;->isLoading()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 28
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 2

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 92
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->zzkl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 129
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    if-eqz v1, :cond_0

    .line 133
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ekw;->zzkm()Lcom/google/android/gms/internal/ads/emj;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 136
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/emj;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    .line 138
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/emv;->b(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emv;->b:Lcom/google/android/gms/internal/ads/ekw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ekw;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 142
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
