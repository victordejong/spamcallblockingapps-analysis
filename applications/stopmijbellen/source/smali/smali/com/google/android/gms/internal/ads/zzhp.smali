.class final Lcom/google/android/gms/internal/ads/zzhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zzpx;
.implements Lcom/google/android/gms/internal/ads/zzsu;
.implements Lcom/google/android/gms/internal/ads/zzid;
.implements Lcom/google/android/gms/internal/ads/zzgd;
.implements Lcom/google/android/gms/internal/ads/zzig;


# instance fields
.field private zzA:I

.field private zzB:Z

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:I

.field private zzG:Lcom/google/android/gms/internal/ads/zzho;

.field private zzH:J

.field private zzI:I

.field private zzJ:Z

.field private zzK:Lcom/google/android/gms/internal/ads/zzgg;

.field private final zzL:Lcom/google/android/gms/internal/ads/zzgx;

.field private final zzM:Lcom/google/android/gms/internal/ads/zzgb;

.field private final zza:[Lcom/google/android/gms/internal/ads/zzil;

.field private final zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzil;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:[Lcom/google/android/gms/internal/ads/zzim;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzsv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzsw;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhs;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzte;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzi:Landroid/os/HandlerThread;

.field private final zzj:Landroid/os/Looper;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcc;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzca;

.field private final zzm:J

.field private final zzn:Lcom/google/android/gms/internal/ads/zzge;

.field private final zzo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzhm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzp:Lcom/google/android/gms/internal/ads/zzdz;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzie;

.field private zzs:Lcom/google/android/gms/internal/ads/zzio;

.field private zzt:Lcom/google/android/gms/internal/ads/zzif;

.field private zzu:Lcom/google/android/gms/internal/ads/zzhn;

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Z


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzil;Lcom/google/android/gms/internal/ads/zzsv;Lcom/google/android/gms/internal/ads/zzsw;Lcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzte;IZLcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzio;Lcom/google/android/gms/internal/ads/zzgb;JZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdz;Lcom/google/android/gms/internal/ads/zzgx;[B)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzL:Lcom/google/android/gms/internal/ads/zzgx;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzd:Lcom/google/android/gms/internal/ads/zzsv;

    move-object v6, p3

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zze:Lcom/google/android/gms/internal/ads/zzsw;

    move-object v7, p4

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzg:Lcom/google/android/gms/internal/ads/zzte;

    const/4 v8, 0x0

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzA:I

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzB:Z

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzs:Lcom/google/android/gms/internal/ads/zzio;

    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzM:Lcom/google/android/gms/internal/ads/zzgb;

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzw:Z

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzp:Lcom/google/android/gms/internal/ads/zzdz;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzhs;->zza()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzm:J

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/zzhs;->zze()Z

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzif;->zzh(Lcom/google/android/gms/internal/ads/zzsw;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/google/android/gms/internal/ads/zzim;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzc:[Lcom/google/android/gms/internal/ads/zzim;

    :goto_0
    if-ge v8, v6, :cond_0

    .line 4
    aget-object v7, v1, v8

    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzil;->zzB(I)V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzc:[Lcom/google/android/gms/internal/ads/zzim;

    .line 5
    aget-object v9, v1, v8

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzil;->zzj()Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzge;

    .line 6
    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/zzge;-><init>(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzdz;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/IdentityHashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 9
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Ljava/util/Set;

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcc;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzca;

    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzca;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    .line 12
    invoke-virtual {p2, p0, v3}, Lcom/google/android/gms/internal/ads/zzsv;->zzl(Lcom/google/android/gms/internal/ads/zzsu;Lcom/google/android/gms/internal/ads/zzte;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzJ:Z

    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    .line 13
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhx;

    .line 14
    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzhx;-><init>(Lcom/google/android/gms/internal/ads/zzlb;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzie;

    .line 15
    invoke-direct {v2, p0, v4, v1}, Lcom/google/android/gms/internal/ads/zzie;-><init>(Lcom/google/android/gms/internal/ads/zzid;Lcom/google/android/gms/internal/ads/zzlb;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    .line 16
    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzi:Landroid/os/HandlerThread;

    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 18
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzj:Landroid/os/Looper;

    .line 19
    invoke-interface {v5, v1, p0}, Lcom/google/android/gms/internal/ads/zzdz;->zza(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    return-void
.end method

.method private final zzA(Lcom/google/android/gms/internal/ads/zzil;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzge;->zzd(Lcom/google/android/gms/internal/ads/zzil;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhp;->zzah(Lcom/google/android/gms/internal/ads/zzil;)V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzil;->zzm()V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzF:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzF:I

    return-void
.end method

.method private final zzB()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzC([Z)V

    return-void
.end method

.method private final zzC([Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 3
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzb(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Ljava/util/Set;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    aget-object v6, v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    .line 4
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzil;->zzy()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v5, :cond_7

    .line 5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzb(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6
    aget-boolean v7, p1, v4

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    .line 7
    aget-object v8, v8, v4

    .line 8
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v10

    if-ne v9, v10, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 11
    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v10

    .line 12
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzsw;->zzb:[Lcom/google/android/gms/internal/ads/zzin;

    aget-object v11, v11, v4

    .line 13
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    aget-object v10, v10, v4

    .line 14
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzaj(Lcom/google/android/gms/internal/ads/zzsb;)[Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v12

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzae()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v13, 0x3

    if-ne v10, v13, :cond_4

    const/16 v21, 0x1

    goto :goto_3

    :cond_4
    const/16 v21, 0x0

    :goto_3
    if-nez v7, :cond_5

    if-eqz v21, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzF:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzF:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Ljava/util/Set;

    .line 16
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    aget-object v6, v6, v4

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzhu;->zzf()J

    move-result-wide v17

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v19

    move-object v9, v8

    move-object v10, v11

    move-object v11, v12

    move-object v12, v6

    .line 20
    invoke-interface/range {v9 .. v20}, Lcom/google/android/gms/internal/ads/zzil;->zzn(Lcom/google/android/gms/internal/ads/zzin;[Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzrn;JZZJJ)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Lcom/google/android/gms/internal/ads/zzhp;)V

    const/16 v7, 0xb

    .line 21
    invoke-interface {v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzih;->zzo(ILjava/lang/Object;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 22
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzge;->zze(Lcom/google/android/gms/internal/ads/zzil;)V

    if-eqz v21, :cond_6

    .line 23
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzil;->zzD()V

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 24
    :cond_7
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzg:Z

    return-void
.end method

.method private final zzD(Ljava/io/IOException;I)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgg;->zzc(Ljava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgg;->zza(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    .line 4
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p2, p2}, Lcom/google/android/gms/internal/ads/zzhp;->zzT(ZZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzif;->zze(Lcom/google/android/gms/internal/ads/zzgg;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    return-void
.end method

.method private final zzE(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 7
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzif;->zza(Lcom/google/android/gms/internal/ads/zzpz;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    if-nez v0, :cond_2

    .line 8
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zzc()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzt()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zzg()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzX(Lcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;)V

    :cond_4
    return-void
.end method

.method private final zzF(Lcom/google/android/gms/internal/ads/zzcd;Z)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzG:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzA:I

    iget-boolean v10, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzB:Z

    iget-object v13, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v1

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzif;->zzi()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v0

    move-object v8, v0

    move-object v15, v11

    move-wide/from16 v13, v16

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_11

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 3
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzhp;->zzad(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzca;)Z

    move-result v19

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v19, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    :goto_1
    move-wide/from16 v23, v5

    if-eqz v8, :cond_6

    const/4 v5, 0x1

    move-object v6, v1

    move-object/from16 v1, p1

    move-object v2, v8

    const/4 v11, 0x1

    move v3, v5

    const/4 v7, -0x1

    move v5, v10

    move-object v11, v6

    move-object v6, v13

    move-object/from16 v21, v9

    const/4 v9, -0x1

    move-object v7, v14

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzy(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzho;ZIZLcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzcd;->zzg(Z)I

    move-result v1

    move v5, v1

    move-wide/from16 v1, v23

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    .line 10
    :cond_3
    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/zzho;->zzc:J

    cmp-long v4, v2, v16

    if-nez v4, :cond_4

    .line 11
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 12
    invoke-virtual {v12, v1, v14}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v1

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    move-wide/from16 v1, v23

    const/4 v3, 0x0

    goto :goto_2

    .line 13
    :cond_4
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 15
    :goto_2
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v6, v3

    const/4 v3, 0x0

    :goto_4
    move v10, v4

    move v4, v5

    move/from16 v22, v6

    const-wide/16 v7, 0x0

    :goto_5
    move-object/from16 v27, v15

    move v15, v3

    move-object/from16 v3, v27

    goto/16 :goto_a

    :cond_6
    move-object v11, v1

    move-object/from16 v21, v9

    const/4 v9, -0x1

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzcd;->zzg(Z)I

    move-result v1

    :goto_6
    move v4, v1

    move-object v3, v15

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    :goto_7
    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    goto/16 :goto_a

    .line 18
    :cond_7
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v9, :cond_9

    .line 19
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v10

    move-object v5, v15

    move-object/from16 v7, p1

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;->zze(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzcd;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 21
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzcd;->zzg(Z)I

    move-result v1

    const/4 v3, 0x1

    goto :goto_8

    .line 22
    :cond_8
    invoke-virtual {v12, v1, v14}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    const/4 v3, 0x0

    :goto_8
    move v4, v1

    move-wide/from16 v1, v23

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    goto :goto_5

    :cond_9
    cmp-long v1, v23, v16

    if-nez v1, :cond_a

    .line 23
    invoke-virtual {v12, v15, v14}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    goto :goto_6

    :cond_a
    if-eqz v19, :cond_c

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    const-wide/16 v7, 0x0

    .line 26
    invoke-virtual {v1, v2, v13, v7, v8}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v1

    .line 27
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcc;->zzo:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_b

    .line 29
    invoke-virtual {v12, v15, v14}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v1

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-wide/from16 v5, v23

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcd;->zzl(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 31
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_9

    :cond_b
    move-wide/from16 v1, v23

    :goto_9
    move-object v3, v15

    const/4 v4, -0x1

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x1

    goto :goto_a

    :cond_c
    const-wide/16 v7, 0x0

    move-object v3, v15

    move-wide/from16 v1, v23

    const/4 v4, -0x1

    goto/16 :goto_7

    :goto_a
    if-eq v4, v9, :cond_d

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcd;->zzl(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 34
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v4, v1

    move-wide/from16 v1, v16

    goto :goto_b

    :cond_d
    move-wide v4, v1

    :goto_b
    move-object/from16 v6, v21

    .line 36
    invoke-virtual {v6, v12, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhx;->zzh(Lcom/google/android/gms/internal/ads/zzcd;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v6

    iget v13, v6, Lcom/google/android/gms/internal/ads/zzbf;->zze:I

    if-eq v13, v9, :cond_f

    .line 37
    iget v13, v11, Lcom/google/android/gms/internal/ads/zzbf;->zze:I

    if-eq v13, v9, :cond_e

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    if-lt v7, v13, :cond_e

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v7, 0x1

    .line 38
    :goto_d
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 39
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v13

    if-nez v13, :cond_10

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    .line 40
    :goto_e
    invoke-virtual {v12, v3, v14}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    if-eqz v8, :cond_12

    if-nez v19, :cond_12

    cmp-long v3, v23, v1

    if-nez v3, :cond_12

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v6, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    .line 41
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzca;->zzk(I)Z

    .line 42
    :cond_11
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v3

    if-eqz v3, :cond_12

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    .line 43
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzca;->zzk(I)Z

    :cond_12
    const/4 v3, 0x1

    if-eq v3, v7, :cond_13

    goto :goto_f

    :cond_13
    move-object v6, v11

    .line 44
    :goto_f
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 45
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 46
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    goto :goto_10

    .line 47
    :cond_14
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    invoke-virtual {v12, v0, v14}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    .line 48
    iget v0, v6, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    iget v4, v6, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzca;->zzd(I)I

    move-result v4

    if-ne v0, v4, :cond_15

    .line 49
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzca;->zzh()J

    :cond_15
    const-wide/16 v4, 0x0

    :cond_16
    :goto_10
    move-wide v13, v1

    move-object v8, v6

    move v2, v10

    move v3, v15

    move/from16 v7, v22

    move-object/from16 v15, p0

    move-wide v10, v4

    const/4 v5, 0x1

    .line 50
    :goto_11
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 51
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 52
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    cmp-long v4, v10, v0

    if-eqz v4, :cond_17

    goto :goto_12

    :cond_17
    const/16 v19, 0x0

    goto :goto_13

    :cond_18
    :goto_12
    const/16 v19, 0x1

    :goto_13
    const/16 v20, 0x3

    if-eqz v3, :cond_1a

    :try_start_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 53
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    if-eq v0, v5, :cond_19

    const/4 v3, 0x4

    .line 54
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    goto :goto_14

    :cond_19
    const/4 v3, 0x4

    :goto_14
    const/4 v4, 0x0

    .line 55
    invoke-direct {v15, v4, v4, v4, v5}, Lcom/google/android/gms/internal/ads/zzhp;->zzK(ZZZZ)V

    goto :goto_16

    :catchall_0
    move-exception v0

    move-wide/from16 v25, v13

    :goto_15
    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1f

    :cond_1a
    const/4 v3, 0x4

    const/4 v4, 0x0

    :goto_16
    if-nez v19, :cond_21

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    const-wide/high16 v21, -0x8000000000000000L

    if-nez v0, :cond_1b

    move-wide/from16 v25, v13

    const-wide/16 v5, 0x0

    goto :goto_19

    .line 57
    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v23

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-nez v2, :cond_1c

    move-wide/from16 v25, v13

    move-wide/from16 v5, v23

    goto :goto_19

    :cond_1c
    move-wide/from16 v5, v23

    const/4 v2, 0x0

    :goto_17
    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v25, v13

    const/4 v13, 0x2

    if-ge v2, v13, :cond_20

    .line 58
    :try_start_1
    aget-object v9, v9, v2

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v9

    if-eqz v9, :cond_1f

    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    aget-object v9, v9, v2

    .line 59
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzil;->zzl()Lcom/google/android/gms/internal/ads/zzrn;

    move-result-object v9

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    aget-object v13, v13, v2

    if-eq v9, v13, :cond_1d

    goto :goto_18

    :cond_1d
    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    .line 60
    aget-object v9, v9, v2

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzil;->zzf()J

    move-result-wide v13

    cmp-long v9, v13, v21

    if-nez v9, :cond_1e

    move-wide/from16 v5, v21

    goto :goto_19

    .line 61
    :cond_1e
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1f
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v13, v25

    goto :goto_17

    :catchall_1
    move-exception v0

    goto :goto_15

    :cond_20
    :goto_19
    move-object/from16 v2, p1

    const/4 v9, 0x4

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v14, 0x0

    .line 62
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhx;->zzo(Lcom/google/android/gms/internal/ads/zzcd;JJ)Z

    move-result v0

    if-nez v0, :cond_24

    .line 63
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzP(Z)V

    goto :goto_1b

    :cond_21
    move-wide/from16 v25, v13

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 66
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 67
    invoke-virtual {v1, v12, v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzg(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzhv;)Lcom/google/android/gms/internal/ads/zzhv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zzq()V

    :cond_22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    goto :goto_1a

    .line 69
    :cond_23
    invoke-direct {v15, v8, v10, v11, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzv(Lcom/google/android/gms/internal/ads/zzpz;JZ)J

    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v10, v0

    .line 70
    :cond_24
    :goto_1b
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 71
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    if-eq v9, v7, :cond_25

    move-wide/from16 v6, v16

    goto :goto_1c

    :cond_25
    move-wide v6, v10

    :goto_1c
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzW(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)V

    if-nez v19, :cond_26

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 72
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    cmp-long v2, v25, v0

    if-eqz v2, :cond_29

    :cond_26
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 73
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 74
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    if-eqz v19, :cond_27

    if-eqz p2, :cond_27

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzca;->zzg:Z

    if-nez v0, :cond_27

    goto :goto_1d

    :cond_27
    const/4 v9, 0x0

    :goto_1d
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 77
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    .line 78
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    const/16 v18, 0x4

    goto :goto_1e

    :cond_28
    const/16 v18, 0x3

    :goto_1e
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v5

    move-wide/from16 v5, v25

    move/from16 v10, v18

    .line 79
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 80
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzL()V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 81
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-direct {v15, v12, v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzN(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzcd;)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 82
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzif;->zzg(Lcom/google/android/gms/internal/ads/zzcd;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-nez v0, :cond_2a

    iput-object v14, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzG:Lcom/google/android/gms/internal/ads/zzho;

    .line 84
    :cond_2a
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzE(Z)V

    return-void

    :catchall_2
    move-exception v0

    .line 85
    :goto_1f
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 86
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    if-eq v9, v7, :cond_2b

    move-wide/from16 v6, v16

    goto :goto_20

    :cond_2b
    move-wide v6, v10

    :goto_20
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzW(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)V

    if-nez v19, :cond_2c

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 87
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    cmp-long v3, v25, v1

    if-eqz v3, :cond_2f

    :cond_2c
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 88
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 89
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    if-eqz v19, :cond_2d

    if-eqz p2, :cond_2d

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzca;->zzg:Z

    if-nez v1, :cond_2d

    goto :goto_21

    :cond_2d
    const/4 v9, 0x0

    :goto_21
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 92
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    .line 93
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    const/16 v18, 0x4

    goto :goto_22

    :cond_2e
    const/16 v18, 0x3

    :goto_22
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v5

    move-wide/from16 v5, v25

    move/from16 v10, v18

    .line 94
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 95
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzL()V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 96
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-direct {v15, v12, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzN(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzcd;)V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 97
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzif;->zzg(Lcom/google/android/gms/internal/ads/zzcd;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v1

    if-nez v1, :cond_30

    iput-object v14, v15, Lcom/google/android/gms/internal/ads/zzhp;->zzG:Lcom/google/android/gms/internal/ads/zzho;

    .line 99
    :cond_30
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzE(Z)V

    .line 100
    throw v0
.end method

.method private final zzG(Lcom/google/android/gms/internal/ads/zzbn;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhp;->zzH(Lcom/google/android/gms/internal/ads/zzbn;FZZ)V

    return-void
.end method

.method private final zzH(Lcom/google/android/gms/internal/ads/zzbn;FZZ)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    :cond_0
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzif;

    move-object v1, v13

    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v3, v14, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v4, v14, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    iget-wide v6, v14, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/zzif;->zzf:Lcom/google/android/gms/internal/ads/zzgg;

    iget-boolean v10, v14, Lcom/google/android/gms/internal/ads/zzif;->zzg:Z

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzif;->zzh:Lcom/google/android/gms/internal/ads/zzch;

    iget-object v12, v14, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    move-object/from16 p3, v13

    iget-object v13, v14, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    move-object/from16 v0, p3

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    move-object/from16 p4, v1

    move-object v1, v14

    move-object v14, v0

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    move v15, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    move/from16 v16, v0

    move-object v0, v2

    move-object/from16 v26, v3

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    move-wide/from16 v22, v2

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzo:Z

    move/from16 v24, v2

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzp:Z

    move/from16 v25, v1

    move-object/from16 v17, p1

    move-object/from16 v1, p4

    move-object v2, v0

    move-object/from16 v3, v26

    .line 2
    invoke-direct/range {v1 .. v25}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;JJILcom/google/android/gms/internal/ads/zzgg;ZLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzpz;ZILcom/google/android/gms/internal/ads/zzbn;JJJZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    :cond_1
    move-object/from16 v1, p1

    .line 3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v4

    .line 5
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 6
    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    .line 7
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    move/from16 v6, p2

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzil;->zzC(FF)V

    goto :goto_3

    :cond_4
    move/from16 v6, p2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final zzI()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzaa()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zzd()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzu(J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v3

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzhv;->zzb:J

    :goto_0
    sub-long/2addr v1, v3

    move-wide v4, v1

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzc()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    .line 11
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzhs;->zzf(JJF)Z

    move-result v0

    .line 12
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzz:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzk(J)V

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzV()V

    return-void
.end method

.method private final zzJ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhn;->zzc(Lcom/google/android/gms/internal/ads/zzif;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhn;->zze(Lcom/google/android/gms/internal/ads/zzhn;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzL:Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgx;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhf;->zzz(Lcom/google/android/gms/internal/ads/zzhn;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Lcom/google/android/gms/internal/ads/zzif;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    :cond_0
    return-void
.end method

.method private final zzK(ZZZZ)V
    .locals 30

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzei;->zze(I)V

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzK:Lcom/google/android/gms/internal/ads/zzgg;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzy:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzi()V

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v6, 0x0

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v2, :cond_0

    .line 3
    aget-object v0, v5, v6

    .line 4
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzA(Lcom/google/android/gms/internal/ads/zzil;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 5
    invoke-static {v7, v8, v0}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 6
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_2

    .line 7
    aget-object v0, v5, v6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Ljava/util/Set;

    .line 8
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzil;->zzy()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 10
    invoke-static {v7, v0, v8}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 11
    :cond_2
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzF:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 13
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzad(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzca;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    .line 15
    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 16
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    goto :goto_6

    .line 17
    :cond_4
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 18
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    :goto_6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_6

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzG:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 20
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzx(Lcom/google/android/gms/internal/ads/zzcd;)Landroid/util/Pair;

    move-result-object v0

    .line 21
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzpz;

    .line 22
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 23
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_8

    :cond_5
    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v9

    goto :goto_7

    :cond_6
    move-object/from16 v18, v2

    move-wide/from16 v26, v5

    move-wide v8, v7

    :goto_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()V

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzz:Z

    new-instance v2, Lcom/google/android/gms/internal/ads/zzif;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 25
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    if-eqz p4, :cond_7

    goto :goto_9

    .line 26
    :cond_7
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzif;->zzf:Lcom/google/android/gms/internal/ads/zzgg;

    :goto_9
    move-object v13, v3

    if-eqz v0, :cond_8

    .line 27
    sget-object v3, Lcom/google/android/gms/internal/ads/zzch;->zza:Lcom/google/android/gms/internal/ads/zzch;

    goto :goto_a

    :cond_8
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzif;->zzh:Lcom/google/android/gms/internal/ads/zzch;

    :goto_a
    move-object v15, v3

    if-eqz v0, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhp;->zze:Lcom/google/android/gms/internal/ads/zzsw;

    goto :goto_b

    .line 28
    :cond_9
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    :goto_b
    move-object/from16 v16, v3

    if-eqz v0, :cond_a

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfss;->zzo()Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v0

    goto :goto_c

    :cond_a
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    :goto_c
    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v14, 0x0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    move/from16 v19, v3

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    move/from16 v20, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzE:Z

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object v5, v2

    move-object/from16 v7, v18

    move-wide/from16 v10, v26

    move-wide/from16 v22, v26

    invoke-direct/range {v5 .. v29}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;JJILcom/google/android/gms/internal/ads/zzgg;ZLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzpz;ZILcom/google/android/gms/internal/ads/zzbn;JJJZZ)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    if-eqz p3, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzie;->zzg()V

    :cond_b
    return-void
.end method

.method private final zzL()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzhv;->zzh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzw:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzx:Z

    return-void
.end method

.method private final zzM(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 3
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzge;->zzf(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 5
    aget-object v1, p1, v0

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 7
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzil;->zzz(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final zzN(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhm;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhm;->zzb:Ljava/lang/Object;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method private final zzO(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zze(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    add-long/2addr p1, p3

    .line 2
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzei;->zzi(IJ)Z

    return-void
.end method

.method private final zzP(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhp;->zzw(Lcom/google/android/gms/internal/ads/zzpz;JZZ)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 4
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 5
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    :cond_0
    return-void
.end method

.method private final zzQ(ZIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    .line 2
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzhn;->zzb(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzif;->zzd(ZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzy:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object p3

    .line 5
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_0

    aget-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p2

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzae()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzU()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzY()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 9
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzS()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 11
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    return-void

    :cond_3
    if-ne p1, p3, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 12
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    :cond_4
    return-void
.end method

.method private final zzR(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    if-eq v1, p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzif;->zzf(I)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    :cond_0
    return-void
.end method

.method private final zzS()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzy:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzge;->zzh()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, v1, v0

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzil;->zzD()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzT(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzC:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzK(ZZZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhs;->zzd()V

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    return-void
.end method

.method private final zzU()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, v0, v1

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzah(Lcom/google/android/gms/internal/ads/zzil;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzV()V
    .locals 30

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzz:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzpy;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v14, 0x1

    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 3
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzg:Z

    if-eq v14, v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzif;

    move-object v5, v2

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzif;->zzf:Lcom/google/android/gms/internal/ads/zzgg;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzif;->zzh:Lcom/google/android/gms/internal/ads/zzch;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    move-object/from16 v18, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    move/from16 v19, v3

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    move/from16 v20, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    move-object/from16 v21, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    move-wide/from16 v22, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    move-wide/from16 v24, v3

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    move-wide/from16 v26, v3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzo:Z

    move/from16 v28, v3

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzp:Z

    move/from16 v29, v1

    .line 4
    invoke-direct/range {v5 .. v29}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;JJILcom/google/android/gms/internal/ads/zzgg;ZLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzpz;ZILcom/google/android/gms/internal/ads/zzbn;JJJZZ)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    :cond_2
    return-void
.end method

.method private final zzW(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhp;->zzaf(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzM:Lcom/google/android/gms/internal/ads/zzgb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcc;->zzk:Lcom/google/android/gms/internal/ads/zzas;

    sget v4, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgb;->zzd(Lcom/google/android/gms/internal/ads/zzas;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p5, v0

    if-eqz v4, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzM:Lcom/google/android/gms/internal/ads/zzgb;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzhp;->zzs(Lcom/google/android/gms/internal/ads/zzcd;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 7
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzgb;->zze(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzc:Ljava/lang/Object;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    .line 11
    invoke-virtual {p3, p2, p4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcc;->zzc:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfn;->zzP(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzM:Lcom/google/android/gms/internal/ads/zzgb;

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgb;->zze(J)V

    :cond_3
    return-void

    .line 15
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzge;->zzc()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzge;->zzg(Lcom/google/android/gms/internal/ads/zzbn;)V

    :cond_5
    return-void
.end method

.method private final zzX(Lcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzhs;->zzi([Lcom/google/android/gms/internal/ads/zzil;Lcom/google/android/gms/internal/ads/zzch;[Lcom/google/android/gms/internal/ads/zzsb;)V

    return-void
.end method

.method private final zzY()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzpy;->zzd()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    const/4 v10, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    .line 3
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzM(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 4
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    goto/16 :goto_4

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzge;->zzb(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 10
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzJ:Z

    if-eqz v0, :cond_5

    const-wide/16 v5, -0x1

    add-long/2addr v3, v5

    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzJ:Z

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 13
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    .line 14
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v0

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzI:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    .line 16
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzhm;

    goto :goto_2

    :cond_6
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_8

    if-ltz v0, :cond_7

    if-nez v0, :cond_8

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-gez v9, :cond_8

    :cond_7
    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    .line 17
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzhm;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzo:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhm;

    :cond_9
    iput v5, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzI:I

    .line 20
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 21
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    .line 22
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zzc()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzt()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 26
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 27
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzaf(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzM:Lcom/google/android/gms/internal/ads/zzgb;

    .line 28
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhp;->zzs(Lcom/google/android/gms/internal/ads/zzcd;Ljava/lang/Object;J)J

    move-result-wide v2

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzt()J

    move-result-wide v4

    .line 30
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgb;->zza(JJ)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzge;->zzc()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 32
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbn;->zzd:F

    .line 33
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzbn;-><init>(FF)V

    .line 34
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzge;->zzg(Lcom/google/android/gms/internal/ads/zzbn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 35
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzge;->zzc()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    .line 37
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzH(Lcom/google/android/gms/internal/ads/zzbn;FZZ)V

    :cond_c
    return-void
.end method

.method private final declared-synchronized zzZ(Lcom/google/android/gms/internal/ads/zzfqs;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqs<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v0, 0x1f4

    add-long/2addr p2, v0

    const/4 v2, 0x0

    :goto_0
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhg;->zza:Lcom/google/android/gms/internal/ads/zzhp;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzhp;->zzv:Z

    .line 2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 5
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p2, v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final zzaa()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zzd()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static zzab(Lcom/google/android/gms/internal/ads/zzil;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzil;->zzbm()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzac()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzhv;->zze:J

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    cmp-long v0, v5, v1

    if-ltz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzae()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3
.end method

.method private static zzad(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzca;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzca;->zzg:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzae()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaf(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcc;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzi:Z

    if-eqz p2, :cond_1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private static final zzag(Lcom/google/android/gms/internal/ads/zzii;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzii;->zzj()Z

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzii;->zzc()Lcom/google/android/gms/internal/ads/zzih;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzii;->zza()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzii;->zzg()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzih;->zzo(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzh(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzh(Z)V

    .line 4
    throw v1
.end method

.method private static final zzah(Lcom/google/android/gms/internal/ads/zzil;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzil;->zzbm()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzil;->zzE()V

    :cond_0
    return-void
.end method

.method private static final zzai(Lcom/google/android/gms/internal/ads/zzil;J)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzil;->zzA()V

    .line 2
    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzrw;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/ads/zzrw;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method private static zzaj(Lcom/google/android/gms/internal/ads/zzsb;)[Lcom/google/android/gms/internal/ads/zzab;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsb;->zzc()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzab;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzsb;->zzd(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzhp;)Lcom/google/android/gms/internal/ads/zzei;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzcd;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result p4

    .line 2
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcd;->zzb()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 3
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcd;->zzi(ILcom/google/android/gms/internal/ads/zzca;Lcom/google/android/gms/internal/ads/zzcc;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 p4, -0x1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/gms/internal/ads/zzcd;->zzf(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/ads/zzcd;->zzf(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzhp;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzD:Z

    return-void
.end method

.method public static final synthetic zzr(Lcom/google/android/gms/internal/ads/zzii;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzag(Lcom/google/android/gms/internal/ads/zzii;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgg; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 2
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzcd;Ljava/lang/Object;J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcc;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzi:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzg:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfn;->zzq(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    .line 5
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzcc;->zzf:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzk;->zzc(J)J

    move-result-wide p1

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method private final zzt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzu(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzu(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final zzv(Lcom/google/android/gms/internal/ads/zzpz;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhp;->zzw(Lcom/google/android/gms/internal/ads/zzpz;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzpz;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgg;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzU()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzy:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget p5, p5, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    :cond_1
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    const-wide/16 v3, 0x0

    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide p4

    add-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 p4, 0x0

    :goto_2
    if-ge p4, v1, :cond_5

    .line 8
    aget-object p5, p1, p4

    .line 9
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/zzhp;->zzA(Lcom/google/android/gms/internal/ads/zzil;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p1

    if-eq p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhx;->zza()Lcom/google/android/gms/internal/ads/zzhu;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 12
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzm(Lcom/google/android/gms/internal/ads/zzhu;)Z

    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhu;->zzp(J)V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzB()V

    :cond_7
    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzm(Lcom/google/android/gms/internal/ads/zzhu;)Z

    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhv;->zzb(J)Lcom/google/android/gms/internal/ads/zzhv;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    goto :goto_4

    .line 17
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zze:Z

    if-eqz p1, :cond_9

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    .line 18
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzpy;->zze(J)J

    move-result-wide p2

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzm:J

    sub-long p4, p2, p4

    .line 19
    invoke-interface {p1, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzpy;->zzh(JZ)V

    .line 20
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhp;->zzM(J)V

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzI()V

    goto :goto_5

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhx;->zzi()V

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhp;->zzM(J)V

    .line 25
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhp;->zzE(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 26
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    return-wide p2
.end method

.method private final zzx(Lcom/google/android/gms/internal/ads/zzcd;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcd;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/ads/zzpz;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzif;->zzi()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object p1

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzB:Z

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzg(Z)I

    move-result v6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 4
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcd;->zzl(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IJ)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 5
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzh(Lcom/google/android/gms/internal/ads/zzcd;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v3

    .line 7
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    .line 8
    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    iget p1, v3, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    .line 9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzca;->zzd(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzca;->zzh()J

    goto :goto_0

    :cond_1
    move-wide v1, v4

    .line 11
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static zzy(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzho;ZIZLcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcd;",
            "Lcom/google/android/gms/internal/ads/zzho;",
            "ZIZ",
            "Lcom/google/android/gms/internal/ads/zzcc;",
            "Lcom/google/android/gms/internal/ads/zzca;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    :cond_0
    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v3

    if-ne v2, v3, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 4
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzb:I

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzc:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcd;->zzl(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 7
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 8
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzca;->zzg:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    const-wide/16 v3, 0x0

    move-object/from16 v11, p5

    .line 9
    invoke-virtual {v10, v2, v11, v3, v4}, Lcom/google/android/gms/internal/ads/zzcd;->zze(ILcom/google/android/gms/internal/ads/zzcc;J)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v2

    .line 10
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcc;->zzo:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzcd;->zza(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 12
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    .line 13
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzc:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcd;->zzl(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    .line 15
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhp;->zze(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzcd;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzca;->zzd:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcd;->zzl(Lcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private final zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, p4

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzJ:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    cmp-long v1, p2, v7

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzJ:Z

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzL()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 4
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzif;->zzh:Lcom/google/android/gms/internal/ads/zzch;

    .line 5
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    .line 7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzie;->zzi()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    if-nez v1, :cond_2

    .line 9
    sget-object v7, Lcom/google/android/gms/internal/ads/zzch;->zza:Lcom/google/android/gms/internal/ads/zzch;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzg()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v7

    :goto_2
    if-nez v1, :cond_3

    .line 11
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzhp;->zze:Lcom/google/android/gms/internal/ads/zzsw;

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v8

    .line 13
    :goto_3
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfsp;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzfsp;-><init>()V

    .line 14
    array-length v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v14, v9, v12

    if-eqz v14, :cond_5

    .line 15
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzsb;->zzd(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v14

    .line 16
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzab;->zzk:Lcom/google/android/gms/internal/ads/zzdd;

    if-nez v14, :cond_4

    new-instance v14, Lcom/google/android/gms/internal/ads/zzdd;

    new-array v15, v3, [Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {v14, v15}, Lcom/google/android/gms/internal/ads/zzdd;-><init>([Lcom/google/android/gms/internal/ads/zzdc;)V

    .line 17
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/zzfsp;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsp;

    goto :goto_5

    .line 18
    :cond_4
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/zzfsp;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsp;

    const/4 v13, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    if-eqz v13, :cond_7

    .line 19
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfsp;->zzf()Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v3

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfss;->zzo()Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v3

    :goto_6
    if-eqz v1, :cond_8

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 20
    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzhv;->zzc:J

    cmp-long v11, v9, v5

    if-eqz v11, :cond_8

    .line 21
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhv;->zza(J)Lcom/google/android/gms/internal/ads/zzhv;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    :cond_8
    move-object v13, v3

    goto :goto_7

    .line 22
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzch;->zza:Lcom/google/android/gms/internal/ads/zzch;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzhp;->zze:Lcom/google/android/gms/internal/ads/zzsw;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfss;->zzo()Lcom/google/android/gms/internal/ads/zzfss;

    move-result-object v4

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    goto :goto_8

    :cond_a
    move-object v13, v1

    :goto_7
    move-object v11, v7

    move-object v12, v8

    :goto_8
    if-eqz p8, :cond_b

    .line 26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    move/from16 v3, p9

    .line 27
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhn;->zzd(I)V

    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzt()J

    move-result-wide v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 29
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Lcom/google/android/gms/internal/ads/zzpz;JJJJLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 48

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 1
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/4 v15, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    .line 2
    :pswitch_0
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzhp;->zzP(Z)V

    goto/16 :goto_41

    .line 3
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v14, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzE:Z

    if-eq v1, v2, :cond_70

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzE:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 4
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    if-nez v1, :cond_2

    if-eq v3, v9, :cond_2

    if-ne v3, v14, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 6
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    goto/16 :goto_41

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzif;->zzc(Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    goto/16 :goto_41

    .line 8
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzw:Z

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzL()V

    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzx:Z

    if-eqz v1, :cond_70

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    if-eq v1, v2, :cond_70

    .line 11
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzhp;->zzP(Z)V

    .line 12
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzE(Z)V

    goto/16 :goto_41

    .line 13
    :pswitch_3
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzie;->zzb()Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v1

    .line 15
    invoke-direct {v11, v1, v14}, Lcom/google/android/gms/internal/ads/zzhp;->zzF(Lcom/google/android/gms/internal/ads/zzcd;Z)V

    goto/16 :goto_41

    .line 16
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    .line 17
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    .line 18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzie;->zzn(Lcom/google/android/gms/internal/ads/zzrq;)Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v1

    .line 19
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzF(Lcom/google/android/gms/internal/ads/zzcd;Z)V

    goto/16 :goto_41

    .line 20
    :pswitch_5
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    .line 21
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    .line 22
    invoke-virtual {v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzie;->zzl(IILcom/google/android/gms/internal/ads/zzrq;)Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v1

    .line 23
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzF(Lcom/google/android/gms/internal/ads/zzcd;Z)V

    goto/16 :goto_41

    .line 24
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhl;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    .line 25
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    .line 26
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzhl;->zza:I

    .line 27
    invoke-virtual {v2, v13, v13, v13, v15}, Lcom/google/android/gms/internal/ads/zzie;->zzk(IIILcom/google/android/gms/internal/ads/zzrq;)Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v1

    .line 28
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzF(Lcom/google/android/gms/internal/ads/zzcd;Z)V

    goto/16 :goto_41

    .line 29
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhk;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    .line 30
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    if-ne v1, v3, :cond_4

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzie;->zza()I

    move-result v1

    :cond_4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhk;->zzc(Lcom/google/android/gms/internal/ads/zzhk;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhk;->zzd(Lcom/google/android/gms/internal/ads/zzhk;)Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object v2

    .line 32
    invoke-virtual {v4, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzie;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzrq;)Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v1

    .line 33
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzF(Lcom/google/android/gms/internal/ads/zzcd;Z)V

    goto/16 :goto_41

    .line 34
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhk;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    .line 35
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zza(Lcom/google/android/gms/internal/ads/zzhk;)I

    move-result v2

    if-eq v2, v3, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/ads/zzho;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzij;

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzc(Lcom/google/android/gms/internal/ads/zzhk;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzd(Lcom/google/android/gms/internal/ads/zzhk;)Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object v5

    invoke-direct {v3, v4, v5, v15}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzrq;[B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zza(Lcom/google/android/gms/internal/ads/zzhk;)I

    move-result v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzb(Lcom/google/android/gms/internal/ads/zzhk;)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzho;-><init>(Lcom/google/android/gms/internal/ads/zzcd;IJ)V

    iput-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzG:Lcom/google/android/gms/internal/ads/zzho;

    :cond_5
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    .line 38
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzc(Lcom/google/android/gms/internal/ads/zzhk;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhk;->zzd(Lcom/google/android/gms/internal/ads/zzhk;)Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object v1

    .line 39
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzie;->zzm(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzrq;)Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v1

    .line 40
    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzF(Lcom/google/android/gms/internal/ads/zzcd;Z)V

    goto/16 :goto_41

    .line 41
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbn;

    invoke-direct {v11, v1, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzG(Lcom/google/android/gms/internal/ads/zzbn;Z)V

    goto/16 :goto_41

    .line 42
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzii;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzii;->zzb()Landroid/os/Looper;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v2, "TAG"

    const-string v3, "Trying to send message on a dead thread."

    .line 45
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzii;->zzh(Z)V

    goto/16 :goto_41

    :cond_6
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzp:Lcom/google/android/gms/internal/ads/zzdz;

    .line 47
    invoke-interface {v3, v2, v15}, Lcom/google/android/gms/internal/ads/zzdz;->zza(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzei;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhh;

    invoke-direct {v3, v11, v1}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzii;)V

    .line 48
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzg(Ljava/lang/Runnable;)Z

    goto/16 :goto_41

    .line 49
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzii;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzii;->zzb()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzj:Landroid/os/Looper;

    if-ne v2, v3, :cond_8

    .line 51
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzag(Lcom/google/android/gms/internal/ads/zzii;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 52
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    if-eq v1, v10, :cond_7

    if-ne v1, v7, :cond_70

    :cond_7
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 53
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    goto/16 :goto_41

    :cond_8
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v3, 0xf

    .line 54
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    goto/16 :goto_41

    .line 55
    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzC:Z

    if-eq v3, v2, :cond_b

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzC:Z

    if-nez v2, :cond_b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v7, :cond_b

    .line 56
    aget-object v4, v2, v3

    .line 57
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzb:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 58
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzil;->zzy()V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    if-eqz v1, :cond_70

    monitor-enter p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgg; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zznc; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzbj; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzdj; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzpd; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    invoke-virtual {v1, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit p0

    goto/16 :goto_41

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 62
    :pswitch_d
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzB:Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 63
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzq(Lcom/google/android/gms/internal/ads/zzcd;Z)Z

    move-result v1

    if-nez v1, :cond_d

    .line 64
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzhp;->zzP(Z)V

    .line 65
    :cond_d
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzE(Z)V

    goto/16 :goto_41

    .line 66
    :pswitch_e
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzA:I

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 67
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzp(Lcom/google/android/gms/internal/ads/zzcd;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 68
    invoke-direct {v11, v14}, Lcom/google/android/gms/internal/ads/zzhp;->zzP(Z)V

    .line 69
    :cond_e
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzE(Z)V

    goto/16 :goto_41

    .line 70
    :pswitch_f
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzge;->zzc()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v3

    const/4 v4, 0x1

    :goto_6
    if-eqz v2, :cond_70

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-eqz v5, :cond_70

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 74
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v2, v1, v5}, Lcom/google/android/gms/internal/ads/zzhu;->zzj(FLcom/google/android/gms/internal/ads/zzcd;)Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    .line 75
    array-length v8, v8

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    array-length v10, v10

    if-eq v8, v10, :cond_f

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    .line 76
    :goto_7
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    .line 77
    array-length v10, v10

    if-ge v8, v10, :cond_10

    .line 78
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zzsw;I)Z

    move-result v10

    if-eqz v10, :cond_12

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_10
    if-ne v2, v3, :cond_11

    const/4 v5, 0x0

    goto :goto_8

    :cond_11
    const/4 v5, 0x1

    :goto_8
    and-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    goto :goto_6

    :cond_12
    :goto_9
    if-eqz v4, :cond_18

    .line 79
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v10

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 81
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzhx;->zzm(Lcom/google/android/gms/internal/ads/zzhu;)Z

    move-result v19

    new-array v8, v7, [Z

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 82
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    move-object v15, v10

    move-object/from16 v16, v5

    move-wide/from16 v17, v1

    move-object/from16 v20, v8

    .line 83
    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzhu;->zzb(Lcom/google/android/gms/internal/ads/zzsw;JZ[Z)J

    move-result-wide v5

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 84
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    if-eq v2, v9, :cond_13

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_13

    const/4 v15, 0x1

    goto :goto_a

    :cond_13
    const/4 v15, 0x0

    :goto_a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 85
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    move-object/from16 v16, v8

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    const/16 v17, 0x5

    move-object/from16 v1, p0

    move-wide/from16 v19, v3

    move-wide v3, v5

    move-wide v12, v5

    move-wide/from16 v5, v19

    const/4 v14, 0x2

    move v9, v15

    move-object/from16 v22, v10

    move/from16 v10, v17

    .line 86
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    if-eqz v15, :cond_14

    .line 87
    invoke-direct {v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzhp;->zzM(J)V

    :cond_14
    new-array v1, v14, [Z

    const/4 v2, 0x0

    :goto_b
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    if-ge v2, v14, :cond_17

    aget-object v3, v3, v2

    .line 88
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v4

    aput-boolean v4, v1, v2

    move-object/from16 v5, v22

    .line 89
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    aget-object v6, v6, v2

    if-eqz v4, :cond_16

    .line 90
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzil;->zzl()Lcom/google/android/gms/internal/ads/zzrn;

    move-result-object v4

    if-eq v6, v4, :cond_15

    .line 91
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzA(Lcom/google/android/gms/internal/ads/zzil;)V

    goto :goto_c

    :cond_15
    aget-boolean v4, v16, v2

    if-eqz v4, :cond_16

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 92
    invoke-interface {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzil;->zzz(J)V

    :cond_16
    :goto_c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v22, v5

    goto :goto_b

    .line 93
    :cond_17
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzC([Z)V

    goto :goto_d

    :cond_18
    const/4 v14, 0x2

    .line 94
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 95
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzm(Lcom/google/android/gms/internal/ads/zzhu;)Z

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-eqz v1, :cond_19

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 96
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzhv;->zzb:J

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 97
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhu;->zza(Lcom/google/android/gms/internal/ads/zzsw;JZ)J

    :cond_19
    :goto_d
    const/4 v1, 0x1

    .line 99
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzE(Z)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 100
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v12, 0x4

    if-eq v1, v12, :cond_70

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzI()V

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzY()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    .line 103
    invoke-interface {v1, v14}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    goto/16 :goto_41

    .line 104
    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpy;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 105
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzl(Lcom/google/android/gms/internal/ads/zzpy;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 106
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzk(J)V

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzI()V

    goto/16 :goto_41

    .line 108
    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpy;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 109
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzl(Lcom/google/android/gms/internal/ads/zzpy;)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 110
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzge;->zzc()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhu;->zzl(FLcom/google/android/gms/internal/ads/zzcd;)V

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzg()Lcom/google/android/gms/internal/ads/zzch;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v3

    .line 114
    invoke-direct {v11, v2, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzX(Lcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    .line 116
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzhv;->zzb:J

    invoke-direct {v11, v2, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzM(J)V

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzB()V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 118
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzhv;->zzb:J

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v7

    .line 119
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 120
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzI()V

    goto/16 :goto_41

    :pswitch_12
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 121
    invoke-direct {v11, v2, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzK(ZZZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 122
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhs;->zzc()V

    .line 123
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzi:Landroid/os/HandlerThread;

    .line 124
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    monitor-enter p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgg; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zznc; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzbj; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzdj; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzpd; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzv:Z

    .line 125
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :pswitch_13
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzT(ZZ)V

    goto/16 :goto_41

    .line 128
    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzio;

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzs:Lcom/google/android/gms/internal/ads/zzio;

    goto/16 :goto_41

    .line 129
    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbn;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 130
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzge;->zzg(Lcom/google/android/gms/internal/ads/zzbn;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzge;->zzc()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzG(Lcom/google/android/gms/internal/ads/zzbn;Z)V

    goto/16 :goto_41

    :pswitch_16
    const/4 v12, 0x4

    const/4 v14, 0x2

    .line 132
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzho;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 134
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    const/4 v4, 0x1

    iget v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzA:I

    iget-boolean v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzB:Z

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzk:Lcom/google/android/gms/internal/ads/zzcc;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    move-object v3, v1

    .line 135
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzhp;->zzy(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzho;ZIZLcom/google/android/gms/internal/ads/zzcc;Lcom/google/android/gms/internal/ads/zzca;)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1b

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 136
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 137
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzhp;->zzx(Lcom/google/android/gms/internal/ads/zzcd;)Landroid/util/Pair;

    move-result-object v5

    .line 138
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzpz;

    .line 139
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 140
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v5

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    move v9, v5

    move-wide/from16 v14, v16

    move-wide/from16 v46, v7

    move-object v8, v6

    :goto_e
    move-wide/from16 v5, v46

    goto :goto_11

    .line 141
    :cond_1b
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 142
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 143
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzho;->zzc:J

    cmp-long v6, v14, v16

    if-nez v6, :cond_1c

    move-wide/from16 v14, v16

    goto :goto_f

    :cond_1c
    move-wide v14, v7

    :goto_f
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 144
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 145
    invoke-virtual {v6, v9, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzhx;->zzh(Lcom/google/android/gms/internal/ads/zzcd;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 146
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzbf;->zza:Ljava/lang/Object;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzcd;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzca;)Lcom/google/android/gms/internal/ads/zzca;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzbf;->zzb:I

    .line 147
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzca;->zzd(I)I

    move-result v6

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzbf;->zzc:I

    if-ne v6, v7, :cond_1d

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzl:Lcom/google/android/gms/internal/ads/zzca;

    .line 148
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzca;->zzh()J

    :cond_1d
    move-object v8, v5

    const/4 v9, 0x1

    move-wide v5, v3

    goto :goto_11

    :cond_1e
    move-wide/from16 v19, v14

    .line 149
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzho;->zzc:J
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzgg; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zznc; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzbj; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzdj; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzpd; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    cmp-long v6, v13, v16

    if-nez v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    :goto_10
    move v9, v6

    move-wide/from16 v14, v19

    move-wide/from16 v46, v7

    move-object v8, v5

    goto :goto_e

    .line 150
    :goto_11
    :try_start_5
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 151
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v7

    if-eqz v7, :cond_20

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzG:Lcom/google/android/gms/internal/ads/zzho;

    goto :goto_12

    :cond_20
    if-nez v2, :cond_22

    .line 152
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 153
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    .line 154
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    :cond_21
    const/4 v1, 0x0

    .line 155
    invoke-direct {v11, v1, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzK(ZZZZ)V

    :goto_12
    move-wide v12, v5

    goto/16 :goto_17

    :cond_22
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 156
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzbf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 157
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-eqz v2, :cond_23

    cmp-long v2, v5, v3

    if-eqz v2, :cond_23

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzs:Lcom/google/android/gms/internal/ads/zzio;

    .line 158
    invoke-interface {v1, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzpy;->zza(JLcom/google/android/gms/internal/ads/zzio;)J

    move-result-wide v1

    goto :goto_13

    :cond_23
    move-wide v1, v5

    .line 159
    :goto_13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v3

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzk;->zzd(J)J

    move-result-wide v12

    cmp-long v7, v3, v12

    if-nez v7, :cond_26

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_24

    if-ne v4, v10, :cond_26

    .line 160
    :cond_24
    iget-wide v12, v3, Lcom/google/android/gms/internal/ads/zzif;->zzs:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v12

    move-wide v5, v14

    move-wide v7, v12

    .line 161
    :try_start_6
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    :goto_14
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzgg; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zznc; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzbj; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzdj; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzpd; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_41

    :cond_25
    move-wide v1, v5

    :cond_26
    :try_start_7
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 162
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    const/4 v3, 0x1

    goto :goto_15

    :cond_27
    const/4 v3, 0x0

    .line 163
    :goto_15
    invoke-direct {v11, v8, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzv(Lcom/google/android/gms/internal/ads/zzpz;JZ)J

    move-result-wide v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    cmp-long v1, v5, v12

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_16

    :cond_28
    const/4 v1, 0x0

    :goto_16
    or-int/2addr v9, v1

    :try_start_8
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 164
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v8

    move-wide v6, v14

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzW(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_17
    const/4 v10, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v12

    move-wide v5, v14

    move-wide v7, v12

    .line 165
    :try_start_9
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-wide/from16 v46, v12

    move-object v12, v1

    move v13, v9

    move-wide/from16 v9, v46

    goto :goto_18

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v12, v1

    move v13, v9

    move-wide v9, v5

    :goto_18
    const/16 v16, 0x2

    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v9

    move-wide v5, v14

    move-wide v7, v9

    move v9, v13

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 166
    throw v12

    .line 167
    :pswitch_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 168
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v1

    if-nez v1, :cond_43

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzie;->zzi()Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_25

    .line 169
    :cond_29
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 170
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzk(J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzn()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 172
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhx;->zzf(JLcom/google/android/gms/internal/ads/zzif;)Lcom/google/android/gms/internal/ads/zzhv;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzc:[Lcom/google/android/gms/internal/ads/zzim;

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzd:Lcom/google/android/gms/internal/ads/zzsv;

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 173
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhs;->zzh()Lcom/google/android/gms/internal/ads/zztk;

    move-result-object v25

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zze:Lcom/google/android/gms/internal/ads/zzsw;

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v1

    move-object/from16 v28, v6

    .line 174
    invoke-virtual/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/zzhx;->zzr([Lcom/google/android/gms/internal/ads/zzim;Lcom/google/android/gms/internal/ads/zzsv;Lcom/google/android/gms/internal/ads/zztk;Lcom/google/android/gms/internal/ads/zzie;Lcom/google/android/gms/internal/ads/zzhv;Lcom/google/android/gms/internal/ads/zzsw;)Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhv;->zzb:J

    .line 175
    invoke-interface {v3, v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzpy;->zzk(Lcom/google/android/gms/internal/ads/zzpx;J)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 176
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    if-ne v1, v2, :cond_2a

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzf()J

    move-result-wide v1

    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzM(J)V

    :cond_2a
    const/4 v1, 0x0

    .line 178
    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzhp;->zzE(Z)V

    :cond_2b
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzz:Z

    if-eqz v1, :cond_2c

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzaa()Z

    move-result v1

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzz:Z

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzV()V

    goto :goto_19

    .line 181
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzI()V

    .line 182
    :goto_19
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 183
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    if-nez v1, :cond_2d

    goto/16 :goto_20

    .line 184
    :cond_2d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzx:Z

    if-eqz v2, :cond_2e

    goto/16 :goto_1d

    .line 185
    :cond_2e
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 186
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    .line 187
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-eqz v3, :cond_3a

    const/4 v3, 0x0

    :goto_1a
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v5, 0x2

    if-ge v3, v5, :cond_30

    .line 188
    aget-object v4, v4, v3

    .line 189
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    aget-object v5, v5, v3

    .line 190
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzil;->zzl()Lcom/google/android/gms/internal/ads/zzrn;

    move-result-object v6

    if-ne v6, v5, :cond_3a

    if-eqz v5, :cond_2f

    .line 191
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzil;->zzF()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 192
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    .line 193
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzhv;->zzf:Z

    goto/16 :goto_20

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    .line 194
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-nez v2, :cond_31

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhu;->zzf()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3a

    :cond_31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzb()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v3

    .line 198
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-eqz v4, :cond_33

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    .line 199
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzpy;->zzd()J

    move-result-wide v4

    cmp-long v6, v4, v16

    if-eqz v6, :cond_33

    .line 200
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzf()J

    move-result-wide v1

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v4, 0x0

    :goto_1b
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3a

    .line 201
    aget-object v5, v3, v4

    .line 202
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzil;->zzl()Lcom/google/android/gms/internal/ads/zzrn;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 203
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzai(Lcom/google/android/gms/internal/ads/zzil;J)V

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_33
    const/4 v4, 0x0

    :goto_1c
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3a

    .line 204
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzb(I)Z

    move-result v5

    .line 205
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzb(I)Z

    move-result v6

    if-eqz v5, :cond_35

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    .line 206
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzil;->zzG()Z

    move-result v5

    if-nez v5, :cond_35

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzc:[Lcom/google/android/gms/internal/ads/zzim;

    .line 207
    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzim;->zzb()I

    .line 208
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsw;->zzb:[Lcom/google/android/gms/internal/ads/zzin;

    aget-object v5, v5, v4

    .line 209
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzsw;->zzb:[Lcom/google/android/gms/internal/ads/zzin;

    aget-object v9, v9, v4

    if-eqz v6, :cond_34

    .line 210
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzin;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    :cond_34
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    .line 211
    aget-object v5, v5, v4

    .line 212
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzf()J

    move-result-wide v13

    .line 213
    invoke-static {v5, v13, v14}, Lcom/google/android/gms/internal/ads/zzhp;->zzai(Lcom/google/android/gms/internal/ads/zzil;J)V

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 214
    :cond_36
    :goto_1d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 215
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzhv;->zzi:Z

    if-nez v2, :cond_37

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzx:Z

    if-eqz v2, :cond_3a

    :cond_37
    const/4 v2, 0x0

    :goto_1e
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v4, 0x2

    if-ge v2, v4, :cond_3a

    .line 216
    aget-object v3, v3, v2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    .line 217
    aget-object v4, v4, v2

    if-eqz v4, :cond_39

    .line 218
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzil;->zzl()Lcom/google/android/gms/internal/ads/zzrn;

    move-result-object v5

    if-ne v5, v4, :cond_39

    .line 219
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzil;->zzF()Z

    move-result v4

    if-eqz v4, :cond_39

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 220
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzhv;->zze:J

    cmp-long v6, v4, v16

    if-eqz v6, :cond_38

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v6, v4, v19

    if-eqz v6, :cond_38

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 221
    iget-wide v13, v6, Lcom/google/android/gms/internal/ads/zzhv;->zze:J

    add-long/2addr v4, v13

    goto :goto_1f

    :cond_38
    move-wide/from16 v4, v16

    .line 222
    :goto_1f
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhp;->zzai(Lcom/google/android/gms/internal/ads/zzil;J)V

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 223
    :cond_3a
    :goto_20
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 224
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    if-eq v2, v1, :cond_41

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzg:Z

    if-eqz v1, :cond_3b

    goto :goto_23

    .line 226
    :cond_3b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_21
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_40

    .line 229
    aget-object v5, v5, v3

    .line 230
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 231
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzil;->zzl()Lcom/google/android/gms/internal/ads/zzrn;

    move-result-object v6

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    aget-object v9, v9, v3

    .line 232
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzsw;->zzb(I)Z

    move-result v12

    if-eqz v12, :cond_3c

    if-ne v6, v9, :cond_3c

    goto :goto_22

    .line 233
    :cond_3c
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzil;->zzG()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 234
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhp;->zzaj(Lcom/google/android/gms/internal/ads/zzsb;)[Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v23

    .line 235
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    aget-object v24, v6, v3

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zzf()J

    move-result-wide v25

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhu;->zze()J

    move-result-wide v27

    move-object/from16 v22, v5

    .line 238
    invoke-interface/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/zzil;->zzx([Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzrn;JJ)V

    goto :goto_22

    .line 239
    :cond_3d
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzil;->zzL()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 240
    invoke-direct {v11, v5}, Lcom/google/android/gms/internal/ads/zzhp;->zzA(Lcom/google/android/gms/internal/ads/zzil;)V

    goto :goto_22

    :cond_3e
    const/4 v4, 0x1

    :cond_3f
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_40
    if-nez v4, :cond_41

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzB()V

    :cond_41
    :goto_23
    const/4 v1, 0x0

    .line 242
    :goto_24
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzae()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzx:Z

    if-nez v2, :cond_43

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 243
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    if-eqz v2, :cond_43

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 244
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhu;->zzf()J

    move-result-wide v5

    cmp-long v9, v3, v5

    if-ltz v9, :cond_43

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzg:Z

    if-eqz v2, :cond_43

    if-eqz v1, :cond_42

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzJ()V

    :cond_42
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 246
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v12

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zza()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v14

    .line 248
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzhv;->zzb:J

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzhv;->zzc:J

    const/4 v9, 0x1

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v22, v3

    move-wide v3, v5

    move-wide/from16 v24, v5

    move-wide/from16 v5, v22

    move-wide/from16 v29, v7

    move-wide/from16 v7, v24

    const/4 v13, 0x3

    move/from16 v10, v19

    .line 249
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzhp;->zzz(Lcom/google/android/gms/internal/ads/zzpz;JJJZI)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 250
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzW(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;J)V

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzL()V

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzY()V

    move-wide/from16 v7, v29

    const/4 v1, 0x1

    const/4 v10, 0x3

    goto :goto_24

    :cond_43
    :goto_25
    move-wide/from16 v29, v7

    const/4 v13, 0x3

    .line 253
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 254
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    const/4 v2, 0x4

    if-ne v1, v2, :cond_44

    goto/16 :goto_3b

    .line 255
    :cond_44
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 256
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v1

    const-wide/16 v2, 0xa

    if-nez v1, :cond_45

    move-wide/from16 v4, v29

    .line 257
    invoke-direct {v11, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzO(JJ)V

    goto/16 :goto_41

    :cond_45
    move-wide/from16 v4, v29

    const-string v6, "doSomeWork"

    .line 258
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfl;->zza(Ljava/lang/String;)V

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzY()V

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    const-wide/16 v7, 0x3e8

    if-eqz v6, :cond_4d

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    mul-long v9, v9, v7

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 261
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzm:J

    sub-long/2addr v7, v2

    const/4 v2, 0x0

    invoke-interface {v6, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzpy;->zzh(JZ)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_26
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    const/4 v8, 0x2

    if-ge v6, v8, :cond_4e

    aget-object v7, v7, v6

    .line 262
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v12

    if-nez v12, :cond_46

    goto :goto_2c

    :cond_46
    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzH:J

    .line 263
    invoke-interface {v7, v13, v14, v9, v10}, Lcom/google/android/gms/internal/ads/zzil;->zzK(JJ)V

    if-eqz v3, :cond_47

    .line 264
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzil;->zzL()Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v3, 0x1

    goto :goto_27

    :cond_47
    const/4 v3, 0x0

    :goto_27
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    aget-object v13, v13, v6

    .line 265
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzil;->zzl()Lcom/google/android/gms/internal/ads/zzrn;

    move-result-object v14

    if-ne v13, v14, :cond_48

    .line 266
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzil;->zzF()Z

    move-result v24

    if-eqz v24, :cond_48

    const/16 v24, 0x1

    goto :goto_28

    :cond_48
    const/16 v24, 0x0

    :goto_28
    if-ne v13, v14, :cond_4a

    if-nez v24, :cond_4a

    .line 267
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzil;->zzM()Z

    move-result v13

    if-nez v13, :cond_4a

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzil;->zzL()Z

    move-result v13

    if-eqz v13, :cond_49

    goto :goto_29

    :cond_49
    const/4 v13, 0x0

    goto :goto_2a

    :cond_4a
    :goto_29
    const/4 v13, 0x1

    :goto_2a
    if-eqz v2, :cond_4b

    if-eqz v13, :cond_4b

    const/4 v2, 0x1

    goto :goto_2b

    :cond_4b
    const/4 v2, 0x0

    :goto_2b
    if-nez v13, :cond_4c

    .line 268
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzil;->zzp()V

    :cond_4c
    :goto_2c
    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x3

    goto :goto_26

    .line 269
    :cond_4d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhu;->zza:Lcom/google/android/gms/internal/ads/zzpy;

    .line 270
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzpy;->zzj()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 271
    :cond_4e
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 272
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzhv;->zze:J

    if-eqz v3, :cond_51

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-eqz v3, :cond_51

    cmp-long v3, v6, v16

    if-eqz v3, :cond_4f

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 273
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    cmp-long v3, v6, v9

    if-gtz v3, :cond_51

    :cond_4f
    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzx:Z

    if-eqz v3, :cond_50

    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzx:Z

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 274
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    const/4 v7, 0x5

    invoke-direct {v11, v3, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzQ(ZIZI)V

    :cond_50
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 275
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzhv;->zzi:Z

    if-eqz v3, :cond_51

    const/4 v3, 0x4

    .line 276
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzU()V

    goto/16 :goto_35

    .line 278
    :cond_51
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 279
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_58

    iget v7, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzF:I

    if-nez v7, :cond_53

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzac()Z

    move-result v3

    if-eqz v3, :cond_58

    :cond_52
    :goto_2d
    const/4 v2, 0x3

    goto/16 :goto_30

    :cond_53
    if-nez v2, :cond_54

    goto/16 :goto_31

    .line 281
    :cond_54
    iget-boolean v7, v3, Lcom/google/android/gms/internal/ads/zzif;->zzg:Z

    if-eqz v7, :cond_52

    .line 282
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-direct {v11, v3, v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzaf(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzM:Lcom/google/android/gms/internal/ads/zzgb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgb;->zzb()J

    move-result-wide v16

    :cond_55
    move-wide/from16 v29, v16

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 283
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzc()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhu;->zzr()Z

    move-result v7

    if-eqz v7, :cond_56

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzhv;->zzi:Z

    if-eqz v7, :cond_56

    const/4 v7, 0x1

    goto :goto_2e

    :cond_56
    const/4 v7, 0x0

    .line 285
    :goto_2e
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbf;->zzb()Z

    move-result v8

    if-eqz v8, :cond_57

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzhu;->zzd:Z

    if-nez v3, :cond_57

    const/4 v3, 0x1

    goto :goto_2f

    :cond_57
    const/4 v3, 0x0

    :goto_2f
    if-nez v7, :cond_52

    if-nez v3, :cond_52

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzt()J

    move-result-wide v25

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzn:Lcom/google/android/gms/internal/ads/zzge;

    .line 287
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzge;->zzc()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzbn;->zzc:F

    iget-boolean v8, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzy:Z

    move-object/from16 v24, v3

    move/from16 v27, v7

    move/from16 v28, v8

    .line 288
    invoke-interface/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzhs;->zzg(JFZJ)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_2d

    .line 289
    :goto_30
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    iput-object v15, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzK:Lcom/google/android/gms/internal/ads/zzgg;

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzae()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 291
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzS()V

    goto :goto_35

    :cond_58
    :goto_31
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 292
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_5d

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzF:I

    if-nez v3, :cond_59

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzac()Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_32

    :cond_59
    if-nez v2, :cond_5d

    .line 294
    :goto_32
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzae()Z

    move-result v2

    iput-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzy:Z

    const/4 v2, 0x2

    .line 295
    invoke-direct {v11, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzy:Z

    if-eqz v3, :cond_5c

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 296
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhx;->zzd()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v3

    :goto_33
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhu;->zzi()Lcom/google/android/gms/internal/ads/zzsw;

    move-result-object v6

    .line 297
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzsw;->zze:[Lcom/google/android/gms/internal/ads/zzsb;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_34
    if-ge v8, v7, :cond_5a

    aget-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_5a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhu;->zzh()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v3

    goto :goto_33

    :cond_5b
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzM:Lcom/google/android/gms/internal/ads/zzgb;

    .line 298
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgb;->zzc()V

    .line 299
    :cond_5c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzU()V

    .line 300
    :cond_5d
    :goto_35
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 301
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_61

    const/4 v3, 0x0

    :goto_36
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    if-ge v3, v2, :cond_5f

    aget-object v6, v6, v3

    .line 302
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzhp;->zzab(Lcom/google/android/gms/internal/ads/zzil;)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    aget-object v6, v6, v3

    .line 303
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzil;->zzl()Lcom/google/android/gms/internal/ads/zzrn;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzhu;->zzc:[Lcom/google/android/gms/internal/ads/zzrn;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_5e

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzhp;->zza:[Lcom/google/android/gms/internal/ads/zzil;

    aget-object v6, v6, v3

    .line 304
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzil;->zzp()V

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x2

    goto :goto_36

    :cond_5f
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 305
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzg:Z

    if-nez v3, :cond_61

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    const-wide/32 v8, 0x7a120

    cmp-long v1, v6, v8

    if-gez v1, :cond_61

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzaa()Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_37

    .line 307
    :cond_60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    .line 308
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_61
    :goto_37
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzE:Z

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 310
    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/zzif;->zzo:Z

    if-eq v1, v6, :cond_62

    .line 311
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzif;->zzc(Z)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 312
    :cond_62
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzae()Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_64

    :cond_63
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_66

    :cond_64
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzE:Z

    if-eqz v1, :cond_65

    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzD:Z

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    const/16 v18, 0x0

    goto :goto_38

    :cond_65
    const-wide/16 v1, 0xa

    .line 313
    invoke-direct {v11, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzO(JJ)V

    const/4 v1, 0x1

    const/16 v18, 0x1

    :goto_38
    xor-int/lit8 v2, v18, 0x1

    goto :goto_3a

    :cond_66
    iget v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzF:I

    if-eqz v2, :cond_67

    const/4 v2, 0x4

    if-eq v1, v2, :cond_67

    const-wide/16 v1, 0x3e8

    .line 314
    invoke-direct {v11, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzO(JJ)V

    goto :goto_39

    :cond_67
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v2, 0x2

    .line 315
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zze(I)V

    :goto_39
    const/4 v2, 0x0

    .line 316
    :goto_3a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 317
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzif;->zzp:Z

    if-eq v3, v2, :cond_68

    new-instance v3, Lcom/google/android/gms/internal/ads/zzif;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzif;->zzb:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzif;->zzc:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzif;->zzd:J

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzif;->zze:I

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzif;->zzf:Lcom/google/android/gms/internal/ads/zzgg;

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzif;->zzg:Z

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzif;->zzh:Lcom/google/android/gms/internal/ads/zzch;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzif;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    move/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzj:Ljava/util/List;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzk:Lcom/google/android/gms/internal/ads/zzpz;

    move-object/from16 v19, v2

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzl:Z

    move/from16 v20, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzm:I

    move/from16 v36, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzif;->zzn:Lcom/google/android/gms/internal/ads/zzbn;

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzif;->zzq:J

    move-wide/from16 v38, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzif;->zzr:J

    move-wide/from16 v40, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzif;->zzs:J

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zzo:Z

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move-object/from16 v29, v12

    move/from16 v30, v13

    move-object/from16 v33, v17

    move-object/from16 v34, v19

    move/from16 v35, v20

    move-object/from16 v37, v2

    move-wide/from16 v42, v14

    move/from16 v44, v1

    move/from16 v45, v16

    .line 318
    invoke-direct/range {v21 .. v45}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Lcom/google/android/gms/internal/ads/zzcd;Lcom/google/android/gms/internal/ads/zzpz;JJILcom/google/android/gms/internal/ads/zzgg;ZLcom/google/android/gms/internal/ads/zzch;Lcom/google/android/gms/internal/ads/zzsw;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzpz;ZILcom/google/android/gms/internal/ads/zzbn;JJJZZ)V

    iput-object v3, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    :cond_68
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzD:Z

    .line 319
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfl;->zzb()V

    goto/16 :goto_41

    .line 320
    :cond_69
    :goto_3b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v2, 0x2

    .line 321
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zze(I)V

    goto/16 :goto_41

    .line 322
    :pswitch_18
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_6a

    const/4 v2, 0x1

    goto :goto_3c

    :cond_6a
    const/4 v2, 0x0

    :goto_3c
    iget v1, v1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    invoke-direct {v11, v2, v1, v3, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzQ(ZIZI)V

    goto/16 :goto_41

    :pswitch_19
    const/4 v2, 0x4

    .line 323
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzu:Lcom/google/android/gms/internal/ads/zzhn;

    const/4 v3, 0x1

    .line 324
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhn;->zza(I)V

    const/4 v1, 0x0

    .line 325
    invoke-direct {v11, v1, v1, v1, v3}, Lcom/google/android/gms/internal/ads/zzhp;->zzK(ZZZZ)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 326
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhs;->zzb()V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 327
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcd;->zzo()Z

    move-result v1

    const/4 v3, 0x1

    if-eq v3, v1, :cond_6b

    const/4 v9, 0x2

    goto :goto_3d

    :cond_6b
    const/4 v9, 0x4

    :goto_3d
    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/ads/zzhp;->zzR(I)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzr:Lcom/google/android/gms/internal/ads/zzie;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzg:Lcom/google/android/gms/internal/ads/zzte;

    .line 328
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzie;->zzf(Lcom/google/android/gms/internal/ads/zzdx;)V

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v2, 0x2

    .line 329
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzgg; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/google/android/gms/internal/ads/zznc; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/google/android/gms/internal/ads/zzbj; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/google/android/gms/internal/ads/zzdj; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzpd; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_41

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 330
    instance-of v2, v1, Ljava/lang/IllegalStateException;

    const/16 v3, 0x3ec

    if-nez v2, :cond_6d

    instance-of v2, v1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_6c

    goto :goto_3e

    :cond_6c
    const/16 v12, 0x3e8

    goto :goto_3f

    :cond_6d
    :goto_3e
    const/16 v12, 0x3ec

    .line 331
    :goto_3f
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzgg;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    .line 332
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 333
    invoke-direct {v11, v3, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzT(ZZ)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 334
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzif;->zze(Lcom/google/android/gms/internal/ads/zzgg;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    goto :goto_41

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x7d0

    .line 335
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzD(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_2
    move-exception v0

    move-object v1, v0

    const/16 v2, 0x3ea

    .line 336
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzD(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 337
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzdj;->zza:I

    .line 338
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzD(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 339
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzbj;->zzb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6f

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzbj;->zza:Z

    if-eq v3, v2, :cond_6e

    const/16 v12, 0xbbb

    goto :goto_40

    :cond_6e
    const/16 v12, 0xbb9

    goto :goto_40

    :cond_6f
    const/16 v12, 0x3e8

    .line 340
    :goto_40
    invoke-direct {v11, v1, v12}, Lcom/google/android/gms/internal/ads/zzhp;->zzD(Ljava/io/IOException;I)V

    goto :goto_41

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 341
    iget v2, v1, Lcom/google/android/gms/internal/ads/zznc;->zza:I

    .line 342
    invoke-direct {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzD(Ljava/io/IOException;I)V

    :cond_70
    :goto_41
    const/4 v3, 0x1

    goto :goto_42

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 343
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzgg;->zze:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_71

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzq:Lcom/google/android/gms/internal/ads/zzhx;

    .line 344
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhx;->zze()Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v2

    if-eqz v2, :cond_71

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhu;->zzf:Lcom/google/android/gms/internal/ads/zzhv;

    .line 345
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhv;->zza:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgg;->zza(Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzgg;

    move-result-object v1

    :cond_71
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzgg;->zzk:Z

    if-eqz v2, :cond_72

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzK:Lcom/google/android/gms/internal/ads/zzgg;

    if-nez v2, :cond_72

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Recoverable renderer error"

    .line 346
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzep;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzK:Lcom/google/android/gms/internal/ads/zzgg;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v3, 0x19

    .line 347
    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object v1

    .line 348
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzj(Lcom/google/android/gms/internal/ads/zzeh;)Z

    goto :goto_41

    .line 349
    :cond_72
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzK:Lcom/google/android/gms/internal/ads/zzgg;

    if-eqz v2, :cond_73

    move-object v1, v2

    :cond_73
    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Playback error"

    .line 350
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 351
    invoke-direct {v11, v3, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzT(ZZ)V

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 352
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzif;->zze(Lcom/google/android/gms/internal/ads/zzgg;)Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzhp;->zzt:Lcom/google/android/gms/internal/ads/zzif;

    .line 353
    :goto_42
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhp;->zzJ()V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzb()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzj:Landroid/os/Looper;

    return-object v0
.end method

.method public final synthetic zzd()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzv:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzrp;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzpy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x9

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zza(I)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzcd;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzho;-><init>(Lcom/google/android/gms/internal/ads/zzcd;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final declared-synchronized zzm(Lcom/google/android/gms/internal/ads/zzii;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzv:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzi:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/16 v1, 0xe

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzb(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzh(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzn(ZI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzei;->zzc(III)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final zzo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zza(I)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method

.method public final declared-synchronized zzp()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzv:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzi:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    const/4 v1, 0x7

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzh(I)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhg;-><init>(Lcom/google/android/gms/internal/ads/zzhp;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhp;->zzZ(Lcom/google/android/gms/internal/ads/zzfqs;J)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzv:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzq(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzrq;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzic;",
            ">;IJ",
            "Lcom/google/android/gms/internal/ads/zzrq;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzhk;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzhk;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzrq;IJLcom/google/android/gms/internal/ads/zzhj;[B)V

    const/16 p1, 0x11

    invoke-interface {v0, p1, v9}, Lcom/google/android/gms/internal/ads/zzei;->zzb(ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeh;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzeh;->zza()V

    return-void
.end method
