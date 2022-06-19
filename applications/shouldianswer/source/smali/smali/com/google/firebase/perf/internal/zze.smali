.class final Lcom/google/firebase/perf/internal/zze;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcf:Lcom/google/firebase/perf/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/firebase/perf/internal/zzf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/perf/internal/zze;->zzcf:Lcom/google/firebase/perf/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zze;->zzcf:Lcom/google/firebase/perf/internal/zzf;

    invoke-static {v0}, Lcom/google/firebase/perf/internal/zzf;->zzc(Lcom/google/firebase/perf/internal/zzf;)V

    return-void
.end method
