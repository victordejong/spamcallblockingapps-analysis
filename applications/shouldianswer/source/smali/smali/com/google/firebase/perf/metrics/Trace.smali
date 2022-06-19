.class public Lcom/google/firebase/perf/metrics/Trace;
.super Lcom/google/firebase/perf/internal/zzb;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/firebase/perf/internal/zzx;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzft:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final zzbk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/internal/zzt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbl:Lcom/google/firebase/perf/internal/GaugeManager;

.field private final zzbq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/zzx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcg:Lcom/google/firebase/perf/internal/zzf;

.field private final zzfm:Lcom/google/firebase/perf/metrics/Trace;

.field private final zzfn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfp:Lcom/google/android/gms/internal/firebase-perf/zzan;

.field private final zzfq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzfr:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->zzfl:Ljava/util/Map;

    .line 226
    new-instance v0, Lcom/google/firebase/perf/metrics/zzd;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/zzd;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 227
    new-instance v0, Lcom/google/firebase/perf/metrics/zzc;

    invoke-direct {v0}, Lcom/google/firebase/perf/metrics/zzc;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/metrics/Trace;->zzft:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Z)V
    .locals 3

    .line 25
    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/internal/zza;->zzq()Lcom/google/firebase/perf/internal/zza;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/google/firebase/perf/internal/zzb;-><init>(Lcom/google/firebase/perf/internal/zza;)V

    .line 26
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbq:Ljava/lang/ref/WeakReference;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfm:Lcom/google/firebase/perf/metrics/Trace;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfn:Ljava/util/List;

    .line 30
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfn:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfo:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfq:Ljava/util/Map;

    .line 33
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfo:Ljava/util/Map;

    const-class v2, Lcom/google/firebase/perf/metrics/zzb;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 34
    const-class v0, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfr:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 35
    const-class v0, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbk:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbk:Ljava/util/List;

    const-class v2, Lcom/google/firebase/perf/internal/zzt;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    if-eqz p2, :cond_1

    .line 39
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcg:Lcom/google/firebase/perf/internal/zzf;

    .line 40
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfp:Lcom/google/android/gms/internal/firebase-perf/zzan;

    .line 41
    iput-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbl:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcg:Lcom/google/firebase/perf/internal/zzf;

    .line 43
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzan;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-perf/zzan;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfp:Lcom/google/android/gms/internal/firebase-perf/zzan;

    .line 44
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzap()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbl:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;ZLcom/google/firebase/perf/metrics/zzd;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 6
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/firebase-perf/zzan;

    invoke-direct {v3}, Lcom/google/android/gms/internal/firebase-perf/zzan;-><init>()V

    .line 7
    invoke-static {}, Lcom/google/firebase/perf/internal/zza;->zzq()Lcom/google/firebase/perf/internal/zza;

    move-result-object v4

    .line 8
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzap()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;Lcom/google/firebase/perf/internal/zza;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;Lcom/google/firebase/perf/internal/zza;)V
    .locals 6

    .line 11
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzap()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;Lcom/google/firebase/perf/internal/zza;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;Lcom/google/firebase/perf/internal/zza;Lcom/google/firebase/perf/internal/GaugeManager;)V
    .locals 0

    .line 13
    invoke-direct {p0, p4}, Lcom/google/firebase/perf/internal/zzb;-><init>(Lcom/google/firebase/perf/internal/zza;)V

    .line 14
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbq:Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    .line 15
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfm:Lcom/google/firebase/perf/metrics/Trace;

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfn:Ljava/util/List;

    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfo:Ljava/util/Map;

    .line 19
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfq:Ljava/util/Map;

    .line 20
    iput-object p3, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfp:Lcom/google/android/gms/internal/firebase-perf/zzan;

    .line 21
    iput-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcg:Lcom/google/firebase/perf/internal/zzf;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbk:Ljava/util/List;

    .line 23
    iput-object p5, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbl:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void
.end method

