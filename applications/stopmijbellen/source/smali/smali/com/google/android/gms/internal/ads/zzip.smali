.class public final Lcom/google/android/gms/internal/ads/zzip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdz;

.field private zzc:Lcom/google/android/gms/internal/ads/zzsv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzqk;

.field private zze:Lcom/google/android/gms/internal/ads/zzhs;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzte;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzlb;

.field private final zzh:Landroid/os/Looper;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzg;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzio;

.field private zzk:Z

.field private final zzl:Lcom/google/android/gms/internal/ads/zzcoa;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzgb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcoa;[B)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzwl;-><init>()V

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzsp;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzsp;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzww;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgc;-><init>()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zztn;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztn;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzlb;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzdz;->zza:Lcom/google/android/gms/internal/ads/zzdz;

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzlb;-><init>(Lcom/google/android/gms/internal/ads/zzdz;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zza:Landroid/content/Context;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzl:Lcom/google/android/gms/internal/ads/zzcoa;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzip;->zzc:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzip;->zzd:Lcom/google/android/gms/internal/ads/zzqk;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzip;->zze:Lcom/google/android/gms/internal/ads/zzhs;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzip;->zzf:Lcom/google/android/gms/internal/ads/zzte;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzip;->zzg:Lcom/google/android/gms/internal/ads/zzlb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfn;->zzA()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzh:Landroid/os/Looper;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzg;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzi:Lcom/google/android/gms/internal/ads/zzg;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzio;->zze:Lcom/google/android/gms/internal/ads/zzio;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzj:Lcom/google/android/gms/internal/ads/zzio;

    const-wide/16 v1, 0x14

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v14

    const-wide/16 v1, 0x1f4

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide v16

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgb;

    const v9, 0x3f7851ec    # 0.97f

    const v10, 0x3f83d70a    # 1.03f

    const-wide/16 v11, 0x3e8

    const v13, 0x33d6bf95    # 1.0E-7f

    const v18, 0x3f7fbe77    # 0.999f

    const/16 v19, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzgb;-><init>(FFJFJJFLcom/google/android/gms/internal/ads/zzga;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzip;->zzm:Lcom/google/android/gms/internal/ads/zzgb;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzip;->zzb:Lcom/google/android/gms/internal/ads/zzdz;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzip;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzip;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzh:Landroid/os/Looper;

    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzi:Lcom/google/android/gms/internal/ads/zzg;

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzdz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzb:Lcom/google/android/gms/internal/ads/zzdz;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzhs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:Lcom/google/android/gms/internal/ads/zzhs;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzio;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzj:Lcom/google/android/gms/internal/ads/zzio;

    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzlb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzg:Lcom/google/android/gms/internal/ads/zzlb;

    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzqk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:Lcom/google/android/gms/internal/ads/zzqk;

    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzsv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:Lcom/google/android/gms/internal/ads/zzsv;

    return-object p0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzte;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzf:Lcom/google/android/gms/internal/ads/zzte;

    return-object p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzgb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzm:Lcom/google/android/gms/internal/ads/zzgb;

    return-object p0
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzip;)Lcom/google/android/gms/internal/ads/zzcoa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzl:Lcom/google/android/gms/internal/ads/zzcoa;

    return-object p0
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/internal/ads/zzhs;)Lcom/google/android/gms/internal/ads/zzip;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:Lcom/google/android/gms/internal/ads/zzhs;

    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzsv;)Lcom/google/android/gms/internal/ads/zzip;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:Lcom/google/android/gms/internal/ads/zzsv;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zziu;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzf(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzk:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zziu;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zziu;-><init>(Lcom/google/android/gms/internal/ads/zzip;)V

    return-object v0
.end method
