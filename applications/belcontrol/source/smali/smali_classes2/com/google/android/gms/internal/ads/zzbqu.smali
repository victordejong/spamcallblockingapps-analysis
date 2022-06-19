.class public final Lcom/google/android/gms/internal/ads/zzbqu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final zzboz:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzdue:Landroid/content/pm/PackageInfo;

.field private final zzduo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdxj:Ljava/lang/String;

.field private final zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

.field private final zzfyn:Landroid/content/pm/ApplicationInfo;

.field private final zzfyo:Lcom/google/android/gms/internal/ads/zzepv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzfyp:Lcom/google/android/gms/internal/ads/zzdfl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdfl<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrj;Lcom/google/android/gms/internal/ads/zzazn;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzepv;Lcom/google/android/gms/ads/internal/util/zzf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdfl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdrj;",
            "Lcom/google/android/gms/internal/ads/zzazn;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Lcom/google/android/gms/internal/ads/zzepv<",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/gms/ads/internal/util/zzf;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzdfl<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfyn:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbqu;->packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzduo:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzdue:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfyo:Lcom/google/android/gms/internal/ads/zzepv;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzdxj:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfyp:Lcom/google/android/gms/internal/ads/zzdfl;

    return-void
.end method


# virtual methods
.method public final zzali()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqh:Lcom/google/android/gms/internal/ads/zzdrk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfyp:Lcom/google/android/gms/internal/ads/zzdfl;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdfl;->zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqz;->zze(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object v0

    return-object v0
.end method

.method public final zzalj()Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdzw<",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbqu;->zzali()Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfwz:Lcom/google/android/gms/internal/ads/zzdrj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrk;->zzhqi:Lcom/google/android/gms/internal/ads/zzdrk;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzdzw;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfyo:Lcom/google/android/gms/internal/ads/zzepv;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdzw;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdqv;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqt;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbqt;-><init>(Lcom/google/android/gms/internal/ads/zzbqu;Lcom/google/android/gms/internal/ads/zzdzw;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqx;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzaxj()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzatq;
    .locals 12

    new-instance v11, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfyn:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbqu;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzduo:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzdue:Landroid/content/pm/PackageInfo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzfyo:Lcom/google/android/gms/internal/ads/zzepv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzepv;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbqu;->zzdxj:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzatq;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzazn;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdpf;Ljava/lang/String;)V

    return-object v11
.end method
