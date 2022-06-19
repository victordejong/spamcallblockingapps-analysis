.class final synthetic Lcom/google/android/gms/internal/ads/bmr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmi;

.field private final b:Lcom/google/android/gms/internal/ads/cqe;

.field private final c:Lcom/google/android/gms/internal/ads/io;

.field private final d:Ljava/util/List;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/cqe;Lcom/google/android/gms/internal/ads/io;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmr;->a:Lcom/google/android/gms/internal/ads/bmi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bmr;->b:Lcom/google/android/gms/internal/ads/cqe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bmr;->c:Lcom/google/android/gms/internal/ads/io;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bmr;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bmr;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmr;->a:Lcom/google/android/gms/internal/ads/bmi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmr;->b:Lcom/google/android/gms/internal/ads/cqe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bmr;->c:Lcom/google/android/gms/internal/ads/io;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bmr;->d:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bmr;->e:Ljava/lang/String;

    .line 1135
    :try_start_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bmi;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 1136
    :cond_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bmi;->e:Landroid/content/Context;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    .line 2114
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/cqe;->a:Lcom/google/android/gms/internal/ads/mn;

    invoke-static {v5}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/mn;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/io;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2117
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdpq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdpq;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_2 .. :try_end_2} :catch_0

    .line 1140
    :catch_0
    :try_start_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to initialize adapter. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement the initialize() method."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/io;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, ""

    .line 1143
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
