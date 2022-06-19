.class abstract Lcom/google/android/gms/measurement/internal/de;
.super Lcom/google/android/gms/measurement/internal/ef;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private a:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ef;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/de;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/fd;->a(Lcom/google/android/gms/measurement/internal/de;)V

    .line 3
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/de;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->h()Z

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

.method public final j()V
    .locals 2

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/de;->a:Z

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/de;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->F()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/de;->a:Z

    .line 13
    :cond_1
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/de;->a:Z

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->A()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/de;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->F()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/de;->a:Z

    .line 19
    return-void
.end method

.method protected abstract z()Z
.end method
