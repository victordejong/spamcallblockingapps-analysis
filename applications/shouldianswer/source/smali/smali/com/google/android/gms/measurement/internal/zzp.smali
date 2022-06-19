.class final Lcom/google/android/gms/measurement/internal/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.2.1"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/measurement/zzbr$zzi;

.field private zzd:Ljava/util/BitSet;

.field private zze:Ljava/util/BitSet;

.field private zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Z

    .line 4
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    .line 5
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zze:Ljava/util/BitSet;

    .line 6
    new-instance p1, Landroidx/c/a;

    invoke-direct {p1}, Landroidx/c/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    .line 7
    new-instance p1, Landroidx/c/a;

    invoke-direct {p1}, Landroidx/c/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzbr$zzi;",
            "Ljava/util/BitSet;",
            "Ljava/util/BitSet;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzp;->zze:Ljava/util/BitSet;

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    .line 14
    new-instance p1, Landroidx/c/a;

    invoke-direct {p1}, Landroidx/c/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    if-eqz p7, :cond_0

    .line 16
    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 17
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Z

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    .line 143
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/BitSet;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method final zza(ILjava/util/List;)Lcom/google/android/gms/internal/measurement/zzbr$zza;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzbr$zza;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    .line 50
    iget-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    .line 51
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzi;)Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    .line 53
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzi()Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    .line 54
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zze:Ljava/util/BitSet;

    .line 55
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object p1

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 59
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zze()Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;

    move-result-object v5

    .line 64
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    .line 65
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbr$zzb;

    .line 67
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_2
    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 75
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 76
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zze()Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v5

    .line 79
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 81
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 82
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    .line 83
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v1, v3

    .line 87
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzbs:Lcom/google/android/gms/measurement/internal/zzel;

    .line 89
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 91
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzg()Ljava/util/List;

    move-result-object v3

    .line 95
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_8

    .line 97
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    new-instance v1, Landroidx/c/a;

    invoke-direct {v1}, Landroidx/c/a;-><init>()V

    .line 99
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    .line 100
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 101
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzd()I

    move-result v6

    if-lez v6, :cond_8

    .line 103
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 104
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzd()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 105
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 106
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    move v5, v3

    .line 108
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 109
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    .line 111
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 112
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_a
    move-object v7, v2

    .line 114
    :goto_6
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_d

    if-eqz p2, :cond_b

    .line 117
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 118
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza(I)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_c

    .line 120
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_c
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzc()Ljava/util/List;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v6

    .line 124
    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    .line 125
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza()Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v6

    .line 126
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v6

    .line 127
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    .line 128
    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 130
    :cond_e
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zze()Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v3

    .line 133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v3

    .line 134
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    .line 136
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    move-object v1, v4

    .line 140
    :cond_10
    :goto_8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    .line 141
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbr$zza;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzu;)V
    .locals 8

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zza()I

    move-result v0

    .line 25
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zze:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 27
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 29
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 31
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzbs:Lcom/google/android/gms/measurement/internal/zzel;

    .line 42
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zzb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    :cond_5
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method
