.class public final Lcom/google/android/gms/internal/ads/zzcpf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrq;
.implements Lcom/google/android/gms/internal/ads/zzbse;
.implements Lcom/google/android/gms/internal/ads/zzbvq;
.implements Lcom/google/android/gms/internal/ads/zzvc;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

.field private final zzdun:Ljava/lang/String;

.field private final zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzglj:Lcom/google/android/gms/internal/ads/zzdoc;

.field private zzglk:Ljava/lang/Boolean;

.field private final zzgll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdoc;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzglj:Lcom/google/android/gms/internal/ads/zzdoc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcyz:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgll:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdun:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdsa;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzc(Lcom/google/android/gms/internal/ads/zzdsa;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcrc;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdnb;->zzbvs:Ljava/lang/String;

    sget v6, Lcom/google/android/gms/internal/ads/zzcqs;->zzgru:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcrc;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdie:Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqr;->zza(Lcom/google/android/gms/internal/ads/zzcrc;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method private final zzaqo()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzglk:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzglk:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcrc:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpf;->zze(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzglk:Ljava/lang/Boolean;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzglk:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static zze(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p1

    const-string v1, "CsiActionsListener.isPatternMatched"

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private final zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzgx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzayy;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzf(Lcom/google/android/gms/internal/ads/zzdmw;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdun:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjh:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjz:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzba(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "online"

    goto :goto_0

    :cond_1
    const-string v0, "offline"

    :goto_0
    const-string v1, "device_connectivity"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_timestamp"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    const-string v0, "offline_ad"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjz:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcpf;->zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcpf;->zza(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpf;->zzaqo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzfrj:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjz:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcpf;->zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcpf;->zza(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgll:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcpf;->zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method public final zzale()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpf;->zzaqo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    const-string v1, "adapter_impression"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcpf;->zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method public final zzalg()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpf;->zzaqo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    const-string v1, "adapter_shown"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcpf;->zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method public final zzalp()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgll:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    const-string v1, "ifts"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcpf;->zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "blocked"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzgll:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Lcom/google/android/gms/internal/ads/zzvg;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvg;->zzchh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Lcom/google/android/gms/internal/ads/zzvg;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchg:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzglj:Lcom/google/android/gms/internal/ads/zzdoc;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzdoc;->zzgt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ifts"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzcpf;->zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "adapter"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v1

    if-ltz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "arec"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "areec"

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpf;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void
.end method
