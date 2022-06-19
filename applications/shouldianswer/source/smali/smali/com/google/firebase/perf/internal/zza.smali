.class public Lcom/google/firebase/perf/internal/zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/internal/zza$zza;
    }
.end annotation


# static fields
.field private static volatile zzaw:Lcom/google/firebase/perf/internal/zza;


# instance fields
.field private mRegistered:Z

.field private zzax:Lcom/google/firebase/perf/internal/zzf;

.field private final zzay:Lcom/google/android/gms/internal/firebase-perf/zzan;

.field private zzaz:Z

.field private final zzba:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private zzbb:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private zzbc:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private final zzbd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzbe:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzbf:Lcom/google/android/gms/internal/firebase-perf/zzbj;

.field private zzbg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/zza$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzbh:Z

.field private zzbi:Landroidx/core/app/e;

.field private final zzbj:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/perf/metrics/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/zza;->mRegistered:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/zza;->zzaz:Z

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzba:Ljava/util/WeakHashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbd:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbe:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzbj;->zzik:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    iput-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbf:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbg:Ljava/util/Set;

    .line 19
    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbh:Z

    .line 20
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbj:Ljava/util/WeakHashMap;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/google/firebase/perf/internal/zza;->zzax:Lcom/google/firebase/perf/internal/zzf;

    .line 22
    iput-object p2, p0, Lcom/google/firebase/perf/internal/zza;->zzay:Lcom/google/android/gms/internal/firebase-perf/zzan;

    .line 23
    invoke-static {}, Lcom/google/firebase/perf/internal/zza;->zzu()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbh:Z

    .line 24
    iget-boolean p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbh:Z

    if-eqz p1, :cond_0

    .line 25
    new-instance p1, Landroidx/core/app/e;

    invoke-direct {p1}, Landroidx/core/app/e;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbi:Landroidx/core/app/e;

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/firebase/perf/internal/zzf;)Lcom/google/firebase/perf/internal/zza;
    .locals 3

    .line 5
    sget-object p0, Lcom/google/firebase/perf/internal/zza;->zzaw:Lcom/google/firebase/perf/internal/zza;

    if-nez p0, :cond_1

    .line 6
    const-class p0, Lcom/google/firebase/perf/internal/zza;

    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lcom/google/firebase/perf/internal/zza;->zzaw:Lcom/google/firebase/perf/internal/zza;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/firebase/perf/internal/zza;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/firebase-perf/zzan;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-perf/zzan;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/perf/internal/zza;-><init>(Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;)V

    sput-object v0, Lcom/google/firebase/perf/internal/zza;->zzaw:Lcom/google/firebase/perf/internal/zza;

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/perf/internal/zza;->zzaw:Lcom/google/firebase/perf/internal/zza;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-perf/zzbj;)V
    .locals 3

    .line 121
    iput-object p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbf:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    .line 122
    iget-object p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbg:Ljava/util/Set;

    monitor-enter p1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbg:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/internal/zza$zza;

    if-eqz v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/google/firebase/perf/internal/zza;->zzbf:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    invoke-interface {v1, v2}, Lcom/google/firebase/perf/internal/zza$zza;->zzb(Lcom/google/android/gms/internal/firebase-perf/zzbj;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 129
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 3

    .line 132
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/zza;->zzt()V

    .line 133
    invoke-static {}, Lcom/google/android/gms/internal/firebase-perf/zzcp;->zzez()Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzac(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object p1

    .line 135
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzai(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object p1

    .line 136
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzk(Lcom/google/android/gms/internal/firebase-perf/zzaz;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzaj(J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object p1

    .line 137
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzbl()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/internal/SessionManager;->zzbm()Lcom/google/firebase/perf/internal/zzt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/internal/zzt;->zzay()Lcom/google/android/gms/internal/firebase-perf/zzch;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzb(Lcom/google/android/gms/internal/firebase-perf/zzch;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/google/firebase/perf/internal/zza;->zzbe:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p2

    .line 139
    iget-object p3, p0, Lcom/google/firebase/perf/internal/zza;->zzbd:Ljava/util/Map;

    monitor-enter p3

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbd:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    if-eqz p2, :cond_0

    .line 142
    sget-object v0, Lcom/google/android/gms/internal/firebase-perf/zzap;->zzgx:Lcom/google/android/gms/internal/firebase-perf/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzap;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/firebase-perf/zzcp$zza;

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/perf/internal/zza;->zzbd:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 144
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object p2, p0, Lcom/google/firebase/perf/internal/zza;->zzax:Lcom/google/firebase/perf/internal/zzf;

    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzeh$zza;->zzgm()Lcom/google/android/gms/internal/firebase-perf/zzfr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-perf/zzeh;

    check-cast p1, Lcom/google/android/gms/internal/firebase-perf/zzcp;

    sget-object p3, Lcom/google/android/gms/internal/firebase-perf/zzbj;->zzil:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/internal/zzf;->zza(Lcom/google/android/gms/internal/firebase-perf/zzcp;Lcom/google/android/gms/internal/firebase-perf/zzbj;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 144
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zza(Z)V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/zza;->zzt()V

    .line 149
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzax:Lcom/google/firebase/perf/internal/zzf;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/zzf;->zzb(Z)V

    :cond_0
    return-void
.end method

.method private final zza(Landroid/app/Activity;)Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbh:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static zzb(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "_st_"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static zzq()Lcom/google/firebase/perf/internal/zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/internal/zza;->zzaw:Lcom/google/firebase/perf/internal/zza;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/firebase/perf/internal/zza;->zzaw:Lcom/google/firebase/perf/internal/zza;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/google/firebase/perf/internal/zza;->zza(Lcom/google/firebase/perf/internal/zzf;)Lcom/google/firebase/perf/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method private final zzt()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzax:Lcom/google/firebase/perf/internal/zzf;

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzax:Lcom/google/firebase/perf/internal/zzf;

    :cond_0
    return-void
.end method

.method private static zzu()Z
    .locals 1

    :try_start_0
    const-string v0, "androidx.core.app.e"

    .line 159
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzba:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbc:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 101
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzba:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-boolean p1, p0, Lcom/google/firebase/perf/internal/zza;->zzaz:Z

    if-eqz p1, :cond_0

    .line 103
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzbj;->zzij:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/zza;->zza(Lcom/google/android/gms/internal/firebase-perf/zzbj;)V

    .line 104
    invoke-direct {p0, v1}, Lcom/google/firebase/perf/internal/zza;->zza(Z)V

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/zza;->zzaz:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzbj;->zzij:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/zza;->zza(Lcom/google/android/gms/internal/firebase-perf/zzbj;)V

    .line 107
    invoke-direct {p0, v1}, Lcom/google/firebase/perf/internal/zza;->zza(Z)V

    .line 108
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzao;->zzgt:Lcom/google/android/gms/internal/firebase-perf/zzao;

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbb:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/zza;->zzbc:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 110
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 111
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzba:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/zza;->zza(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbi:Landroidx/core/app/e;

    invoke-virtual {v0, p1}, Landroidx/core/app/e;->a(Landroid/app/Activity;)V

    .line 46
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/zza;->zzt()V

    .line 47
    new-instance v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-static {p1}, Lcom/google/firebase/perf/internal/zza;->zzb(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/internal/zza;->zzax:Lcom/google/firebase/perf/internal/zzf;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/zza;->zzay:Lcom/google/android/gms/internal/firebase-perf/zzan;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/perf/metrics/Trace;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzan;Lcom/google/firebase/perf/internal/zza;)V

    .line 48
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 49
    iget-object v1, p0, Lcom/google/firebase/perf/internal/zza;->zzbj:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 10

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/zza;->zza(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 53
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbj:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbj:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    if-eqz v0, :cond_8

    .line 56
    iget-object v2, p0, Lcom/google/firebase/perf/internal/zza;->zzbj:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lcom/google/firebase/perf/internal/zza;->zzbi:Landroidx/core/app/e;

    invoke-virtual {v2, p1}, Landroidx/core/app/e;->b(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 62
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    .line 64
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 65
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 66
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    add-int/2addr v4, v8

    const/16 v9, 0x2bc

    if-le v7, v9, :cond_0

    add-int/2addr v6, v8

    :cond_0
    const/16 v9, 0x10

    if-le v7, v9, :cond_1

    add-int/2addr v5, v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    move v5, v4

    move v6, v5

    :cond_3
    if-lez v4, :cond_4

    .line 75
    sget-object v2, Lcom/google/android/gms/internal/firebase-perf/zzap;->zzgy:Lcom/google/android/gms/internal/firebase-perf/zzap;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzap;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v7, v4

    invoke-virtual {v0, v2, v7, v8}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_4
    if-lez v5, :cond_5

    .line 77
    sget-object v2, Lcom/google/android/gms/internal/firebase-perf/zzap;->zzgz:Lcom/google/android/gms/internal/firebase-perf/zzap;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzap;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v7, v5

    invoke-virtual {v0, v2, v7, v8}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    :cond_5
    if-lez v6, :cond_6

    .line 79
    sget-object v2, Lcom/google/android/gms/internal/firebase-perf/zzap;->zzha:Lcom/google/android/gms/internal/firebase-perf/zzap;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzap;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v7, v6

    invoke-virtual {v0, v2, v7, v8}, Lcom/google/firebase/perf/metrics/Trace;->putMetric(Ljava/lang/String;J)V

    .line 80
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-perf/zzbd;->zzg(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "FirebasePerformance"

    .line 82
    invoke-static {p1}, Lcom/google/firebase/perf/internal/zza;->zzb(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x51

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "sendScreenTrace name:"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " _fr_tot:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " _fr_slo:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " _fr_fzn:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_7
    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    .line 85
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzba:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzba:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/google/firebase/perf/internal/zza;->zzba:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 89
    new-instance p1, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbb:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 91
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzbj;->zzik:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/zza;->zza(Lcom/google/android/gms/internal/firebase-perf/zzbj;)V

    .line 92
    invoke-direct {p0, v1}, Lcom/google/firebase/perf/internal/zza;->zza(Z)V

    .line 93
    sget-object p1, Lcom/google/android/gms/internal/firebase-perf/zzao;->zzgs:Lcom/google/android/gms/internal/firebase-perf/zzao;

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzao;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbc:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/zza;->zzbb:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 95
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/internal/zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;J)V
    .locals 5

    .line 34
    iget-object p2, p0, Lcom/google/firebase/perf/internal/zza;->zzbd:Ljava/util/Map;

    monitor-enter p2

    .line 35
    :try_start_0
    iget-object p3, p0, Lcom/google/firebase/perf/internal/zza;->zzbd:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    const-wide/16 v0, 0x1

    if-nez p3, :cond_0

    .line 37
    iget-object p3, p0, Lcom/google/firebase/perf/internal/zza;->zzbd:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/perf/internal/zza;->zzbd:Ljava/util/Map;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/zza$zza;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbg:Ljava/util/Set;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/zza;->zzbg:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(I)V
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/google/firebase/perf/internal/zza;->zzbe:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public final zzb(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/zza$zza;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbg:Ljava/util/Set;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/zza;->zzbg:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/zza;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 28
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 30
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 31
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/google/firebase/perf/internal/zza;->mRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzr()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/zza;->zzaz:Z

    return v0
.end method

.method public final zzs()Lcom/google/android/gms/internal/firebase-perf/zzbj;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zza;->zzbf:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    return-object v0
.end method
