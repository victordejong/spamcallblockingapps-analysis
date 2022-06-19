.class public final Lcom/google/android/gms/internal/ads/zzdkh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbqv<",
        "+",
        "Lcom/google/android/gms/internal/ads/zzbnt;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

.field private final zzhhp:Lcom/google/android/gms/internal/ads/zzdkm;

.field private zzhhq:Lcom/google/android/gms/internal/ads/zzdkl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpc;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkp;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpc;",
            "Lcom/google/android/gms/internal/ads/zzdkm;",
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhp:Lcom/google/android/gms/internal/ads/zzdkm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkh;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdkh;Lcom/google/android/gms/internal/ads/zzdkl;)Lcom/google/android/gms/internal/ads/zzdkl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhq:Lcom/google/android/gms/internal/ads/zzdkl;

    return-object p1
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdkh;)Lcom/google/android/gms/internal/ads/zzdpl;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkh;->zzaut()Lcom/google/android/gms/internal/ads/zzdpl;

    move-result-object p0

    return-object p0
.end method

.method private final zzaut()Lcom/google/android/gms/internal/ads/zzdpl;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhp:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkp;->zzc(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqv;->zzahg()Lcom/google/android/gms/internal/ads/zzdnp;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhla:Lcom/google/android/gms/internal/ads/zzvx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdpc;->zza(Lcom/google/android/gms/internal/ads/zzvl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzdpl;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdkh;)Lcom/google/android/gms/internal/ads/zzdkl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhq:Lcom/google/android/gms/internal/ads/zzdkl;

    return-object p0
.end method


# virtual methods
.method public final zzaus()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdkl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhq:Lcom/google/android/gms/internal/ads/zzdkl;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadm;->zzdef:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkh;->zzaut()Lcom/google/android/gms/internal/ads/zzdpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdkl;-><init>(Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdpl;Lcom/google/android/gms/internal/ads/zzdkj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhq:Lcom/google/android/gms/internal/ads/zzdkl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhe:Lcom/google/android/gms/internal/ads/zzdkp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhp:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkp;->zzc(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdpc;->zzavw()Lcom/google/android/gms/internal/ads/zzdpf;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdpf;->zzhnq:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdjx;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqy;->zza(Lcom/google/android/gms/internal/ads/zzdjx;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqv;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdpc;->zzavw()Lcom/google/android/gms/internal/ads/zzdpf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbou;->zza(Lcom/google/android/gms/internal/ads/zzdpf;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdki;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdki;-><init>(Lcom/google/android/gms/internal/ads/zzdkh;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkh;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/ads/zzcoc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdkj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Lcom/google/android/gms/internal/ads/zzdkh;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdkh;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdkg;->zzeaj:Lcom/google/android/gms/internal/ads/zzdvz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkh;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzk;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    return-object v0
.end method
