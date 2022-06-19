.class public final Lcom/google/android/gms/common/api/internal/zabr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/zab;

.field public final zab:I

.field public final zac:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zab;ILcom/google/android/gms/common/api/GoogleApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zab;",
            "I",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabr;->zaa:Lcom/google/android/gms/common/api/internal/zab;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabr;->zab:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabr;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method
