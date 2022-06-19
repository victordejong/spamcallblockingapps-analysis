.class final Lcom/google/android/gms/internal/ads/buy;
.super Lcom/google/android/gms/internal/ads/oj;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/bsn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bsn<",
            "Lcom/google/android/gms/internal/ads/os;",
            "Lcom/google/android/gms/internal/ads/buh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/buw;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bsn<",
            "Lcom/google/android/gms/internal/ads/os;",
            "Lcom/google/android/gms/internal/ads/buh;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oj;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/buy;->a:Lcom/google/android/gms/internal/ads/bsn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/buw;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/buv;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/buy;-><init>(Lcom/google/android/gms/internal/ads/buw;Lcom/google/android/gms/internal/ads/bsn;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buy;->a:Lcom/google/android/gms/internal/ads/bsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast v0, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/buh;->e()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buy;->a:Lcom/google/android/gms/internal/ads/bsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast v0, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/buh;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buy;->a:Lcom/google/android/gms/internal/ads/bsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast v0, Lcom/google/android/gms/internal/ads/buh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/buh;->a(ILjava/lang/String;)V

    return-void
.end method
