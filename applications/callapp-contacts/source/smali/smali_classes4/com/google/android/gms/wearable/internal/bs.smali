.class final Lcom/google/android/gms/wearable/internal/bs;
.super Lcom/google/android/gms/wearable/internal/do;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/do<",
        "Lcom/google/android/gms/wearable/k$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic g:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/br;Lcom/google/android/gms/common/api/g;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/bs;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/bs;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/bs;->g:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/do;-><init>(Lcom/google/android/gms/common/api/g;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 2

    .line 8
    new-instance v0, Lcom/google/android/gms/wearable/internal/bt;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/bt;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/common/api/a$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/wearable/internal/db;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bs;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/bs;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/bs;->g:[B

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/internal/db;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wearable/internal/bm;

    new-instance v3, Lcom/google/android/gms/wearable/internal/cz;

    invoke-direct {v3, p0}, Lcom/google/android/gms/wearable/internal/cz;-><init>(Lcom/google/android/gms/common/api/internal/d$b;)V

    .line 5
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/bm;->a(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
