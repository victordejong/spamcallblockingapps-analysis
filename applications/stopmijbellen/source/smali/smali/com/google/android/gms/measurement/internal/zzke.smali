.class abstract Lcom/google/android/gms/measurement/internal/zzke;
.super Lcom/google/android/gms/measurement/internal/zzkd;
.source "SourceFile"


# instance fields
.field private zza:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkn;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzkn;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzL()V

    return-void
.end method


# virtual methods
.method public final zzY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzZ()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzY()Z

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

.method public abstract zzaA()Z
.end method

.method public final zzaa()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Z

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzke;->zzaA()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zzM()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzke;->zza:Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
