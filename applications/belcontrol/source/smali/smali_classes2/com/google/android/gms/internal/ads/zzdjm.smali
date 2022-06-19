.class public final Lcom/google/android/gms/internal/ads/zzdjm;
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
        "Lcom/google/android/gms/internal/ads/zzdpm<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private zzhgq:Lcom/google/android/gms/internal/ads/zzbqv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdzy;->zzbaf()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzdkp;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdko;",
            "Lcom/google/android/gms/internal/ads/zzdkp<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzdpm<",
            "TAdT;>;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdkp;->zzc(Lcom/google/android/gms/internal/ads/zzdkm;)Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkv;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkv;-><init>(Z)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbqy;->zza(Lcom/google/android/gms/internal/ads/zzdkv;)Lcom/google/android/gms/internal/ads/zzbqy;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbqy;->zzagm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzhgq:Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbqv;->zzagj()Lcom/google/android/gms/internal/ads/zzbou;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdpm;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdko;->zzhhs:Lcom/google/android/gms/internal/ads/zzatq;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zza(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbou;->zzala()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzf;->zzg(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjp;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdjp;-><init>(Lcom/google/android/gms/internal/ads/zzdjm;Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzbou;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjm;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzdzf;->zzb(Lcom/google/android/gms/internal/ads/zzdyu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzdjo;-><init>(Lcom/google/android/gms/internal/ads/zzdpm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdzf;->zza(Lcom/google/android/gms/internal/ads/zzdvz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzf;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzaun()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjm;->zzhgq:Lcom/google/android/gms/internal/ads/zzbqv;

    return-object v0
.end method
