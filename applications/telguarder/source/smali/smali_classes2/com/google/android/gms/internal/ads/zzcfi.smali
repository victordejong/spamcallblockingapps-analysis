.class public final Lcom/google/android/gms/internal/ads/zzcfi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzggk:Lcom/google/android/gms/internal/ads/zzchq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnp;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfsj:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzggk:Lcom/google/android/gms/internal/ads/zzchq;

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzbeb;)V
    .locals 8

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhn:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/video"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdho:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/videoMeta"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbdm;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhr:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/delayPageLoaded"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhp:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/instrument"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhi:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhj:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v1, "/videoClicked"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzbc(Z)V

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhe:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v2, "/click"

    invoke-interface {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcsz:Lcom/google/android/gms/internal/ads/zzaba;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzahm;->zzdhu:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v2, "/getNativeAdViewSignals"

    invoke-interface {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzdvt:Lcom/google/android/gms/internal/ads/zzajt;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzbd(Z)V

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaij;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzaij;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;)V

    const-string v1, "/open"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzbd(Z)V

    .line 33
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlp()Lcom/google/android/gms/internal/ads/zzaxc;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxc;->zzy(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaih;

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Landroid/content/Context;)V

    const-string v1, "/logScionEvent"

    .line 36
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    :cond_2
    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzggk:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvs;->zzqe()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p3, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzchq;->zza(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object p3

    .line 53
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzazx;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzazx;

    move-result-object v0

    .line 54
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzcfi;->zzh(Lcom/google/android/gms/internal/ads/zzbeb;)V

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnp;->zzdvt:Lcom/google/android/gms/internal/ads/zzajt;

    if-eqz v2, :cond_0

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbft;->zzaen()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/internal/ads/zzbft;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbft;->zzaem()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/internal/ads/zzbft;)V

    .line 59
    :goto_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfl;

    invoke-direct {v3, p0, p3, v0}, Lcom/google/android/gms/internal/ads/zzcfl;-><init>(Lcom/google/android/gms/internal/ads/zzcfi;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzazx;)V

    .line 60
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbfq;)V

    .line 61
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final synthetic zza(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbeb;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazx;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzazx;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnp;->zzdvt:Lcom/google/android/gms/internal/ads/zzajt;

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbft;->zzaen()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/internal/ads/zzbft;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbft;->zzaem()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/internal/ads/zzbft;)V

    .line 74
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcfo;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Lcom/google/android/gms/internal/ads/zzcfi;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzazx;)V

    .line 75
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbfq;)V

    const-string v1, "google.afma.nativeAds.renderVideo"

    .line 76
    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzazx;Z)V
    .locals 1

    if-eqz p3, :cond_1

    .line 64
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkv:Lcom/google/android/gms/internal/ads/zzaau;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabc()Lcom/google/android/gms/internal/ads/zzbev;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabc()Lcom/google/android/gms/internal/ads/zzbev;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkv:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbev;->zzb(Lcom/google/android/gms/internal/ads/zzaau;)V

    .line 66
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzazx;->zzaac()V

    return-void

    .line 67
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcva;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    const-string v0, "Instream video Web View failed to load."

    invoke-direct {p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzcva;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzazx;Z)V
    .locals 0

    .line 78
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkv:Lcom/google/android/gms/internal/ads/zzaau;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabc()Lcom/google/android/gms/internal/ads/zzbev;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabc()Lcom/google/android/gms/internal/ads/zzbev;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkv:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbev;->zzb(Lcom/google/android/gms/internal/ads/zzaau;)V

    .line 80
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzazx;->zzaac()V

    return-void
.end method

.method public final zzn(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcfj;-><init>(Lcom/google/android/gms/internal/ads/zzcfi;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfsj:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcfh;-><init>(Lcom/google/android/gms/internal/ads/zzcfi;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfsj:Ljava/util/concurrent/Executor;

    .line 12
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;-><init>(Lcom/google/android/gms/internal/ads/zzcfi;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzfsj:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzq(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfi;->zzggk:Lcom/google/android/gms/internal/ads/zzchq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvs;->zzqe()Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzchq;->zza(Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazx;->zzk(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzazx;

    move-result-object v0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfi;->zzh(Lcom/google/android/gms/internal/ads/zzbeb;)V

    .line 44
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcfm;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfm;-><init>(Lcom/google/android/gms/internal/ads/zzazx;)V

    .line 45
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbfp;)V

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcsy:Lcom/google/android/gms/internal/ads/zzaba;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method
