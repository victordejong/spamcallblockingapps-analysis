.class final Lcom/google/firebase/perf/internal/zzi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcf:Lcom/google/firebase/perf/internal/zzf;

.field private final synthetic zzcw:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/perf/internal/zzf;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/perf/internal/zzi;->zzcf:Lcom/google/firebase/perf/internal/zzf;

    iput-boolean p2, p0, Lcom/google/firebase/perf/internal/zzi;->zzcw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/internal/zzi;->zzcf:Lcom/google/firebase/perf/internal/zzf;

    iget-boolean v1, p0, Lcom/google/firebase/perf/internal/zzi;->zzcw:Z

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/zzf;->zzc(Z)V

    return-void
.end method
