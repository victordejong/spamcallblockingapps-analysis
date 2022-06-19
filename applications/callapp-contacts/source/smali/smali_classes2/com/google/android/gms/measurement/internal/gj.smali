.class final Lcom/google/android/gms/measurement/internal/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/measurement/internal/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gv;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gj;->e:Lcom/google/android/gms/measurement/internal/gv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gj;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/gj;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/gj;->c:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/gj;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gj;->e:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->m()Lcom/google/android/gms/measurement/internal/ik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gj;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gj;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/gj;->d:Z

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
