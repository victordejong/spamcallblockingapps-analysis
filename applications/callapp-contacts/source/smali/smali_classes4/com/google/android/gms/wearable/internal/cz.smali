.class final Lcom/google/android/gms/wearable/internal/cz;
.super Lcom/google/android/gms/wearable/internal/cq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/cq<",
        "Lcom/google/android/gms/wearable/k$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d$b<",
            "Lcom/google/android/gms/wearable/k$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/cq;-><init>(Lcom/google/android/gms/common/api/internal/d$b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/internal/zzga;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/wearable/internal/bt;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzga;->statusCode:I

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/ck;->a(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzga;->zzeh:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/wearable/internal/bt;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/cq;->a(Ljava/lang/Object;)V

    return-void
.end method
