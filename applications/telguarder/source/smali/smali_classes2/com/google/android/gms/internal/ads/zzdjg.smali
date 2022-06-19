.class final Lcom/google/android/gms/internal/ads/zzdjg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdzl<",
        "Lcom/google/android/gms/internal/ads/zzblv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

.field private final synthetic zzhgk:Lcom/google/android/gms/internal/ads/zzbmr;

.field final synthetic zzhgl:Lcom/google/android/gms/internal/ads/zzdje;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzcze;Lcom/google/android/gms/internal/ads/zzbmr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgk:Lcom/google/android/gms/internal/ads/zzbmr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzblv;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdje;->zza(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzw;

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdje;->zza(Lcom/google/android/gms/internal/ads/zzdje;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblv;->zzajr()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblv;->zzajr()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 20
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakr()Lcom/google/android/gms/internal/ads/zzbrh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbrh;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    .line 24
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Banner view provided from "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a parent view. Removing its old parent."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 25
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblv;->zzajr()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzczs:Lcom/google/android/gms/internal/ads/zzaba;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakt()Lcom/google/android/gms/internal/ads/zzbve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdje;->zzc(Lcom/google/android/gms/internal/ads/zzdje;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbve;->zza(Lcom/google/android/gms/internal/ads/zzcxy;)Lcom/google/android/gms/internal/ads/zzbve;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdje;->zzb(Lcom/google/android/gms/internal/ads/zzdje;)Lcom/google/android/gms/internal/ads/zzcys;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbve;->zza(Lcom/google/android/gms/internal/ads/zzcys;)Lcom/google/android/gms/internal/ads/zzbve;

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdje;->zza(Lcom/google/android/gms/internal/ads/zzdje;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblv;->zzajr()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcze;->onSuccess(Ljava/lang/Object;)V

    .line 34
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzczs:Lcom/google/android/gms/internal/ads/zzaba;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdje;->zzd(Lcom/google/android/gms/internal/ads/zzdje;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdje;->zzc(Lcom/google/android/gms/internal/ads/zzdje;)Lcom/google/android/gms/internal/ads/zzcxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdjj;->zzb(Lcom/google/android/gms/internal/ads/zzcxy;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdje;->zze(Lcom/google/android/gms/internal/ads/zzdje;)Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblv;->zzaka()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbts;->zzdx(I)V

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgk:Lcom/google/android/gms/internal/ads/zzbmr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmr;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdje;->zza(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzw;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgk:Lcom/google/android/gms/internal/ads/zzbmr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbmr;->zzagk()Lcom/google/android/gms/internal/ads/zzbrp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbrp;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)V

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabp;->zzczs:Lcom/google/android/gms/internal/ads/zzaba;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdje;->zzd(Lcom/google/android/gms/internal/ads/zzdje;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdji;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzdji;-><init>(Lcom/google/android/gms/internal/ads/zzdjg;Lcom/google/android/gms/internal/ads/zzvg;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzhgl:Lcom/google/android/gms/internal/ads/zzdje;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdje;->zze(Lcom/google/android/gms/internal/ads/zzdje;)Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbts;->zzdx(I)V

    .line 11
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    const-string v2, "BannerAdLoader.onFailure"

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdod;->zza(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjg;->zzgzg:Lcom/google/android/gms/internal/ads/zzcze;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcze;->zzasi()V

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
