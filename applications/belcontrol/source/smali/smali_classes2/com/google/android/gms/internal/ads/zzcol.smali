.class public final Lcom/google/android/gms/internal/ads/zzcol;
.super Lcom/google/android/gms/internal/ads/zzatg;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfsj:Ljava/util/concurrent/Executor;

.field private final zzgpl:Lcom/google/android/gms/internal/ads/zzauh;

.field private final zzgpm:Lcom/google/android/gms/internal/ads/zzaue;

.field private final zzgpn:Lcom/google/android/gms/internal/ads/zzbjd;

.field private final zzgpo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcpa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzbjd;Lcom/google/android/gms/internal/ads/zzaue;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzauh;",
            "Lcom/google/android/gms/internal/ads/zzbjd;",
            "Lcom/google/android/gms/internal/ads/zzaue;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcpa;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatg;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabp;->initialize(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcol;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzfsj:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpl:Lcom/google/android/gms/internal/ads/zzauh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpm:Lcom/google/android/gms/internal/ads/zzaue;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpn:Lcom/google/android/gms/internal/ads/zzbjd;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpo:Ljava/util/HashMap;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdrj;Lcom/google/android/gms/internal/ads/zzdga;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            "Lcom/google/android/gms/internal/ads/zzdrj;",
            "Lcom/google/android/gms/internal/ads/zzdga;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcop;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(Lcom/google/android/gms/internal/ads/zzdga;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzcos;->zzgnx:Lcom/google/android/gms/internal/ads/zzdqu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrk;->zzhql:Lcom/google/android/gms/internal/ads/zzdrk;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatq;->zzdxi:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrb;->zza(Lcom/google/android/gms/internal/ads/zzdyu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzb(Lcom/google/android/gms/internal/ads/zzdqu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdrj;Lcom/google/android/gms/internal/ads/zzamj;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdrj;",
            "Lcom/google/android/gms/internal/ads/zzamj;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzatw;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzame;->zzdks:Lcom/google/android/gms/internal/ads/zzamf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcor;->zzdku:Lcom/google/android/gms/internal/ads/zzamd;

    const-string v2, "AFMA_getAdDictionary"

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzamj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqn:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdrb;->zza(Lcom/google/android/gms/internal/ads/zzdyu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzatk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzatk;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcov;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcov;-><init>(Lcom/google/android/gms/internal/ads/zzcol;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcox;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzcox;-><init>(Lcom/google/android/gms/internal/ads/zzcol;Lcom/google/android/gms/internal/ads/zzatk;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzazp;->zzeih:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzatb;)Lcom/google/android/gms/internal/ads/zzatd;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)Ljava/io/InputStream;
    .locals 3

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzatw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatw;->zzwr()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpo:Ljava/util/HashMap;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpa;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatw;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcpa;-><init>(Lcom/google/android/gms/internal/ads/zzatw;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdvx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatb;Lcom/google/android/gms/internal/ads/zzati;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzatk;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcol;->zzb(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzatk;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcou;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcou;-><init>(Lcom/google/android/gms/internal/ads/zzcol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzfsj:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdzw;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzatk;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcol;->zzgj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzatk;)V

    return-void
.end method

.method public final synthetic zzarq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpm:Lcom/google/android/gms/internal/ads/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaue;->zzwt()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    const-string v1, "persistFlags"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazw;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzle()Lcom/google/android/gms/internal/ads/zzama;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcol;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazn;->zzaab()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzama;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpn:Lcom/google/android/gms/internal/ads/zzbjd;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjd;->zza(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcoz;->zzgpw:Lcom/google/android/gms/internal/ads/zzamc;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzame;->zzdkt:Lcom/google/android/gms/internal/ads/zzamd;

    const-string v4, "google.afma.response.normalize"

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzamj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object v2

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcpe;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcol;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdtx:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpl:Lcom/google/android/gms/internal/ads/zzauh;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdux:Ljava/lang/String;

    move-object v3, v9

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcpe;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdga;->zzahc()Lcom/google/android/gms/internal/ads/zzdrj;

    move-result-object p2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzadm;->zzdef:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxl:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Request contained a PoolKey but split request is disabled."

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxl:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpo:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcpa;

    if-nez v4, :cond_1

    const-string v3, "Request contained a PoolKey but no matching parameters were found."

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_2

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdrj;Lcom/google/android/gms/internal/ads/zzdga;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdrj;Lcom/google/android/gms/internal/ads/zzamj;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqo:Lcom/google/android/gms/internal/ads/zzdrk;

    new-array v4, v6, [Lcom/google/android/gms/internal/ads/zzdzw;

    aput-object v0, v4, v5

    aput-object p1, v4, v3

    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcoo;

    invoke-direct {v4, p1, v0}, Lcom/google/android/gms/internal/ads/zzcoo;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdqx;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzdrb;->zzb(Lcom/google/android/gms/internal/ads/zzdqu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqp:Lcom/google/android/gms/internal/ads/zzdrk;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzdzw;

    aput-object p1, v7, v5

    aput-object v0, v7, v3

    aput-object v1, v7, v6

    invoke-virtual {p2, v4, v7}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcon;

    invoke-direct {v3, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcon;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzdqx;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    :goto_2
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdrb;->zza(Lcom/google/android/gms/internal/ads/zzdyu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcpd;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzcpa;->zzgpu:Lorg/json/JSONObject;

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzcpa;->zzgpv:Lcom/google/android/gms/internal/ads/zzatw;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcpd;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzatw;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqo:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzdrb;->zzb(Lcom/google/android/gms/internal/ads/zzdqu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqp:Lcom/google/android/gms/internal/ads/zzdrk;

    new-array v4, v6, [Lcom/google/android/gms/internal/ads/zzdzw;

    aput-object p1, v4, v5

    aput-object v0, v4, v3

    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcoq;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcoq;-><init>(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzdqx;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    goto :goto_2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzatk;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcol;->zzd(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzatk;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzadm;->zzdef:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxk:Lcom/google/android/gms/internal/ads/zzdpf;

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzdpf;->zzhnn:I

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdpf;->zzhno:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzle()Lcom/google/android/gms/internal/ads/zzama;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcol;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazn;->zzaab()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzama;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpn:Lcom/google/android/gms/internal/ads/zzbjd;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjd;->zza(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdga;->zzahc()Lcom/google/android/gms/internal/ads/zzdrj;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdrj;Lcom/google/android/gms/internal/ads/zzdga;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdrj;Lcom/google/android/gms/internal/ads/zzamj;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrk;->zzhrd:Lcom/google/android/gms/internal/ads/zzdrk;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzdzw;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcot;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcot;-><init>(Lcom/google/android/gms/internal/ads/zzcol;Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqx;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzatk;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcol;->zzc(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcol;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzatk;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzle()Lcom/google/android/gms/internal/ads/zzama;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcol;->context:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazn;->zzaab()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzama;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzads;->zzdex:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpn:Lcom/google/android/gms/internal/ads/zzbjd;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjd;->zza(Lcom/google/android/gms/internal/ads/zzatq;I)Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdga;->zzahb()Lcom/google/android/gms/internal/ads/zzdfl;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzame;->zzdks:Lcom/google/android/gms/internal/ads/zzamf;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzame;->zzdkt:Lcom/google/android/gms/internal/ads/zzamd;

    const-string v4, "google.afma.request.getSignals"

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzamj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamc;Lcom/google/android/gms/internal/ads/zzamd;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdga;->zzahc()Lcom/google/android/gms/internal/ads/zzdrj;

    move-result-object p2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqq:Lcom/google/android/gms/internal/ads/zzdrk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatq;->zzdxi:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcow;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzcow;-><init>(Lcom/google/android/gms/internal/ads/zzdfl;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdrb;->zza(Lcom/google/android/gms/internal/ads/zzdyu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqr:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdrb;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrb;->zza(Lcom/google/android/gms/internal/ads/zzdyu;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p1

    return-object p1
.end method

.method public final zzgj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzadm;->zzdef:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcoy;-><init>(Lcom/google/android/gms/internal/ads/zzcol;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzgpo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcpa;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL to be removed not found for cache key: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
