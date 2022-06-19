.class final Lcom/google/firebase/perf/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcf:Lcom/google/firebase/perf/internal/zzf;

.field private final synthetic zzcu:Lcom/google/android/gms/internal/firebase-perf/zzbj;

.field private final synthetic zzcv:Lcom/google/android/gms/internal/firebase-perf/zzcp;


# direct methods
.method constructor <init>(Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzcp;Lcom/google/android/gms/internal/firebase-perf/zzbj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/perf/internal/zzh;->zzcf:Lcom/google/firebase/perf/internal/zzf;

    iput-object p2, p0, Lcom/google/firebase/perf/internal/zzh;->zzcv:Lcom/google/android/gms/internal/firebase-perf/zzcp;

    iput-object p3, p0, Lcom/google/firebase/perf/internal/zzh;->zzcu:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zzh;->zzcf:Lcom/google/firebase/perf/internal/zzf;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/zzh;->zzcv:Lcom/google/android/gms/internal/firebase-perf/zzcp;

    iget-object v2, p0, Lcom/google/firebase/perf/internal/zzh;->zzcu:Lcom/google/android/gms/internal/firebase-perf/zzbj;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/perf/internal/zzf;->zza(Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzcp;Lcom/google/android/gms/internal/firebase-perf/zzbj;)V

    return-void
.end method
