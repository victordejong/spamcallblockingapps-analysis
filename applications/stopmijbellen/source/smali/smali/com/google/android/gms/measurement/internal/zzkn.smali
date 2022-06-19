.class public final Lcom/google/android/gms/measurement/internal/zzkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgp;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzkn;


# instance fields
.field private final zzA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzaf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzB:Lcom/google/android/gms/measurement/internal/zzkt;

.field public zza:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzfl;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzes;

.field private zze:Lcom/google/android/gms/measurement/internal/zzai;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzeu;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzkc;

.field private zzh:Lcom/google/android/gms/measurement/internal/zzy;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzkp;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzib;

.field private zzk:Lcom/google/android/gms/measurement/internal/zzjl;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzkf;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzfu;

.field private zzn:Z

.field private zzo:Z

.field private zzp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzq:I

.field private zzr:I

.field private zzs:Z

.field private zzt:Z

.field private zzu:Z

.field private zzv:Ljava/nio/channels/FileLock;

.field private zzw:Ljava/nio/channels/FileChannel;

.field private zzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzko;Lcom/google/android/gms/measurement/internal/zzfu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzn:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkl;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzko;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzC(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkf;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkf;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzl:Lcom/google/android/gms/measurement/internal/zzkf;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzes;

    .line 7
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfl;

    .line 9
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfl;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzA:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzko;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic zzW(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzko;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjl;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjl;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzy;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzib;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzib;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzj:Lcom/google/android/gms/measurement/internal/zzib;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkc;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzke;->zzaa()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzeu;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzf:Lcom/google/android/gms/measurement/internal/zzeu;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzq:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzr:I

    if-eq p1, v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzq:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzr:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzn:Z

    return-void
.end method

.method public static synthetic zzX(Lcom/google/android/gms/measurement/internal/zzkn;)Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object p0
.end method

.method public static final zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzf(Lcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void
.end method

.method public static final zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzkn;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Lcom/google/android/gms/measurement/internal/zzkn;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/zzkn;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Lcom/google/android/gms/measurement/internal/zzkn;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzko;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzko;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzko;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkn;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Lcom/google/android/gms/measurement/internal/zzko;Lcom/google/android/gms/measurement/internal/zzfu;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Lcom/google/android/gms/measurement/internal/zzkn;

    return-object p0
.end method

.method private final zzaa(Ljava/lang/String;J)Z
    .locals 45

    move-object/from16 v1, p0

    const-string v2, "_sc"

    const-string v3, "_sn"

    const-string v4, "_npa"

    const-string v5, "_ai"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkm;

    const/4 v14, 0x0

    .line 3
    invoke-direct {v6, v1, v14}, Lcom/google/android/gms/measurement/internal/zzkm;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzkg;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const/4 v8, 0x0

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    move-wide/from16 v9, p2

    move-object v13, v6

    .line 5
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzW(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/zzkm;)V

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:Ljava/util/List;

    if-eqz v7, :cond_69

    .line 6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_3b

    .line 7
    :cond_0
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzh()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzea;->zzT:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v9

    move-object/from16 v18, v14

    move-object/from16 v20, v18

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:Ljava/util/List;

    .line 10
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "_fr"

    const-string v14, "_et"

    move-object/from16 v23, v4

    const-string v4, "_e"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    if-ge v13, v11, :cond_33

    :try_start_1
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:Ljava/util/List;

    .line 11
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfn;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 12
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v2

    move/from16 v28, v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v2, v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "_err"

    if-eqz v2, :cond_3

    .line 14
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Dropping blacklisted raw event. appId"

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 17
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v13

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 19
    invoke-virtual {v2, v4, v12, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v29

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v31

    const-string v33, "_ev"

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v34

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v36

    const/16 v32, 0xb

    const/16 v35, 0x0

    move-object/from16 v30, v2

    .line 29
    invoke-virtual/range {v29 .. v36}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    :goto_1
    move-object/from16 v30, v5

    move-object v5, v7

    move-wide/from16 v31, v15

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    move/from16 v7, v28

    move/from16 v16, v9

    goto/16 :goto_1a

    .line 30
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzfn;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v13, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzn()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x5

    .line 35
    invoke-static {v2, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 36
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v13

    if-ge v2, v13, :cond_5

    const-string v13, "ad_platform"

    .line 37
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v29

    move-object/from16 v30, v5

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 38
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "admob"

    .line 39
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    const-string v13, "AdMob ad impression logged from app. Potentially duplicative."

    .line 42
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v30

    goto :goto_2

    :cond_5
    move-object/from16 v30, v5

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 44
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Lcom/google/android/gms/measurement/internal/zzfl;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "_c"

    if-nez v2, :cond_a

    :try_start_3
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 45
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    .line 47
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-wide/from16 v31, v15

    .line 48
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v16, v9

    const v9, 0x171c4

    if-eq v15, v9, :cond_8

    const v9, 0x17331

    if-eq v15, v9, :cond_7

    const v9, 0x17333

    if-eq v15, v9, :cond_6

    goto :goto_3

    :cond_6
    const-string v9, "_ui"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const-string v9, "_ug"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x2

    goto :goto_4

    :cond_8
    const-string v9, "_in"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v9, -0x1

    :goto_4
    if-eqz v9, :cond_b

    const/4 v13, 0x1

    if-eq v9, v13, :cond_b

    const/4 v13, 0x2

    if-eq v9, v13, :cond_b

    move-object/from16 v33, v7

    move/from16 v22, v8

    move v13, v10

    move-object/from16 v29, v14

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_a
    move-wide/from16 v31, v15

    move/from16 v16, v9

    :cond_b
    move/from16 v22, v8

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 49
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v29, v14

    const-string v14, "_r"

    if-ge v9, v8, :cond_e

    .line 50
    :try_start_5
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 51
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v13, 0x1

    .line 52
    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 54
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzd(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    const/4 v13, 0x1

    goto :goto_6

    .line 55
    :cond_c
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 56
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v14, 0x1

    .line 57
    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 59
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzd(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    const/4 v15, 0x1

    :cond_d
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, v29

    goto :goto_5

    :cond_e
    if-nez v13, :cond_f

    if-eqz v2, :cond_f

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v8

    .line 61
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v8

    const-string v9, "Marking event as conversion"

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 62
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v13

    move-object/from16 v33, v7

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v7

    .line 66
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v8, 0x1

    .line 67
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 68
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/zzfn;->zzg(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_7

    :cond_f
    move-object/from16 v33, v7

    :goto_7
    if-nez v15, :cond_10

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v8, "Marking event as real-time"

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v9

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->zzn()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v8, 0x1

    .line 76
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 77
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/zzfn;->zzg(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzfn;

    :cond_10
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 78
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzu()J

    move-result-wide v35

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 80
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x1

    move-object/from16 v34, v7

    .line 81
    invoke-virtual/range {v34 .. v42}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/gms/measurement/internal/zzag;->zze:J

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzea;->zzn:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v9, v13, v15}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v9

    move v13, v10

    int-to-long v9, v9

    cmp-long v15, v7, v9

    if-lez v15, :cond_11

    .line 83
    invoke-static {v3, v14}, Lcom/google/android/gms/measurement/internal/zzkn;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    const/16 v19, 0x1

    .line 84
    :goto_8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzku;->zzh(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v2, :cond_18

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 85
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzu()J

    move-result-wide v35

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 87
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v34, v7

    .line 88
    invoke-virtual/range {v34 .. v42}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/gms/measurement/internal/zzag;->zzc:J

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzea;->zzm:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v9, v10, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v14, v7, v9

    if-lez v14, :cond_18

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    .line 91
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v8, "Too many conversions. Not logging as conversion. appId"

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 92
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 93
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 94
    :goto_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v14

    if-ge v7, v14, :cond_14

    .line 95
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/zzfn;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v14

    .line 96
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 97
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfr;

    move-object v10, v9

    move v9, v7

    goto :goto_a

    .line 98
    :cond_12
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v8, 0x1

    :cond_13
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_14
    if-eqz v8, :cond_16

    if-eqz v10, :cond_15

    .line 99
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_b

    :cond_15
    const/4 v10, 0x0

    :cond_16
    if-eqz v10, :cond_17

    .line 100
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 101
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    const-wide/16 v10, 0xa

    .line 102
    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfr;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 103
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 104
    invoke-virtual {v3, v9, v7}, Lcom/google/android/gms/internal/measurement/zzfn;->zzd(ILcom/google/android/gms/internal/measurement/zzfs;)Lcom/google/android/gms/internal/measurement/zzfn;

    goto :goto_b

    .line 105
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    .line 106
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v8, "Did not find conversion parameter. appId"

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 107
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 108
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_b
    if-eqz v2, :cond_20

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zza()Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 111
    :goto_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v11, "currency"

    const-string v14, "value"

    if-ge v7, v10, :cond_1b

    .line 112
    :try_start_6
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    move v8, v7

    goto :goto_d

    .line 113
    :cond_19
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move v9, v7

    :cond_1a
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_1b
    const/4 v7, -0x1

    if-ne v8, v7, :cond_1c

    goto/16 :goto_11

    .line 114
    :cond_1c
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zzi()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v7, "Value must be specified with a numeric type."

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 117
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 118
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/measurement/internal/zzkn;->zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V

    goto :goto_10

    :cond_1d
    const/4 v7, -0x1

    if-ne v9, v7, :cond_1e

    goto :goto_f

    .line 119
    :cond_1e
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1f

    const/4 v9, 0x0

    .line 121
    :goto_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_21

    .line 122
    invoke-virtual {v2, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 123
    invoke-static {v10}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 124
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_e

    .line 125
    :cond_1f
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v9, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 127
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfn;

    .line 129
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzZ(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 130
    invoke-static {v3, v2, v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzY(Lcom/google/android/gms/internal/measurement/zzfn;ILjava/lang/String;)V

    goto :goto_11

    :cond_20
    :goto_10
    const/4 v7, -0x1

    .line 131
    :cond_21
    :goto_11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 132
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 133
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v20, :cond_23

    .line 134
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v14

    sub-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-gtz v2, :cond_23

    .line 135
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 136
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzac(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v12, v13

    move-object/from16 v5, v33

    .line 137
    invoke-virtual {v5, v12, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    move/from16 v8, v22

    const/4 v2, 0x0

    const/16 v20, 0x0

    goto :goto_12

    :cond_22
    move v12, v13

    move-object/from16 v5, v33

    move-object v2, v3

    move/from16 v8, v17

    :goto_12
    move-object/from16 v18, v2

    goto :goto_13

    :cond_23
    move v12, v13

    move-object/from16 v5, v33

    move-object/from16 v18, v3

    move/from16 v8, v17

    :goto_13
    move-object/from16 v14, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v29

    goto/16 :goto_18

    :cond_24
    move v12, v13

    move-object/from16 v5, v33

    move/from16 v8, v22

    goto :goto_13

    :cond_25
    move v12, v13

    move-object/from16 v5, v33

    const-string v2, "_vs"

    .line 138
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 139
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v10, v29

    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_29

    if-eqz v18, :cond_27

    .line 141
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v20

    sub-long v13, v13, v20

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v2, v13, v8

    if-gtz v2, :cond_27

    .line 142
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 143
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzac(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z

    move-result v8

    if-eqz v8, :cond_26

    move/from16 v8, v22

    .line 144
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    const/4 v2, 0x0

    const/16 v18, 0x0

    goto :goto_14

    :cond_26
    move/from16 v8, v22

    move-object v2, v3

    move/from16 v12, v17

    :goto_14
    move-object/from16 v20, v2

    goto :goto_15

    :cond_27
    move/from16 v8, v22

    move-object/from16 v20, v3

    move/from16 v12, v17

    :cond_28
    :goto_15
    move-object/from16 v14, v24

    move-object/from16 v11, v25

    goto/16 :goto_18

    :cond_29
    move/from16 v8, v22

    goto :goto_15

    :cond_2a
    move/from16 v8, v22

    move-object/from16 v10, v29

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 146
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzea;->zzaj:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v2, v9, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "_ab"

    .line 147
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 148
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_28

    if-eqz v18, :cond_28

    .line 150
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v26

    sub-long v13, v13, v26

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v26, 0xfa0

    cmp-long v2, v13, v26

    if-gtz v2, :cond_28

    .line 151
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/zzjz;->zzay()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 152
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzad(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 154
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 155
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v11, v25

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v9

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 157
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 158
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfo;

    move-object/from16 v14, v24

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v13

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 159
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v7, "_si"

    invoke-static {v15, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v7

    if-eqz v9, :cond_2b

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v9

    goto :goto_16

    :cond_2b
    const-string v9, ""

    .line 161
    :goto_16
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2c

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 162
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 163
    invoke-static {v3, v11, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    if-eqz v13, :cond_2d

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v9

    goto :goto_17

    :cond_2d
    const-string v9, ""

    .line 164
    :goto_17
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2e

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 165
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 166
    invoke-static {v3, v14, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    if-eqz v7, :cond_2f

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 167
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-string v9, "_si"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v24

    .line 168
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v9, v7}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_2f
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    const/16 v18, 0x0

    :goto_18
    if-nez v16, :cond_32

    .line 170
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 171
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfn;->zzb()I

    move-result v2

    if-nez v2, :cond_30

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Engagement event does not contain any parameters. appId"

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 174
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 175
    invoke-virtual {v2, v4, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 176
    :cond_30
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 177
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 178
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->zzB(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_31

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Engagement event does not include duration. appId"

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 181
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 182
    invoke-virtual {v2, v4, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 183
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long v9, v31, v9

    move-wide/from16 v31, v9

    .line 184
    :cond_32
    :goto_19
    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zzc:Ljava/util/List;

    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfo;

    move/from16 v7, v28

    invoke-interface {v2, v7, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v17, v17, 0x1

    .line 186
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzf(Lcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    move v10, v12

    :goto_1a
    add-int/lit8 v13, v7, 0x1

    move-object v7, v5

    move-object v3, v11

    move-object v2, v14

    move/from16 v9, v16

    move-object/from16 v4, v23

    move-object/from16 v5, v30

    move-wide/from16 v15, v31

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_33
    move-object v5, v7

    move-object v10, v14

    move-wide/from16 v31, v15

    move/from16 v16, v9

    if-eqz v16, :cond_38

    move/from16 v3, v17

    move-wide/from16 v15, v31

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v3, :cond_37

    .line 187
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v7

    .line 188
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 189
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 190
    invoke-static {v7, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v8

    if-eqz v8, :cond_34

    .line 191
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzi(I)Lcom/google/android/gms/internal/measurement/zzfv;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_34
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 192
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 193
    invoke-static {v7, v10}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v7

    if-eqz v7, :cond_36

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v7

    .line 194
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1c

    :cond_35
    const/4 v7, 0x0

    :goto_1c
    if-eqz v7, :cond_36

    .line 195
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v13, 0x0

    cmp-long v11, v8, v13

    if-lez v11, :cond_36

    .line 196
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v15, v7

    :cond_36
    :goto_1d
    const/4 v7, 0x1

    add-int/2addr v2, v7

    goto :goto_1b

    :cond_37
    move-wide v2, v15

    goto :goto_1e

    :cond_38
    move-wide/from16 v2, v31

    :goto_1e
    const/4 v4, 0x0

    .line 197
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzab(Lcom/google/android/gms/internal/measurement/zzfv;JZ)V

    .line 198
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzb()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v8, "_se"

    if-eqz v7, :cond_3a

    :try_start_7
    const-string v7, "_s"

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    .line 199
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfo;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 200
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 201
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const-string v4, "_sid"

    .line 203
    invoke-static {v5, v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzu(Lcom/google/android/gms/internal/measurement/zzfv;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3b

    const/4 v4, 0x1

    .line 204
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzab(Lcom/google/android/gms/internal/measurement/zzfv;JZ)V

    goto :goto_1f

    .line 205
    :cond_3b
    invoke-static {v5, v8}, Lcom/google/android/gms/measurement/internal/zzkp;->zzu(Lcom/google/android/gms/internal/measurement/zzfv;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3c

    .line 206
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzq(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 209
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_3c
    :goto_1f
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 212
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 213
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 215
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 216
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 217
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 218
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 219
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 220
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzf()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 222
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzj()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v3

    move-object/from16 v4, v23

    .line 225
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 226
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzd()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(J)Lcom/google/android/gms/internal/measurement/zzgg;

    const-wide/16 v7, 0x1

    .line 228
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 229
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgh;

    const/4 v3, 0x0

    .line 230
    :goto_20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzk()I

    move-result v7

    if-ge v3, v7, :cond_3e

    .line 231
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzl(I)Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgh;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 233
    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzm(ILcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_21

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 234
    :cond_3e
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzn(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_3f
    :goto_21
    const-wide v2, 0x7fffffffffffffffL

    .line 235
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzt(J)Lcom/google/android/gms/internal/measurement/zzfv;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzv(J)Lcom/google/android/gms/internal/measurement/zzfv;

    const/4 v2, 0x0

    .line 236
    :goto_22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 237
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzs()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gez v4, :cond_40

    .line 239
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zzt(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 240
    :cond_40
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzu()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-lez v4, :cond_41

    .line 241
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo;->zzf()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzv(J)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 242
    :cond_42
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzac()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 243
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzZ()Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    .line 244
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 245
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v8

    .line 246
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzb()Ljava/util/List;

    move-result-object v9

    .line 247
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzj()Ljava/util/List;

    move-result-object v10

    .line 248
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 249
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 250
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 251
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzY(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzx(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    new-instance v2, Ljava/util/HashMap;

    .line 253
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 254
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzf()Ljava/security/SecureRandom;

    move-result-object v4

    const/4 v7, 0x0

    .line 256
    :goto_23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v8

    if-ge v7, v8, :cond_58

    .line 257
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 258
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v10, "_sr"

    if-eqz v9, :cond_47

    :try_start_8
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 259
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 260
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v11, "_en"

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zzkp;->zzB(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 261
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzao;

    if-nez v11, :cond_43

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 262
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 263
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 264
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    if-eqz v11, :cond_43

    .line 265
    invoke-virtual {v2, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    if-eqz v11, :cond_46

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_46

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    if-eqz v9, :cond_44

    .line 266
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_44

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 267
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    .line 268
    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_45

    .line 269
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_45

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 270
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-string v9, "_efs"

    const-wide/16 v10, 0x1

    .line 271
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    :cond_45
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_46
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    :goto_24
    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_2f

    :cond_47
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 274
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 275
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v11

    const-string v12, "measurement.account.time_zone_offset_minutes"

    .line 276
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 277
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v13, :cond_48

    .line 278
    :try_start_9
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_25

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 279
    :try_start_a
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 280
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 281
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v13, "Unable to parse timezone offset. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 282
    invoke-virtual {v9, v13, v11, v12}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    const-wide/16 v11, 0x0

    .line 283
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzab(JJ)J

    move-result-wide v13

    .line 284
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    move-wide/from16 v17, v11

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    .line 285
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4b

    .line 286
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfo;->zza()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzfs;

    move-object/from16 v16, v9

    .line 287
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 288
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    goto :goto_27

    :cond_49
    const/4 v9, 0x1

    goto :goto_28

    :cond_4a
    move-object/from16 v9, v16

    goto :goto_26

    :cond_4b
    :goto_27
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 289
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 290
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    :goto_28
    if-gtz v9, :cond_4c

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v10

    .line 292
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v10

    const-string v11, "Sample rate must be positive. event, rate"

    .line 293
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto/16 :goto_24

    .line 296
    :cond_4c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzao;

    if-nez v11, :cond_4d

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 297
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 298
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    if-nez v11, :cond_4d

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 300
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 301
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v20, v13

    .line 302
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v13

    .line 303
    invoke-virtual {v11, v12, v15, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 304
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v29

    .line 305
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v30

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    .line 306
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v28, v11

    invoke-direct/range {v28 .. v44}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_29

    :cond_4d
    move-wide/from16 v20, v13

    :goto_29
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 307
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 308
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v13, "_eid"

    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/zzkp;->zzB(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_4e

    const/4 v13, 0x1

    goto :goto_2a

    :cond_4e
    const/4 v13, 0x0

    .line 309
    :goto_2a
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    if-ne v9, v14, :cond_51

    .line 310
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_50

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_4f

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzj:Ljava/lang/Long;

    if-nez v9, :cond_4f

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_50

    :cond_4f
    const/4 v9, 0x0

    .line 312
    invoke-virtual {v11, v9, v9, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 313
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_50
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto/16 :goto_24

    .line 315
    :cond_51
    invoke-virtual {v4, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_53

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 316
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    int-to-long v14, v9

    .line 317
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_52

    const/4 v10, 0x0

    .line 320
    invoke-virtual {v11, v10, v9, v10}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    .line 321
    :cond_52
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v9

    .line 322
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v12

    move-wide/from16 v14, v20

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 323
    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_2e

    :cond_53
    move-object/from16 v16, v4

    move-wide/from16 v14, v20

    .line 324
    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzao;->zzh:Ljava/lang/Long;

    if-eqz v4, :cond_54

    .line 325
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v33, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    goto :goto_2b

    .line 326
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v4

    move-object/from16 v33, v5

    move-object/from16 v20, v6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzp()J

    move-result-wide v5

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move-wide/from16 v11, v17

    invoke-virtual {v4, v5, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzab(JJ)J

    move-result-wide v17

    :goto_2b
    cmp-long v4, v17, v14

    if-eqz v4, :cond_56

    .line 327
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 328
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-string v4, "_efs"

    const-wide/16 v5, 0x1

    .line 329
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v4, v11}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 330
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    int-to-long v11, v9

    .line 331
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v10, v4}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 334
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v11, v23

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v4, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v11

    goto :goto_2c

    :cond_55
    move-object/from16 v11, v23

    .line 335
    :goto_2c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzn()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzao;->zzb(JJ)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    .line 337
    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_56
    move-object/from16 v11, v23

    const-wide/16 v5, 0x1

    .line 338
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 339
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v21

    const/4 v9, 0x0

    invoke-virtual {v11, v12, v9, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zzc(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v10

    .line 340
    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    :goto_2d
    move-object/from16 v4, v33

    .line 341
    :goto_2e
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->zze(ILcom/google/android/gms/internal/measurement/zzfn;)Lcom/google/android/gms/internal/measurement/zzfv;

    :goto_2f
    add-int/lit8 v7, v7, 0x1

    move-object v5, v4

    move-object/from16 v4, v16

    move-object/from16 v6, v20

    goto/16 :goto_23

    :cond_58
    move-object v4, v5

    move-object/from16 v20, v6

    .line 342
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v6

    if-ge v5, v6, :cond_59

    .line 343
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzh()Lcom/google/android/gms/internal/measurement/zzfv;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 344
    :cond_59
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 345
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 346
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzao;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    goto :goto_30

    :cond_5a
    move-object/from16 v2, v20

    goto :goto_31

    :cond_5b
    move-object v4, v5

    move-object v2, v6

    :goto_31
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 347
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 348
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 349
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v5

    if-nez v5, :cond_5c

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v5

    .line 351
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 352
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 353
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    .line 354
    :cond_5c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v6

    if-lez v6, :cond_61

    .line 355
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5d

    .line 356
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzy(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_32

    .line 357
    :cond_5d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzz()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 358
    :goto_32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_5e

    goto :goto_33

    :cond_5e
    move-wide v6, v8

    :goto_33
    cmp-long v8, v6, v10

    if-eqz v8, :cond_5f

    .line 359
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzw(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_34

    .line 360
    :cond_5f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzx()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 361
    :goto_34
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzN()V

    .line 362
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzI()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzS(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 363
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 364
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzu()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 365
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzab()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 366
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzT(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_35

    .line 367
    :cond_60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzU()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 368
    :goto_35
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 369
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 370
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 371
    :cond_61
    :goto_36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzc()I

    move-result v5

    if-lez v5, :cond_65

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 372
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzat()Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 373
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 374
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v5

    if-eqz v5, :cond_63

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zza()Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_37

    .line 375
    :cond_62
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfc;->zzb()J

    move-result-wide v5

    .line 376
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzad(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_38

    .line 377
    :cond_63
    :goto_37
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 378
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfw;->zzP()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_64

    const-wide/16 v5, -0x1

    .line 379
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzad(J)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_38

    .line 380
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v5

    .line 381
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 382
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 383
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    :goto_38
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 385
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 386
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfw;

    move/from16 v8, v19

    invoke-virtual {v5, v4, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzx(Lcom/google/android/gms/internal/measurement/zzfw;Z)Z

    :cond_65
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 387
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkm;->zzb:Ljava/util/List;

    .line 388
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 390
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 391
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 392
    :goto_39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_67

    if-eqz v6, :cond_66

    const-string v7, ","

    .line 393
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_66
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_67
    const-string v6, ")"

    .line 395
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 397
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 398
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_68

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 399
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 400
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 401
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 402
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 403
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 404
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 405
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v5, 0x2

    :try_start_b
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 406
    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3a

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 407
    :try_start_c
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 408
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 410
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    :goto_3a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 412
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 413
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 414
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 415
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    const/4 v2, 0x1

    return v2

    .line 416
    :cond_69
    :goto_3b
    :try_start_d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 417
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 418
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 419
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 420
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 421
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 422
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 423
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 424
    throw v2
.end method

.method private final zzab(Lcom/google/android/gms/internal/measurement/zzfv;JZ)V
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    goto :goto_0

    :cond_0
    const-string v1, "_se"

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzks;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzks;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 10
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 11
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzj()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgg;->zze(J)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgh;

    .line 16
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzu(Lcom/google/android/gms/internal/measurement/zzfv;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 17
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzm(ILcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzn(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfv;

    :goto_3
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 21
    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    if-eq v0, p4, :cond_4

    const-string p1, "lifetime"

    goto :goto_4

    :cond_4
    const-string p1, "session-scoped"

    .line 22
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    iget-object p3, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 24
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final zzac(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfs;->zzd()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzad(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final zzad(Lcom/google/android/gms/internal/measurement/zzfn;Lcom/google/android/gms/internal/measurement/zzfn;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfn;->zzk()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zze()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzA(Lcom/google/android/gms/internal/measurement/zzfo;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs;->zzf()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-wide/16 v0, 0x1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzy(Lcom/google/android/gms/internal/measurement/zzfn;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final zzae()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzG()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzaf()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-wide/32 v1, 0x36ee80

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    sub-long/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 8
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzd()V

    return-void

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzL()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzae()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 13
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 15
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzz:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzH()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 18
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzz()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :cond_4
    :goto_0
    if-eqz v10, :cond_6

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzu()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzu:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 23
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzt:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 26
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzs:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 28
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 29
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v15

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 31
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    move/from16 v17, v10

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzD()J

    move-result-wide v9

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    move-wide/from16 v18, v7

    .line 34
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzF()J

    move-result-wide v6

    .line 35
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_8

    :cond_7
    move-wide v7, v3

    goto/16 :goto_3

    :cond_8
    sub-long/2addr v5, v1

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    .line 37
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long/2addr v15, v1

    .line 38
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v1, v7

    .line 39
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v7, v5, v18

    if-eqz v17, :cond_9

    cmp-long v13, v1, v3

    if-lez v13, :cond_9

    .line 40
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    :cond_9
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 41
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 42
    invoke-virtual {v13, v1, v2, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq(JJ)Z

    move-result v13

    if-nez v13, :cond_a

    add-long v7, v1, v11

    :cond_a
    cmp-long v1, v9, v3

    if-eqz v1, :cond_b

    cmp-long v1, v9, v5

    if-ltz v1, :cond_b

    const/4 v1, 0x0

    .line 43
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    const/16 v2, 0x14

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzB:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v6, 0x0

    .line 44
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzA:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 46
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v1

    mul-long v5, v5, v12

    add-long/2addr v7, v5

    cmp-long v2, v7, v9

    if-gtz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    cmp-long v1, v7, v3

    if-eqz v1, :cond_f

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzq:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v6, 0x0

    .line 52
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 53
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 54
    invoke-virtual {v9, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zzq(JJ)Z

    move-result v9

    if-nez v9, :cond_c

    add-long/2addr v1, v5

    .line 55
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 56
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v7, v1

    cmp-long v1, v7, v3

    if-gtz v1, :cond_d

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzea;->zzv:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 60
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    .line 61
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 63
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzkc;->zzc(J)V

    return-void

    .line 64
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zza()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzd()V

    return-void

    .line 68
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzd()V

    return-void

    .line 72
    :cond_10
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzj()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zzb()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zzg:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 74
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzd()V

    return-void
.end method

.method private final zzag()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    .line 10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 11
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzah(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 12
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzai(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzah(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 8
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 9
    :cond_2
    :goto_0
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v6

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v9

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v15

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v13

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v23

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v21

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v25

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v26

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v27

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/util/List;

    move-result-object v31

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    goto :goto_1

    :cond_3
    move-object/from16 v32, v3

    :goto_1
    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    .line 26
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v15

    move-object/from16 v15, v17

    move-wide/from16 v16, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-wide/from16 v25, v27

    move-object/from16 v27, v31

    move-object/from16 v28, v32

    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    .line 27
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v4, "No app data available; dropping"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method private final zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 5
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private static final zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzY()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzku;->zzf()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzB()V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzat()Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzy()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjk;->zzC()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    .line 8
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto :goto_0

    .line 11
    :cond_1
    :try_start_2
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto :goto_0

    .line 13
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto :goto_0

    .line 15
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto :goto_0

    .line 20
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzP:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v0

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzz()J

    move-result-wide v10

    sub-long v10, v4, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_5

    .line 23
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaa(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 27
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 28
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzy()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_23

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_a

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 32
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 33
    :try_start_6
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 34
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 35
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_7

    .line 36
    :goto_2
    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_4

    .line 37
    :cond_7
    :try_start_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v11, v9

    .line 38
    :goto_3
    :try_start_a
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 39
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v10

    .line 40
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v10

    const-string v12, "Error querying raw events"

    invoke-virtual {v10, v12, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v11, :cond_8

    goto :goto_2

    .line 41
    :cond_8
    :goto_4
    :try_start_b
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v9, v11

    :goto_5
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_9
    throw v0

    .line 43
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzea;->zzf:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzg:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v7

    .line 45
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 46
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 47
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 48
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    if-lez v0, :cond_b

    const/4 v10, 0x1

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 49
    :goto_7
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-lez v7, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    .line 50
    :goto_8
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 51
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 52
    :try_start_c
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "rowid"

    const-string v13, "data"

    const-string v14, "retry_count"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const-string v12, "queue"

    const-string v14, "app_id=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 54
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 55
    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_d

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 57
    :try_start_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-wide/from16 v20, v4

    goto/16 :goto_10

    .line 58
    :cond_d
    :try_start_f
    new-instance v12, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 60
    :goto_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 61
    :try_start_10
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 63
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 64
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-wide/from16 v20, v4

    .line 66
    :goto_a
    :try_start_12
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_10

    .line 67
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 68
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 69
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 70
    :try_start_13
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    array-length v2, v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    add-int/2addr v2, v13

    if-le v2, v7, :cond_e

    goto/16 :goto_e

    .line 71
    :cond_e
    :try_start_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zzaj()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzt(Lcom/google/android/gms/internal/measurement/zzlh;[B)Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfv;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v3, 0x2

    .line 72
    :try_start_15
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 73
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzah(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 74
    :cond_f
    array-length v0, v0

    add-int/2addr v13, v0

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_2
    move-exception v0

    .line 76
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_d

    :cond_10
    const/4 v5, 0x0

    .line 80
    :try_start_16
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-wide/from16 v20, v4

    .line 81
    :goto_b
    :try_start_17
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Failed to ungzip content"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-wide/from16 v20, v4

    .line 85
    :goto_c
    :try_start_18
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 88
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :goto_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v0, :cond_12

    if-le v13, v7, :cond_11

    goto :goto_e

    :cond_11
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_9

    .line 90
    :cond_12
    :goto_e
    :try_start_19
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    move-object v0, v12

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    move-wide/from16 v20, v4

    goto :goto_f

    :catchall_2
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_19

    :catch_9
    move-exception v0

    move-wide/from16 v20, v4

    const/4 v11, 0x0

    .line 91
    :goto_f
    :try_start_1a
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    if-eqz v11, :cond_13

    .line 95
    :try_start_1b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_13
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 97
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 99
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 100
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->zzG()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_15
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_18

    const/4 v3, 0x0

    .line 102
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_18

    .line 103
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 104
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_13

    .line 105
    :cond_16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    .line 106
    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    :cond_17
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 107
    :cond_18
    :goto_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu;->zzc()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v2

    .line 108
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzae;->zzw(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 111
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    goto :goto_15

    :cond_19
    const/4 v5, 0x0

    .line 112
    :goto_15
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v7

    .line 113
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v8

    const/4 v9, 0x0

    :goto_16
    if-ge v9, v3, :cond_1e

    .line 114
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbu()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfv;

    .line 115
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    const-wide/32 v11, 0xa414

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfv;->zzK(J)Lcom/google/android/gms/internal/measurement/zzfv;

    move-wide/from16 v11, v20

    .line 117
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfv;->zzr(J)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 118
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzat()Lcom/google/android/gms/measurement/internal/zzz;

    const/4 v13, 0x0

    .line 119
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/zzfv;->zzX(Z)Lcom/google/android/gms/internal/measurement/zzfv;

    if-nez v5, :cond_1a

    .line 120
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzag()Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_1a
    if-nez v7, :cond_1b

    .line 121
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzM()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 122
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzO()Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_1b
    if-nez v8, :cond_1c

    .line 123
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzQ()Lcom/google/android/gms/internal/measurement/zzfv;

    .line 124
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzea;->zzV:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v13, v6, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 125
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 126
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 127
    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzkp;->zzr([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfv;->zzam(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 128
    :cond_1d
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzft;->zzb(Lcom/google/android/gms/internal/measurement/zzfv;)Lcom/google/android/gms/internal/measurement/zzft;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v11

    goto :goto_16

    :cond_1e
    move-wide/from16 v11, v20

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzn()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 130
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 132
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzh(Lcom/google/android/gms/internal/measurement/zzfu;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_1f
    const/4 v0, 0x0

    :goto_17
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 133
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 134
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfu;

    .line 135
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v14

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzp:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v9, 0x0

    .line 137
    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 138
    :try_start_1c
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    if-eqz v7, :cond_20

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v7, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_18

    .line 141
    :cond_20
    new-instance v7, Ljava/util/ArrayList;

    .line 142
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    .line 143
    :goto_18
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 144
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    const-string v4, "?"

    if-lez v3, :cond_21

    const/4 v3, 0x0

    .line 145
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzft;->zza(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    .line 146
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v7, v14

    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 149
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkh;

    .line 150
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 152
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 153
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzer;

    const/4 v15, 0x0

    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v0

    .line 157
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzes;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzep;)V

    .line 158
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzk(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto/16 :goto_1d

    .line 159
    :catch_a
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 161
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1d

    :catchall_3
    move-exception v0

    move-object v9, v11

    :goto_19
    if-eqz v9, :cond_22

    .line 162
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_22
    throw v0

    :cond_23
    move-wide v11, v4

    .line 164
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 165
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzae;->zzz()J

    move-result-wide v3

    sub-long v4, v11, v3

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 169
    :try_start_1e
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 170
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 171
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 172
    :try_start_1f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 173
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 175
    :goto_1a
    :try_start_20
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    goto :goto_1c

    :cond_24
    const/4 v4, 0x0

    .line 176
    :try_start_21
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto :goto_1a

    :catch_b
    move-exception v0

    goto :goto_1b

    :catchall_4
    move-exception v0

    goto :goto_1e

    :catch_c
    move-exception v0

    move-object v3, v9

    .line 177
    :goto_1b
    :try_start_22
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    if-eqz v3, :cond_25

    goto :goto_1a

    .line 180
    :cond_25
    :goto_1c
    :try_start_23
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 181
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 182
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 183
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzD(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    :cond_26
    :goto_1d
    const/4 v2, 0x0

    .line 184
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v9, v3

    :goto_1e
    if-eqz v9, :cond_27

    .line 185
    :try_start_24
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_27
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    .line 187
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzu:Z

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    .line 189
    throw v0
.end method

.method public final zzC(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    const/4 p4, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, p4, [B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_6

    const/16 p1, 0xcc

    :cond_1
    if-nez p2, :cond_6

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 19
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 21
    :try_start_5
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p3

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p3

    const-string v4, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 25
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzy:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 26
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    throw p3

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzy:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzae()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzB()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzz:J

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    .line 38
    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 42
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 43
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 46
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p3

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 49
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 50
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzB(Ljava/util/List;)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 54
    :goto_2
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    return-void

    :catchall_1
    move-exception p1

    .line 56
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzt:Z

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    .line 58
    throw p1
.end method

.method public final zzD(Lcom/google/android/gms/measurement/internal/zzg;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzE(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzE(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzl:Lcom/google/android/gms/measurement/internal/zzkf;

    new-instance v1, Landroid/net/Uri$Builder;

    .line 12
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v3

    .line 22
    :cond_4
    :goto_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzd:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zze:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 24
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "config/app/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 25
    :cond_5
    new-instance v3, Ljava/lang/String;

    .line 26
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 27
    :goto_2
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_instance_id"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 29
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzf()J

    const-wide/32 v5, 0xa414

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gmp_version"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpt;->zzb()Z

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzaD:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "runtime_version"

    const-string v2, "0"

    .line 35
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 38
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 40
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 41
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 42
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 43
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzfl;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_7

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 45
    new-instance v4, Ls/a;

    invoke-direct {v4}, Ls/a;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 46
    invoke-virtual {v4, v1, v2}, Ls/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v10, v4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 47
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzki;

    .line 48
    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 50
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 51
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzer;

    const/4 v9, 0x0

    move-object v5, v2

    .line 54
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzes;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzep;)V

    .line 55
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzk(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 56
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 59
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzE(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    const/16 p2, 0x130

    :cond_1
    if-nez p3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v3, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzM(J)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 13
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 14
    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 17
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjl;->zzd:Lcom/google/android/gms/measurement/internal/zzey;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    .line 21
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    goto/16 :goto_7

    :cond_7
    :goto_1
    const/4 p3, 0x0

    if-eqz p5, :cond_8

    const-string v3, "Last-Modified"

    .line 22
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_2

    :cond_8
    move-object p5, p3

    :goto_2
    if-eqz p5, :cond_9

    .line 23
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 24
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_a

    goto :goto_5

    .line 25
    :cond_a
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 26
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 27
    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzi(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_c

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 29
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    return-void

    .line 31
    :cond_b
    :goto_5
    :try_start_3
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 32
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 33
    invoke-virtual {p4, p1}, Lcom/google/android/gms/measurement/internal/zzfl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object p4

    if-nez p4, :cond_c

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 34
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 35
    invoke-virtual {p4, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfl;->zzi(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_c

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 37
    :cond_c
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzg;->zzK(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 38
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 39
    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    if-ne p2, v5, :cond_d

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 42
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 43
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 46
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzes;->zzb()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzae()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzB()V

    goto :goto_7

    .line 51
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    .line 52
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 56
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 58
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 59
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 60
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzs:Z

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzag()V

    .line 62
    throw p1
.end method

.method public final zzF(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzp:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzG()V
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzo:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzo:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzH()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzw:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    const-wide/16 v2, 0x0

    const-string v4, "Bad channel to read from"

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 7
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 8
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzA()Lcom/google/android/gms/measurement/internal/zzee;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzee;->zzm()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    if-le v6, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 20
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    if-ge v6, v1, :cond_8

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzw:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    if-eqz v7, :cond_7

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 24
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26
    :try_start_1
    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzap:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v2

    .line 28
    invoke-virtual {v7, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 29
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 30
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 36
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 37
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 41
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final zzH()Z
    .locals 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzea;->zzaf:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzv:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    .line 9
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 10
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzw:Ljava/nio/channels/FileChannel;

    .line 11
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzv:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    return v1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzI(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzy:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzx:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 9
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 24
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzO(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzku;->zzo(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v8, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 9
    invoke-virtual {v7, v9, v4, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v12

    const-string v9, "_ev"

    move-object v5, v0

    .line 13
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzJ(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v13

    if-eqz v13, :cond_6

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 17
    invoke-virtual {v7, v8, v4, v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzC(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v15

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_4

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 20
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v16, v6

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    .line 22
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v17

    const-string v14, "_ev"

    .line 24
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 25
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzku;->zzK(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    .line 27
    :cond_7
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    const-string v6, "_sid"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 28
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    .line 29
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 30
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-string v7, "_sno"

    .line 31
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 32
    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_8

    .line 33
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_9

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v7

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    const-string v10, "Retrieved last session number from database does not contain a valid (long) value"

    .line 36
    invoke-virtual {v7, v10, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 37
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    const-string v7, "_s"

    .line 38
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzao;->zzc:J

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    .line 41
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "Backfill the session number. Last used session number"

    invoke-virtual {v4, v12, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const-wide/16 v6, 0x0

    .line 42
    :goto_2
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkq;

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "_sno"

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_b
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzks;

    .line 45
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 46
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    .line 47
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    move-object v7, v4

    move-object v13, v3

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 50
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 51
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Setting user property"

    .line 52
    invoke-virtual {v0, v7, v6, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 55
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 57
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    move-result v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V

    if-nez v0, :cond_c

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 62
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 64
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v14

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 67
    invoke-virtual/range {v7 .. v14}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 71
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 73
    throw v0
.end method

.method public final zzK(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkq;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 9
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 14
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 18
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 20
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 28
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_0
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 36
    throw p1
.end method

.method public final zzL()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzq:I

    return-void
.end method

.method public final zzM()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzr:I

    return-void
.end method

.method public final zzN()Lcom/google/android/gms/measurement/internal/zzfu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    return-object v0
.end method

.method public final zzO(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 7
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_0

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 10
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzK(J)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 11
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 12
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 14
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzfl;->zze(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v8, :cond_1

    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 17
    :cond_1
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzm:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_2

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v11

    :cond_2
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v8

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->zze()V

    .line 21
    iget v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzn:I

    const/4 v15, 0x1

    if-eqz v8, :cond_3

    if-eq v8, v15, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v13

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    .line 25
    invoke-virtual {v13, v9, v14, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :cond_3
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 26
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 28
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 29
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v13, "_npa"

    .line 30
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v10, "auto"

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzb:Ljava/lang/String;

    .line 31
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x1

    goto :goto_2

    .line 32
    :cond_5
    :goto_0
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v10, :cond_8

    .line 33
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v19, "_npa"

    .line 34
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v15, v10, :cond_6

    const-wide/16 v20, 0x0

    goto :goto_1

    :cond_6
    const-wide/16 v20, 0x1

    :goto_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v20, "auto"

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const-wide/16 v3, 0x1

    move-object v13, v14

    move-object v3, v14

    const/4 v4, 0x0

    move-object/from16 v14, v19

    const/4 v4, 0x1

    move-wide v15, v11

    move-object/from16 v17, v10

    move-object/from16 v18, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_7

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzd:Ljava/lang/Long;

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 36
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2

    :cond_8
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-eqz v9, :cond_9

    .line 37
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v14, "_npa"

    const/16 v17, 0x0

    const-string v18, "auto"

    move-object v13, v3

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzK(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 39
    :cond_9
    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 40
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 41
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v10

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v9

    .line 45
    invoke-virtual {v10, v13, v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 49
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 50
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 53
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 54
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-array v13, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const-string v14, "events"

    .line 56
    invoke-virtual {v10, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string v15, "user_attributes"

    .line 57
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    .line 58
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    .line 59
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    .line 60
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    .line 61
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    .line 62
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    .line 63
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    .line 64
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "consent_settings"

    .line 65
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_a

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v10, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v10, v3, v13}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 68
    :try_start_2
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 70
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v10, "Error deleting application data. appId, error"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 71
    invoke-virtual {v9, v10, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_3
    const/4 v3, 0x0

    :cond_b
    if-eqz v3, :cond_f

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v9

    const-wide/32 v13, -0x80000000

    cmp-long v0, v9, v13

    if-eqz v0, :cond_c

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v9

    move-object/from16 v23, v5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    cmp-long v0, v9, v4

    if-eqz v0, :cond_d

    const/4 v15, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v23, v5

    :cond_d
    const/4 v15, 0x0

    .line 74
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-nez v5, :cond_e

    if-eqz v0, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    :goto_5
    or-int/2addr v3, v15

    if-eqz v3, :cond_10

    new-instance v3, Landroid/os/Bundle;

    .line 77
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    .line 78
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_au"

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 80
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzy(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_6

    :cond_f
    move-object/from16 v23, v5

    .line 81
    :cond_10
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v8, :cond_11

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 83
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_f"

    .line 84
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_7

    .line 85
    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 87
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v4, "_v"

    .line 88
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    const/4 v15, 0x1

    :goto_7
    if-nez v0, :cond_26

    const-wide/32 v3, 0x36ee80

    .line 89
    div-long v8, v11, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    mul-long v8, v8, v3

    const-string v3, "_dac"

    const-string v4, "_r"

    const-string v5, "_c"

    const-string v10, "_et"

    if-nez v15, :cond_24

    .line 90
    :try_start_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v14, "_fot"

    .line 91
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzi()Lcom/google/android/gms/measurement/internal/zzfe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzfe;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_9

    .line 96
    :cond_12
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 97
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 98
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfe;->zza()Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzi()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfd;

    .line 100
    invoke-direct {v9, v8, v0}, Lcom/google/android/gms/measurement/internal/zzfd;-><init>(Lcom/google/android/gms/measurement/internal/zzfe;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 102
    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    move-object/from16 v15, v23

    .line 103
    invoke-direct {v13, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v13

    .line 104
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-nez v13, :cond_14

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzf()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 107
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_14
    const/4 v14, 0x0

    .line 108
    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 109
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_17

    .line 110
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 111
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_19

    .line 112
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 113
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_16

    .line 114
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 115
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfe;->zza()Z

    move-result v13

    if-eqz v13, :cond_16

    new-instance v13, Landroid/content/Intent;

    .line 116
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    .line 118
    invoke-virtual {v0, v14, v13, v9, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 119
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 120
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v13, "Install Referrer Service is"
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v14, "available"

    const-string v15, "not available"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v14

    const/4 v14, 0x1

    if-eq v14, v0, :cond_15

    move-object v14, v15

    goto :goto_8

    :cond_15
    move-object/from16 v14, v16

    .line 121
    :goto_8
    :try_start_6
    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 122
    :try_start_7
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 123
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v8

    .line 124
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v8

    const-string v9, "Exception occurred while binding to Install Referrer Service"

    .line 125
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    .line 127
    :cond_16
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 130
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzi()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Play Service for fetching Install Referrer is unavailable on device"

    .line 133
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    goto :goto_a

    .line 134
    :cond_18
    :goto_9
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzfe;->zza:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzf()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v8, "Install Referrer Reporter was called with invalid app package name"

    .line 137
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 138
    :cond_19
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    new-instance v8, Landroid/os/Bundle;

    .line 140
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v13, 0x1

    .line 141
    invoke-virtual {v8, v5, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    invoke-virtual {v8, v4, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v4, 0x0

    .line 143
    invoke-virtual {v8, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v9, v22

    .line 145
    invoke-virtual {v8, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v21

    .line 146
    invoke-virtual {v8, v15, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v4, 0x1

    .line 147
    invoke-virtual {v8, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v0, :cond_1a

    .line 149
    invoke-virtual {v8, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    :cond_1a
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 151
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 152
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    const-string v4, "first_open_count"

    .line 155
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzE(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v7, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    invoke-virtual {v0, v7, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v22, v10

    :cond_1b
    :goto_b
    const-wide/16 v9, 0x0

    goto/16 :goto_12

    .line 161
    :cond_1c
    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v21, v15

    goto :goto_c

    :catch_2
    move-exception v0

    .line 164
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v13

    .line 165
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v13

    const-string v14, "Package info is null, first open report might be inaccurate. appId"

    move-object/from16 v21, v15

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 166
    invoke-virtual {v13, v14, v15, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_21

    .line 167
    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_21

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    .line 168
    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v13, v9

    if-eqz v0, :cond_1f

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzak:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-nez v0, :cond_1d

    const-wide/16 v13, 0x1

    .line 170
    invoke-virtual {v8, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1d
    :goto_d
    const/4 v15, 0x0

    goto :goto_e

    :cond_1e
    const-wide/16 v13, 0x1

    .line 171
    invoke-virtual {v8, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    :cond_1f
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 172
    :goto_e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v14, "_fi"

    const/4 v7, 0x1

    if-eq v7, v15, :cond_20

    const-wide/16 v15, 0x0

    goto :goto_f

    :cond_20
    const-wide/16 v15, 0x1

    .line 173
    :goto_f
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-object/from16 v7, v21

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_10

    :cond_21
    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v7, v21

    const/4 v10, 0x0

    :goto_10
    :try_start_a
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_11

    :catch_3
    move-exception v0

    .line 177
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v9

    .line 178
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v9

    const-string v13, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    invoke-virtual {v9, v13, v3, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    :goto_11
    if-eqz v9, :cond_1b

    .line 180
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_22

    move-object/from16 v3, v23

    const-wide/16 v13, 0x1

    .line 181
    invoke-virtual {v8, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 182
    :cond_22
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    const-wide/16 v9, 0x1

    .line 183
    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    :goto_12
    cmp-long v0, v4, v9

    if-ltz v0, :cond_23

    .line 184
    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    :cond_23
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v8}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_f"

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 186
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    move-object/from16 v4, v22

    goto :goto_13

    :cond_24
    move-object/from16 v22, v10

    .line 187
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkq;

    const-string v14, "_fvt"

    .line 188
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    new-instance v0, Landroid/os/Bundle;

    .line 192
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v6, 0x1

    .line 193
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v4, v22

    .line 195
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v5, :cond_25

    .line 197
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    :cond_25
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_v"

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 199
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 200
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzT:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    .line 201
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    .line 202
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_fr"

    .line 203
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_e"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 204
    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 205
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_14

    .line 206
    :cond_26
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzi:Z

    if-eqz v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    .line 207
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_cd"

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 209
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 210
    :cond_27
    :goto_14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 211
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 212
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 213
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_0
    move-exception v0

    .line 215
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 216
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 217
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 218
    throw v0

    :cond_28
    return-void
.end method

.method public final zzP(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzai(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzQ(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method

.method public final zzQ(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 21
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 23
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    goto :goto_0

    .line 25
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 27
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzf:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    const/4 p1, 0x1

    .line 29
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzc:J

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 33
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 37
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 38
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 44
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 45
    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    .line 46
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzn(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 52
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 55
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 58
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 62
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_0
    move-exception p1

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 68
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 69
    throw p1
.end method

.method public final zzR(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzai(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzS(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method

.method public final zzS(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaj(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 18
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 27
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 42
    throw p1

    .line 43
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method

.method public final zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 11
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 12
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoj;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzea;->zzal:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v3

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_d

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 13
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 25
    :cond_4
    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 26
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    .line 29
    :cond_5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    .line 31
    :cond_6
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_7

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    .line 33
    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 34
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    .line 35
    :cond_8
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 36
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    .line 38
    :cond_9
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    .line 39
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    .line 40
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 41
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(Ljava/lang/String;)V

    .line 42
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzat:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 43
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    .line 44
    :cond_b
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Z)V

    .line 45
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai(Ljava/lang/Boolean;)V

    .line 46
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 49
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_c
    return-object v0

    .line 50
    :cond_d
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 52
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 53
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 55
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 56
    :cond_e
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 57
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    :cond_f
    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    .line 58
    :cond_10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 62
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 65
    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_12
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 67
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 68
    :cond_13
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 69
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 70
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 71
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 72
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 73
    :cond_15
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 75
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 76
    :cond_16
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_17

    .line 77
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    const/4 v4, 0x1

    .line 78
    :cond_17
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 80
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 81
    :cond_18
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_19

    .line 82
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    const/4 v4, 0x1

    .line 83
    :cond_19
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 84
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 85
    :cond_1a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_1b

    .line 86
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    const/4 v4, 0x1

    .line 87
    :cond_1b
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    .line 88
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    const/4 v4, 0x1

    .line 89
    :cond_1c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 91
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 92
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzea;->zzat:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 93
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_1e

    .line 94
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    const/4 v4, 0x1

    .line 95
    :cond_1e
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    .line 96
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag(Z)V

    const/4 v4, 0x1

    .line 97
    :cond_1f
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_20

    .line 98
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai(Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_20
    move v8, v4

    .line 99
    :goto_4
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_21

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_21

    .line 101
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    goto :goto_5

    :cond_21
    if-eqz v8, :cond_22

    :goto_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_22
    return-object v0
.end method

.method public final zzU(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zze(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 6
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzV(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    return-void
.end method

.method public final zzat()Lcom/google/android/gms/measurement/internal/zzz;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzau()Lcom/google/android/gms/measurement/internal/zzem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    return-object v0
.end method

.method public final zzav()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final zzax()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzay()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzfl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzes;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzes;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzeu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzf:Lcom/google/android/gms/measurement/internal/zzeu;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzh:Lcom/google/android/gms/measurement/internal/zzy;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzib;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzj:Lcom/google/android/gms/measurement/internal/zzib;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzkp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzjl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zzeh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzku;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzfu;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzA:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    new-instance v1, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 13
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 19
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzA:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaf;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    const/4 v5, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v0, "G1"

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzs(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    const-string v1, "Database error"

    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_1

    .line 19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_1
    throw p1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final zzu()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjl;->zze:Lcom/google/android/gms/measurement/internal/zzey;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzl()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzku;->zzf()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjl;->zze:Lcom/google/android/gms/measurement/internal/zzey;

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zzb(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzv(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzah(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzp;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v6

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()J

    move-result-wide v9

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzB()J

    move-result-wide v11

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzF()Z

    move-result v16

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v17

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()J

    move-result-wide v24

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v22

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v26

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v27

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzD()J

    move-result-wide v28

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/util/List;

    move-result-object v31

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v13, v15, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v30

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v32, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v24

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-object/from16 v28, v31

    move-object/from16 v29, v1

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 30
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zza(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzen;->zzd:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 5
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzK(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzku;->zzH(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Lcom/google/android/gms/measurement/internal/zzen;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->zzb()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzea;->zzab:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v1, "_cis"

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v1, "gclid"

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkq;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzJ(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzy(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 5
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 6
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 11
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 12
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 14
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzas;

    .line 15
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 18
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_3
    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 22
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v13, 0x1

    cmp-long v9, v11, v5

    if-gez v9, :cond_4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 28
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 29
    invoke-virtual {v4, v5, v6, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 31
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 32
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 33
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v5, :cond_5

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v6

    .line 35
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v6

    const-string v10, "User property timed out"

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 36
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v15

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 37
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 38
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 39
    invoke-virtual {v6, v10, v14, v13, v15}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v6, :cond_6

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzas;

    .line 40
    invoke-direct {v10, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_6
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 41
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 42
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_2

    :cond_7
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 43
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    if-gez v9, :cond_8

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 50
    invoke-virtual {v4, v5, v6, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 52
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v5, v10

    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 53
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 54
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    .line 55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v6, :cond_9

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v10

    .line 58
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 59
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v15

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 60
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 61
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 62
    invoke-virtual {v10, v13, v14, v8, v15}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 63
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 64
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v3, v10}, Lcom/google/android/gms/measurement/internal/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v8, :cond_a

    .line 65
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 66
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    .line 67
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzp(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_4

    .line 68
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzas;

    .line 69
    invoke-direct {v6, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_5

    :cond_c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 70
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 71
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 72
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    if-gez v9, :cond_d

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 76
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v6

    .line 77
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 79
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 81
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_d
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v5, v6, v3

    .line 83
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v6, v5

    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 84
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzr(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 85
    :goto_6
    new-instance v13, Ljava/util/ArrayList;

    .line 86
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v14, :cond_e

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 88
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkq;->zzb:Ljava/lang/String;

    .line 89
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkq;->zza()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v15

    move-wide v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 90
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 91
    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 94
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 95
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 96
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 97
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 99
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 100
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 101
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :goto_8
    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v4, :cond_10

    .line 103
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkq;

    .line 104
    invoke-direct {v4, v15}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Lcom/google/android/gms/measurement/internal/zzks;)V

    iput-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkq;

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 105
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 106
    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzai;->zzn(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    goto/16 :goto_7

    .line 107
    :cond_11
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 108
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    .line 109
    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_9

    :cond_12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :catchall_0
    move-exception v0

    .line 114
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 115
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 117
    throw v0
.end method

.method public final zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 6
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzz(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v11, :cond_41

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 10
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzfl;->zzj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzm(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 20
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfl;->zzn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    const/16 v14, 0xb

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const/16 v17, 0x0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v4, v12, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v18

    const-string v15, "_ev"

    move-object v12, v3

    move-object v13, v10

    move-object/from16 v16, v2

    .line 24
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 25
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 27
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzL()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzJ()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 32
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzea;->zzy:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v5, v12}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzj()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->zza(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzD(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_3
    return-void

    .line 35
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzen;->zza(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/zzen;

    move-result-object v2

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/String;)I

    move-result v12

    .line 38
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzku;->zzG(Lcom/google/android/gms/measurement/internal/zzen;I)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzen;->zzb()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzn()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    .line 41
    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 43
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 44
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v12

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeh;->zzb()Z

    move-result v13

    if-nez v13, :cond_5

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_5
    const-string v13, "origin="

    .line 47
    invoke-static {v13}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 48
    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 49
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",name="

    .line 50
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 51
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 52
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",params="

    .line 53
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v14, :cond_6

    const/4 v12, 0x0

    goto :goto_1

    .line 54
    :cond_6
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzeh;->zzb()Z

    move-result v16

    if-nez v16, :cond_7

    .line 55
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 56
    :cond_7
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v14

    .line 57
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzeh;->zzf(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 58
    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    const-string v13, "Logging event"

    .line 60
    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 61
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 62
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzai;->zzb()V

    .line 63
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v11, "ecommerce_purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 64
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "refund"

    if-nez v11, :cond_a

    :try_start_1
    const-string v11, "purchase"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 65
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 66
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v11, 0x1

    :goto_4
    const-string v13, "_iap"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 67
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_5

    :cond_b
    move-wide/from16 v28, v8

    move-object v8, v15

    goto/16 :goto_e

    :cond_c
    :goto_5
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v14, "currency"

    .line 68
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "value"

    if-eqz v11, :cond_f

    :try_start_2
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 69
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    const-wide/16 v20, 0x0

    cmpl-double v11, v16, v20

    if-nez v11, :cond_d

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 70
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v20, v15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double v16, v14, v18

    goto :goto_6

    :cond_d
    move-object/from16 v20, v15

    :goto_6
    const-wide/high16 v14, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v11, v16, v14

    if-gtz v11, :cond_e

    const-wide/high16 v14, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v11, v16, v14

    if-ltz v11, :cond_e

    .line 71
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 72
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    neg-long v14, v14

    goto :goto_7

    .line 73
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 75
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 76
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 77
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 79
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_f
    move-object/from16 v20, v15

    :try_start_3
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 81
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 82
    :cond_10
    :goto_7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 83
    invoke-virtual {v13, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "[A-Z]{3}"

    .line 84
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "_ltv_"

    .line 85
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_8
    move-object v13, v11

    goto :goto_9

    .line 86
    :cond_11
    new-instance v11, Ljava/lang/String;

    .line 87
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_9
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 88
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 89
    invoke-virtual {v11, v10, v13}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v11

    if-eqz v11, :cond_13

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 90
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_12

    goto :goto_b

    .line 91
    :cond_12
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v18, Lcom/google/android/gms/measurement/internal/zzks;

    move-object/from16 v16, v13

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v21

    add-long/2addr v11, v14

    .line 93
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object/from16 v14, v16

    move-wide/from16 v28, v8

    move-object/from16 v8, v20

    move-wide/from16 v15, v21

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_a
    move-object/from16 v9, v18

    goto :goto_d

    :cond_13
    :goto_b
    move-wide/from16 v28, v8

    move-object/from16 v16, v13

    move-object/from16 v8, v20

    .line 94
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 95
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v12

    .line 97
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzea;->zzD:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 98
    invoke-virtual {v12, v10, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 99
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 101
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :try_start_4
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v10, v9, v17

    const/16 v17, 0x1

    aput-object v10, v9, v17

    .line 103
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x2

    aput-object v12, v9, v17

    const-string v12, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 104
    invoke-virtual {v13, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 105
    :try_start_5
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 106
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 107
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    const-string v12, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    :goto_c
    new-instance v18, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzay()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object/from16 v14, v16

    move-wide/from16 v15, v19

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_a

    :goto_d
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 110
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 111
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzj(Lcom/google/android/gms/measurement/internal/zzks;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 113
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 114
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v14

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    .line 115
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzeh;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 116
    invoke-virtual {v11, v12, v13, v14, v9}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v13}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v18

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 119
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_e

    :cond_14
    move-wide/from16 v28, v8

    move-object/from16 v8, v20

    :cond_15
    :goto_e
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 120
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzku;->zzh(Ljava/lang/String;)Z

    move-result v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 121
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v11, :cond_16

    const-wide/16 v11, 0x0

    goto :goto_10

    .line 123
    :cond_16
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzap;

    .line 124
    invoke-direct {v12, v11}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    const-wide/16 v13, 0x0

    .line 125
    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 126
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzap;->zza()Ljava/lang/String;

    move-result-object v15

    .line 127
    invoke-virtual {v11, v15}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v11

    .line 128
    instance-of v11, v15, [Landroid/os/Parcelable;

    if-eqz v11, :cond_17

    .line 129
    check-cast v15, [Landroid/os/Parcelable;

    array-length v11, v15

    move-object/from16 p1, v12

    int-to-long v11, v11

    add-long/2addr v13, v11

    move-object/from16 v12, p1

    :cond_17
    move-object/from16 v11, v16

    goto :goto_f

    :cond_18
    move-wide v11, v13

    :goto_10
    const-wide/16 v22, 0x1

    add-long v15, v11, v22

    .line 130
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 131
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzu()J

    move-result-wide v12

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v14, v10

    move/from16 v18, v9

    move/from16 v20, v8

    .line 133
    invoke-virtual/range {v11 .. v21}, Lcom/google/android/gms/measurement/internal/zzai;->zzv(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzag;->zzb:J

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 135
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzea;->zzj:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    const-wide/16 v16, 0x0

    cmp-long v18, v12, v16

    if-lez v18, :cond_1a

    rem-long/2addr v12, v14

    cmp-long v2, v12, v22

    if-nez v2, :cond_19

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzag;->zzb:J

    .line 138
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 139
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 140
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 141
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 142
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 143
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_1a
    if-eqz v9, :cond_1c

    :try_start_6
    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzea;->zzl:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v15, 0x0

    .line 145
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    cmp-long v14, v12, v16

    if-lez v14, :cond_1c

    const-wide/16 v3, 0x3e8

    rem-long/2addr v12, v3

    cmp-long v3, v12, v22

    if-nez v3, :cond_1b

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzag;->zza:J

    .line 148
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 149
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v18

    const/16 v14, 0x10

    const/16 v17, 0x0

    move-object v13, v10

    move-object/from16 v16, v2

    .line 152
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 153
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 154
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 155
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_1c
    if-eqz v8, :cond_1e

    :try_start_7
    iget-wide v13, v11, Lcom/google/android/gms/measurement/internal/zzag;->zzd:J

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzea;->zzk:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v8, v15, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v8

    const v12, 0xf4240

    .line 158
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v12, 0x0

    .line 159
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    int-to-long v4, v8

    sub-long/2addr v13, v4

    const-wide/16 v4, 0x0

    cmp-long v8, v13, v4

    if-lez v8, :cond_1f

    cmp-long v2, v13, v22

    if-nez v2, :cond_1d

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzag;->zzd:J

    .line 162
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 163
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 164
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 165
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 166
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_1e
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    :cond_1f
    :try_start_8
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 168
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v4

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    const-string v8, "_o"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v4, v8, v11}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzku;->zzT(Ljava/lang/String;)Z

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v8, "_r"

    if-eqz v5, :cond_20

    .line 171
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    invoke-virtual {v5, v4, v12, v11}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v11}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    const-string v5, "_s"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 173
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 174
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 175
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 176
    invoke-virtual {v5, v11, v7}, Lcom/google/android/gms/measurement/internal/zzai;->zzk(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v5

    if-eqz v5, :cond_21

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    .line 177
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_21

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    invoke-virtual {v11, v4, v7, v5}, Lcom/google/android/gms/measurement/internal/zzku;->zzL(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 179
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 180
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 182
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 183
    :try_start_a
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 184
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzc()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzea;->zzo:Lcom/google/android/gms/measurement/internal/zzdz;

    .line 185
    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v11

    const v12, 0xf4240

    .line 186
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    .line 187
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 188
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    aput-object v10, v13, v12

    const/4 v12, 0x1

    aput-object v11, v13, v12

    const-string v11, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 189
    invoke-virtual {v7, v6, v11, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    int-to-long v11, v5

    goto :goto_11

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 190
    :try_start_b
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 191
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v5

    .line 192
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    const-string v11, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 193
    invoke-virtual {v5, v11, v12, v7}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x0

    :goto_11
    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-lez v5, :cond_22

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v5

    .line 195
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v5

    const-string v7, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 196
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 197
    invoke-virtual {v5, v7, v13, v11}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    move-object/from16 v32, v6

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-wide/16 v18, 0x0

    move-object v11, v5

    move-object v14, v10

    move-wide/from16 v16, v6

    move-object/from16 v20, v4

    .line 198
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 199
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 200
    invoke-virtual {v2, v10, v4}, Lcom/google/android/gms/measurement/internal/zzai;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 201
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 202
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzai;->zzI(Ljava/lang/String;)J

    move-result-wide v6

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;)I

    move-result v2

    int-to-long v11, v2

    cmp-long v2, v6, v11

    if-ltz v2, :cond_23

    if-eqz v9, :cond_23

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 206
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzm()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 207
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzeh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 209
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzq()Lcom/google/android/gms/measurement/internal/zzku;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzB:Lcom/google/android/gms/measurement/internal/zzkt;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzea;->zzav:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v18

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 212
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzku;->zzM(Lcom/google/android/gms/measurement/internal/zzkt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 213
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    return-void

    :cond_23
    :try_start_c
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzao;

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v11, v2

    move-object v12, v10

    move-wide/from16 v20, v6

    .line 215
    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_12

    .line 216
    :cond_24
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzao;->zzf:J

    .line 217
    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzfu;J)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 218
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/measurement/internal/zzao;->zza(J)Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    .line 219
    :goto_12
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 220
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 221
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzh(Lcom/google/android/gms/measurement/internal/zzao;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzav()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzr()V

    .line 224
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 226
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 227
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 228
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->zzaj()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zza(I)Lcom/google/android/gms/internal/measurement/zzfv;

    const-string v4, "android"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 229
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 230
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 231
    :cond_25
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 232
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 233
    :cond_26
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 234
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 235
    :cond_27
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    const-wide/32 v9, -0x80000000

    cmp-long v4, v6, v9

    if-eqz v4, :cond_28

    long-to-int v4, v6

    .line 236
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzab(I)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 237
    :cond_28
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzJ(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 238
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 239
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 240
    :cond_29
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 241
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 242
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    .line 243
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzap(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 244
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zzb()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzea;->zzag:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 245
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzV()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 246
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzao(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 247
    :cond_2a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzV()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 248
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzan()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 249
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 250
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    goto :goto_13

    .line 251
    :cond_2b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzV()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 252
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzai(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 253
    :cond_2c
    :goto_13
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    const-wide/16 v9, 0x0

    cmp-long v4, v6, v9

    if-eqz v4, :cond_2d

    .line 254
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzR(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 255
    :cond_2d
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzal(J)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 256
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 257
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzax()Landroid/content/Context;

    move-result-object v6

    .line 258
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzea;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 259
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_2e

    goto/16 :goto_16

    .line 260
    :cond_2e
    new-instance v7, Ljava/util/ArrayList;

    .line 261
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzea;->zzO:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v10, 0x0

    .line 262
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzdz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 263
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2f
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "measurement.id."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v11, :cond_2f

    .line 265
    :try_start_d
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_2f

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v9, :cond_2f

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 268
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v10

    .line 269
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v10

    const-string v11, "Too many experiment IDs. Number of IDs"

    .line 270
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_15

    :catch_2
    move-exception v0

    move-object v10, v0

    .line 271
    :try_start_e
    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 272
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v11

    .line 273
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzem;->zze()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v11

    const-string v12, "Experiment ID NumberFormatException"

    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    .line 274
    :cond_30
    :goto_15
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_32

    :cond_31
    :goto_16
    const/4 v7, 0x0

    :cond_32
    if-eqz v7, :cond_33

    .line 275
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzak(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 276
    :cond_33
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 277
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 278
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->zzk(Lcom/google/android/gms/measurement/internal/zzaf;)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    .line 279
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 280
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 281
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf;)Landroid/util/Pair;

    move-result-object v6

    .line 282
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 283
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    if-eqz v7, :cond_34

    .line 284
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 285
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v6, :cond_34

    .line 286
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzN(Z)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_34
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 287
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 288
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 289
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 290
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 291
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 292
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfv;->zzE(I)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 293
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzz()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 294
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzea;->zzat:Lcom/google/android/gms/measurement/internal/zzdz;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 296
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfv;->zzae(J)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_35
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 297
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfu;->zzF()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 298
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    const/4 v6, 0x0

    .line 299
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_36

    .line 300
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzaf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_36
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 301
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 302
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzai;->zzs(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v6

    if-nez v6, :cond_39

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzm:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 303
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzA(Lcom/google/android/gms/measurement/internal/zzaf;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 305
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzo(Ljava/lang/String;)V

    .line 306
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf()Z

    move-result v9

    if-eqz v9, :cond_37

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzk:Lcom/google/android/gms/measurement/internal/zzjl;

    .line 308
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzjl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 309
    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(Ljava/lang/String;)V

    :cond_37
    const-wide/16 v9, 0x0

    .line 310
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzH(J)V

    .line 311
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 312
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 313
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzu(Ljava/lang/String;)V

    .line 314
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzw(J)V

    .line 315
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzy(Ljava/lang/String;)V

    .line 316
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzA(J)V

    .line 317
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzC(J)V

    .line 318
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzG(Z)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzae;->zzn(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 320
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzae(J)V

    .line 321
    :cond_38
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzE(J)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 322
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 323
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzai;->zzt(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 324
    :cond_39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaf;->zzh()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 325
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 326
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 327
    :cond_3a
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 328
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzfv;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    :cond_3b
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 329
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 330
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 331
    :goto_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3c

    .line 332
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->zzj()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v6

    .line 333
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzks;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgg;

    .line 334
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzks;

    iget-wide v9, v7, Lcom/google/android/gms/measurement/internal/zzks;->zzd:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgg;->zza(J)Lcom/google/android/gms/internal/measurement/zzgg;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 335
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 336
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzks;->zze:Ljava/lang/Object;

    invoke-virtual {v7, v6, v9}, Lcom/google/android/gms/measurement/internal/zzkp;->zzc(Lcom/google/android/gms/internal/measurement/zzgg;Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzfv;->zzo(Lcom/google/android/gms/internal/measurement/zzgg;)Lcom/google/android/gms/internal/measurement/zzfv;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_3c
    :try_start_f
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 338
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 339
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjz;->zzaA()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 340
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 341
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 342
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 344
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 345
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 346
    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzkp;->zzr([B)J

    move-result-wide v9

    new-instance v7, Landroid/content/ContentValues;

    .line 347
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 348
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v31

    invoke-virtual {v7, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v13, v30

    invoke-virtual {v7, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "metadata"

    .line 350
    invoke-virtual {v7, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 351
    :try_start_10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v11, "raw_events_metadata"

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 352
    invoke-virtual {v6, v11, v15, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 353
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzf:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzap;

    .line 354
    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 355
    :cond_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 356
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzap;->zza()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_18

    .line 358
    :cond_3e
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 359
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 360
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzfl;->zzk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 361
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzu()J

    move-result-wide v15

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/gms/measurement/internal/zzai;->zzu(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    if-eqz v3, :cond_3f

    iget-wide v3, v4, Lcom/google/android/gms/measurement/internal/zzag;->zze:J

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzea;->zzn:Lcom/google/android/gms/measurement/internal/zzdz;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdz;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_3f

    :goto_18
    const/4 v3, 0x1

    goto :goto_19

    :cond_3f
    const/4 v3, 0x0

    .line 364
    :goto_19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgn;->zzg()V

    .line 365
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzZ()V

    .line 366
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 367
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzkn;->zzi:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 368
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 369
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzkp;->zzf(Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzio;->zzbp()[B

    move-result-object v4

    new-instance v6, Landroid/content/ContentValues;

    .line 370
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    .line 371
    invoke-virtual {v6, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "name"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    .line 372
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "timestamp"

    iget-wide v11, v5, Lcom/google/android/gms/measurement/internal/zzan;->zzd:J

    .line 373
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "data"

    .line 375
    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "realtime"

    .line 376
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 377
    :try_start_12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zze()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v7, v32

    .line 378
    invoke-virtual {v3, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_40

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 379
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 380
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 381
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_1b

    :cond_40
    const-wide/16 v2, 0x0

    .line 382
    :try_start_13
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:J

    goto :goto_1b

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 383
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 384
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzan;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 386
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_1b

    :catch_4
    move-exception v0

    move-object v3, v0

    goto :goto_1a

    :catch_5
    move-exception v0

    move-object v5, v0

    .line 387
    :try_start_14
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgn;->zzs:Lcom/google/android/gms/measurement/internal/zzfu;

    .line 388
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v3

    const-string v6, "Error storing raw event metadata. appId"

    .line 390
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfw;->zzA()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 391
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    throw v5
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 393
    :goto_1a
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v4

    .line 394
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzem;->zzb()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 395
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfv;->zzG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 396
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 397
    :goto_1b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 398
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 399
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzc()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 400
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 401
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzaf()V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzau()Lcom/google/android/gms/measurement/internal/zzem;

    move-result-object v2

    .line 404
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzem;->zzk()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    .line 405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v28

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 406
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzek;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 407
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzai;

    .line 408
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzak(Lcom/google/android/gms/measurement/internal/zzke;)Lcom/google/android/gms/measurement/internal/zzke;

    .line 409
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzai;->zzd()V

    .line 410
    throw v2

    .line 411
    :cond_41
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zzT(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void
.end method