.method private final hasStarted()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfr:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isStopped()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static zzi(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzj(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/zzb;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/zzb;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/google/firebase/perf/metrics/zzb;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/metrics/zzb;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfo:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 6

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "FirebasePerformance"

    const-string v3, "Trace \'%s\' is started but not stopped when it is destructed!"

    new-array v4, v2, [Ljava/lang/Object;

    .line 167
    iget-object v5, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 168
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, v2}, Lcom/google/firebase/perf/internal/zzb;->zzb(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 173
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 174
    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfq:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getLongMetric(Ljava/lang/String;)J
    .locals 2

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfo:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/metrics/zzb;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/metrics/zzb;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method final getName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    return-object v0
.end method

.method final getSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/internal/zzt;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbk:Ljava/util/List;

    return-object v0
.end method

.method public incrementMetric(Ljava/lang/String;J)V
    .locals 5

    .line 120
    invoke-static {p1}, Lcom/google/firebase/perf/internal/zzq;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "FirebasePerformance"

    if-eqz v0, :cond_0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    aput-object v0, p2, v1

    const-string p1, "Cannot increment metric %s. Metric name is invalid.(%s)"

    .line 123
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 127
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, p2, v1

    const-string p1, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s not started"

    .line 128
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 132
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, p2, v1

    const-string p1, "Cannot increment metric \'%s\' for trace \'%s\' because it\'s been stopped"

    .line 133
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/Trace;->zzj(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/zzb;

    move-result-object p1

    .line 137
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/perf/metrics/zzb;->zzl(J)V

    return-void
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 191
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 194
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v2

    if-nez v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfq:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfq:Ljava/util/Map;

    .line 198
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Exceeds max limit of number of attributes - %d"

    new-array v6, v1, [Ljava/lang/Object;

    .line 200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v0

    .line 201
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v2, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/firebase/perf/internal/zzq;->zza(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_1

    .line 204
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Trace %s has been stopped"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 196
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v1

    const/4 v1, 0x2

    .line 208
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Can not set attribute %s with value %s (%s)"

    .line 209
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebasePerformance"

    .line 210
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfq:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public putMetric(Ljava/lang/String;J)V
    .locals 5

    .line 145
    invoke-static {p1}, Lcom/google/firebase/perf/internal/zzq;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "FirebasePerformance"

    if-eqz v0, :cond_0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    aput-object v0, p2, v1

    const-string p1, "Cannot set value for metric %s. Metric name is invalid.(%s)"

    .line 148
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 152
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, p2, v1

    const-string p1, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s not started"

    .line 153
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 157
    iget-object p1, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object p1, p2, v1

    const-string p1, "Cannot set value for metric \'%s\' for trace \'%s\' because it\'s been stopped"

    .line 158
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/metrics/Trace;->zzj(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/zzb;

    move-result-object p1

    .line 162
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/perf/metrics/zzb;->zzm(J)V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 215
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "FirebasePerformance"

    const-string v0, "Can\'t remove a attribute from a Trace that\'s stopped."

    .line 216
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 7

    .line 46
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "Trace name must not be null"

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_1

    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Trace name must not exceed %d characters"

    .line 52
    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "_"

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzao;->values()[Lcom/google/android/gms/internal/firebase-perf/zzao;

    move-result-object v3

    .line 55
    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 56
    invoke-virtual {v6}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "_st_"

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Trace name must not start with \'_\'"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v3, "FirebasePerformance"

    if-eqz v0, :cond_4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 63
    iget-object v5, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    const-string v0, "Cannot start trace %s. Trace name is invalid.(%s)"

    .line 64
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfr:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    if-eqz v0, :cond_5

    new-array v0, v2, [Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Trace \'%s\' has already started, should not start again!"

    .line 69
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/perf/internal/zzb;->zzaa()V

    .line 73
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzbl()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/SessionManager;->zzbm()Lcom/google/firebase/perf/internal/zzt;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzbl()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v5}, Lcom/google/firebase/perf/internal/SessionManager;->zzc(Ljava/lang/ref/WeakReference;)V

    .line 76
    iget-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbk:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v4, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 79
    iput-object v4, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfr:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/zzt;->zzav()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "Session ID - %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/zzt;->zzax()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbl:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/zzt;->zzaw()Lcom/google/android/gms/internal/firebase-perf/zzaz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/internal/GaugeManager;->zzj(Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    :cond_6
    return-void
.end method

.method public stop()V
    .locals 4

    .line 84
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "FirebasePerformance"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 85
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Trace \'%s\' has not been started so unable to stop!"

    .line 86
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 90
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Trace \'%s\' has already stopped, should not stop again!"

    .line 91
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_1
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzbl()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/SessionManager;->zzd(Ljava/lang/ref/WeakReference;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/firebase/perf/internal/zzb;->zzab()V

    .line 97
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 99
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfm:Lcom/google/firebase/perf/metrics/Trace;

    if-nez v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 101
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 103
    iget-object v2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfn:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/metrics/Trace;

    .line 104
    iget-object v2, v1, Lcom/google/firebase/perf/metrics/Trace;->zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    if-nez v2, :cond_2

    .line 105
    iput-object v0, v1, Lcom/google/firebase/perf/metrics/Trace;->zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzcg:Lcom/google/firebase/perf/internal/zzf;

    if-eqz v0, :cond_4

    .line 108
    new-instance v1, Lcom/google/firebase/perf/metrics/zze;

    invoke-direct {v1, p0}, Lcom/google/firebase/perf/metrics/zze;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/zze;->zzbu()Lcom/google/android/gms/internal/firebase-perf/zzcp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/perf/internal/zzb;->zzs()Lcom/google/android/gms/internal/firebase-perf/zzbj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/internal/zzf;->zza(Lcom/google/android/gms/internal/firebase-perf/zzcp;Lcom/google/android/gms/internal/firebase-perf/zzbj;)V

    .line 109
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzbl()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/SessionManager;->zzbm()Lcom/google/firebase/perf/internal/zzt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/zzt;->zzax()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbl:Lcom/google/firebase/perf/internal/GaugeManager;

    .line 111
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzbl()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/SessionManager;->zzbm()Lcom/google/firebase/perf/internal/zzt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/zzt;->zzaw()Lcom/google/android/gms/internal/firebase-perf/zzaz;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/GaugeManager;->zzj(Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    return-void

    :cond_3
    const-string v0, "Trace name is empty, no log is sent to server"

    .line 113
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 182
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfm:Lcom/google/firebase/perf/metrics/Trace;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 183
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfn:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 185
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfo:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 186
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfr:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 188
    iget-object p2, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbk:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/perf/internal/zzt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/firebase/perf/metrics/Trace;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzbk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final zzbq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/perf/metrics/zzb;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfo:Ljava/util/Map;

    return-object v0
.end method

.method final zzbr()Lcom/google/android/gms/internal/firebase-perf/zzaz;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfr:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    return-object v0
.end method

.method final zzbs()Lcom/google/android/gms/internal/firebase-perf/zzaz;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfs:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    return-object v0
.end method

.method final zzbt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/Trace;->zzfn:Ljava/util/List;

    return-object v0
.end method
