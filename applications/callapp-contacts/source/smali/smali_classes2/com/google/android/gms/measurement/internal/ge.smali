.class final Lcom/google/android/gms/measurement/internal/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/measurement/internal/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gv;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ge;->b:Lcom/google/android/gms/measurement/internal/gv;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/ge;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ge;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/ge;->a:J

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/gv;->a(JZ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ge;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->m()Lcom/google/android/gms/measurement/internal/ik;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
