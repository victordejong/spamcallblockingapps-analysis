.class Lcom/google/android/gms/measurement/internal/zzkd;
.super Lcom/google/android/gms/measurement/internal/zzgn;
.source "SourceFile"


# instance fields
.field public final zzf:Lcom/google/android/gms/measurement/internal/zzkn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkn;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zzN()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzgn;-><init>(Lcom/google/android/gms/measurement/internal/zzfu;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkd;->zzf:Lcom/google/android/gms/measurement/internal/zzkn;

    return-void
.end method
