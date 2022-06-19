.class public final Lcom/google/android/gms/internal/ads/zzdjw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbqv<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzbnt;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdkn<",
        "TR;",
        "Lcom/google/android/gms/internal/ads/zzdka<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

.field private zzhhj:Lcom/google/android/gms/internal/ads/zzdzl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdzl<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpc;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdkb;-><init>(Lcom/google/android/gms/internal/ads/zzdjw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zzhhj:Lcom/google/android/gms/internal/ads/zzdzl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjw;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdko;",
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdka<",
            "TAdT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdjw;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzdkh;-><init>(Lcom/google/android/gms/internal/ads/zzdpc;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzdkp;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkh;->zzaus()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjz;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdjz;-><init>(Lcom/google/android/gms/internal/ads/zzdjw;Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjw;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzf;->zzb(Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    const-class p2, Ljava/lang/Exception;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdjy;-><init>(Lcom/google/android/gms/internal/ads/zzdjw;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjw;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;Lcom/google/android/gms/internal/ads/zzdkl;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzdkl;->zzhhg:Lcom/google/android/gms/internal/ads/zzdpl;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzdkl;->zzgoq:Lcom/google/android/gms/internal/ads/zzatq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zzhhi:Lcom/google/android/gms/internal/ads/zzdpc;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzdpc;->zza(Lcom/google/android/gms/internal/ads/zzdpl;)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkp;->zzc(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqv;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbou;->zzc(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjw;->zzhhj:Lcom/google/android/gms/internal/ads/zzdzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjw;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdka;

    invoke-direct {p1, v0, p3, v2}, Lcom/google/android/gms/internal/ads/zzdka;-><init>(Lcom/google/android/gms/internal/ads/zzdpl;Lcom/google/android/gms/internal/ads/zzatq;Lcom/google/android/gms/internal/ads/zzdpm;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzaun()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
