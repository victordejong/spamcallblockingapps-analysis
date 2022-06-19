.class final Lcom/google/android/gms/wearable/internal/q;
.super Lcom/google/android/gms/wearable/internal/do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/do<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Lcom/google/android/gms/wearable/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzay;Lcom/google/android/gms/common/api/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/q;->b:Lcom/google/android/gms/wearable/internal/zzay;

    iput p3, p0, Lcom/google/android/gms/wearable/internal/q;->a:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/do;-><init>(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 0

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/wearable/internal/db;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/q;->b:Lcom/google/android/gms/wearable/internal/zzay;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzay;->zza(Lcom/google/android/gms/wearable/internal/zzay;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/q;->a:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/db;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/bm;

    new-instance v2, Lcom/google/android/gms/wearable/internal/cs;

    invoke-direct {v2, p0}, Lcom/google/android/gms/wearable/internal/cs;-><init>(Lcom/google/android/gms/common/api/internal/d$b;)V

    .line 5
    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/wearable/internal/bm;->b(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;I)V

    return-void
.end method
