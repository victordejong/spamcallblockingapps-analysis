.class final Lcom/google/android/gms/wearable/internal/dq;
.super Lcom/google/android/gms/wearable/internal/do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/do<",
        "Lcom/google/android/gms/wearable/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/dp;Lcom/google/android/gms/common/api/g;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/dq;->a:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/wearable/internal/dq;->b:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/do;-><init>(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/wearable/internal/ds;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/ds;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/c;)V

    return-object v0
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
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/dq;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/dq;->b:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/db;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/bm;

    new-instance v2, Lcom/google/android/gms/wearable/internal/ct;

    invoke-direct {v2, p0}, Lcom/google/android/gms/wearable/internal/ct;-><init>(Lcom/google/android/gms/common/api/internal/d$b;)V

    .line 5
    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/wearable/internal/bm;->a(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;I)V

    return-void
.end method
