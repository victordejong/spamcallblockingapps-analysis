.class final Lcom/google/android/gms/wearable/internal/ct;
.super Lcom/google/android/gms/wearable/internal/cq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/cq<",
        "Lcom/google/android/gms/wearable/a$b;",
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
            "Lcom/google/android/gms/wearable/a$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/cq;-><init>(Lcom/google/android/gms/common/api/internal/d$b;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/internal/zzdk;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/gms/wearable/internal/ds;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzdk;->statusCode:I

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/ck;->a(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 5
    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzdk;->zzdq:Lcom/google/android/gms/wearable/internal/zzah;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/wearable/internal/dr;

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzdk;->zzdq:Lcom/google/android/gms/wearable/internal/zzah;

    invoke-direct {v2, p1}, Lcom/google/android/gms/wearable/internal/dr;-><init>(Lcom/google/android/gms/wearable/c;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/wearable/internal/ds;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/c;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/cq;->a(Ljava/lang/Object;)V

    return-void
.end method
