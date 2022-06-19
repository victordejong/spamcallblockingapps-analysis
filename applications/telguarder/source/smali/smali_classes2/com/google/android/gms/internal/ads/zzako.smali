.class public final Lcom/google/android/gms/internal/ads/zzako;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakl;
.implements Lcom/google/android/gms/internal/ads/zzakm;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/ads/internal/zzb;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzben;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzks()Lcom/google/android/gms/internal/ads/zzbej;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbft;->zzael()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztu;->zznf()Lcom/google/android/gms/internal/ads/zztu;

    move-result-object v11

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    .line 6
    invoke-static/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzbej;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqn()Lcom/google/android/gms/internal/ads/zzaza;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaza;->zzzx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdvl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->destroy()V

    return-void
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzakp;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaku;->zzb(Lcom/google/android/gms/internal/ads/zzakp;)Lcom/google/android/gms/internal/ads/zzbfp;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbfp;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakx;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzakx;-><init>(Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/internal/ads/zzaif;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Lcom/google/android/gms/internal/ads/zzakl;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zzb(Lcom/google/android/gms/internal/ads/zzakl;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzalx;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakv;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzakv;-><init>(Lcom/google/android/gms/internal/ads/zzaif;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Lcom/google/android/gms/internal/ads/zzakl;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzcv(Ljava/lang/String;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzakr;-><init>(Lcom/google/android/gms/internal/ads/zzako;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzako;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzcw(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    .line 15
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzakq;-><init>(Lcom/google/android/gms/internal/ads/zzako;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzako;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzcx(Ljava/lang/String;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaks;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaks;-><init>(Lcom/google/android/gms/internal/ads/zzako;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzako;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzcy(Ljava/lang/String;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzakt;-><init>(Lcom/google/android/gms/internal/ads/zzako;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzako;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzcz(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeb;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzda(Ljava/lang/String;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzdb(Ljava/lang/String;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzdc(Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzako;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzcv(Ljava/lang/String;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakk;->zza(Lcom/google/android/gms/internal/ads/zzakl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzuj()Lcom/google/android/gms/internal/ads/zzalw;
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzalz;-><init>(Lcom/google/android/gms/internal/ads/zzalx;)V

    return-object v0
.end method
