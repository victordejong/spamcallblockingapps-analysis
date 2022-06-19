.class abstract Lcom/google/android/gms/measurement/internal/jl;
.super Lcom/google/android/gms/measurement/internal/jm;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jm;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jl;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jl;)V

    .line 3
    return-void
.end method


# virtual methods
.method final J()Z
    .locals 1

    .prologue
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jl;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final K()V
    .locals 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    return-void
.end method

.method public final L()V
    .locals 2

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jl;->b:Z

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->a()Z

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jl;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->n()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jl;->b:Z

    .line 13
    return-void
.end method

.method protected abstract a()Z
.end method
