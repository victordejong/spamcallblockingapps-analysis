.class final Lcom/google/android/gms/internal/ads/btu;
.super Lcom/google/android/gms/internal/ads/oi;
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

.field private final synthetic b:Lcom/google/android/gms/internal/ads/btq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/btq;Lcom/google/android/gms/internal/ads/bsn;)V
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btu;->b:Lcom/google/android/gms/internal/ads/btq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/oi;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btu;->a:Lcom/google/android/gms/internal/ads/bsn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/btq;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/btv;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/btu;-><init>(Lcom/google/android/gms/internal/ads/btq;Lcom/google/android/gms/internal/ads/bsn;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btu;->b:Lcom/google/android/gms/internal/ads/btq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1054
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/btq;->b:Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/btu;->a:Lcom/google/android/gms/internal/ads/bsn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p1, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/buh;->e()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/mt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btu;->b:Lcom/google/android/gms/internal/ads/btq;

    .line 1055
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/btq;->c:Lcom/google/android/gms/internal/ads/mt;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/btu;->a:Lcom/google/android/gms/internal/ads/bsn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast p1, Lcom/google/android/gms/internal/ads/buh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/buh;->e()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btu;->a:Lcom/google/android/gms/internal/ads/bsn;

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

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btu;->a:Lcom/google/android/gms/internal/ads/bsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    check-cast v0, Lcom/google/android/gms/internal/ads/buh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/buh;->a(ILjava/lang/String;)V

    return-void
.end method
