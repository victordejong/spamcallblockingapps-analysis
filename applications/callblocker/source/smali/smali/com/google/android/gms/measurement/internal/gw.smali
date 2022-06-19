.class final Lcom/google/android/gms/measurement/internal/gw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gw;->e:Lcom/google/android/gms/measurement/internal/gk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gw;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/gw;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/gw;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/gw;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gw;->e:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->t()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gw;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gw;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gw;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/gw;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    return-void
.end method
