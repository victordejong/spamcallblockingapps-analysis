.class abstract Lcom/google/android/gms/measurement/internal/je;
.super Lcom/google/android/gms/measurement/internal/jd;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jd;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/je;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 1000
    iget v0, p1, Lcom/google/android/gms/measurement/internal/jo;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/gms/measurement/internal/jo;->i:I

    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method final u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/je;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final v()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/je;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/je;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/je;->a()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/je;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 2000
    iget v1, v0, Lcom/google/android/gms/measurement/internal/jo;->j:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/measurement/internal/jo;->j:I

    .line 3
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/je;->a:Z

    return-void

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
