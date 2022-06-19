.class public final Lcom/google/android/gms/internal/ads/zzdek;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Lcom/google/android/gms/internal/ads/zzdel;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfri:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

.field private final zzgwe:Lcom/google/android/gms/internal/ads/zzcxh;

.field private zzgzy:Ljava/lang/String;

.field private final zzhco:Lcom/google/android/gms/internal/ads/zzcxj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdzv;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcxj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzcxh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzgzy:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzhco:Lcom/google/android/gms/internal/ads/zzcxj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdek;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzgwe:Lcom/google/android/gms/internal/ads/zzcxh;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzgwe:Lcom/google/android/gms/internal/ads/zzcxh;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzgn(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzgwe:Lcom/google/android/gms/internal/ads/zzcxh;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxh;->zzgo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzapk;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcxp;

    invoke-direct {v8, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcxp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapk;Lcom/google/android/gms/internal/ads/zzbaa;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdek;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzgzy:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzbpo:Lcom/google/android/gms/internal/ads/zzvs;

    move-object v5, p3

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzapp;)V

    return-object v0
.end method

.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcqz:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzden;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzden;-><init>(Lcom/google/android/gms/internal/ads/zzdek;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdyv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzatl()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzhco:Lcom/google/android/gms/internal/ads/zzcxj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzgzy:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcxj;->zzt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzvl;->zzchu:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdem;

    invoke-direct {v5, p0, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdem;-><init>(Lcom/google/android/gms/internal/ads/zzdek;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdyv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabp;->zzcqy:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzfri:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v2

    const-class v4, Ljava/lang/Throwable;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdep;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzdep;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdzp;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdeo;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdeo;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdek;->zzghl:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdzp;->zzb(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
