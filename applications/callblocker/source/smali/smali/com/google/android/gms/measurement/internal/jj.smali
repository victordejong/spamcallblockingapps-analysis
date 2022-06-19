.class final Lcom/google/android/gms/measurement/internal/jj;
.super Lcom/google/android/gms/measurement/internal/j;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/jo;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/jk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jk;Lcom/google/android/gms/measurement/internal/gb;Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jj;->b:Lcom/google/android/gms/measurement/internal/jk;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/jj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/j;-><init>(Lcom/google/android/gms/measurement/internal/gb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jj;->b:Lcom/google/android/gms/measurement/internal/jk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jk;->b()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jj;->b:Lcom/google/android/gms/measurement/internal/jk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->l()V

    .line 5
    return-void
.end method
