.class final Lcom/google/android/gms/internal/ads/x21;
.super Lcom/google/android/gms/internal/ads/zf;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/yz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yz0<",
            "Lcom/google/android/gms/internal/ads/gg;",
            "Lcom/google/android/gms/internal/ads/s11;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/android/gms/internal/ads/y21;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/y21;Lcom/google/android/gms/internal/ads/yz0;Lcom/google/android/gms/internal/ads/w21;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x21;->c:Lcom/google/android/gms/internal/ads/y21;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zf;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x21;->b:Lcom/google/android/gms/internal/ads/yz0;

    return-void
.end method


# virtual methods
.method public final U4(Lcom/google/android/gms/internal/ads/we;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x21;->c:Lcom/google/android/gms/internal/ads/y21;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/y21;->c(Lcom/google/android/gms/internal/ads/y21;Lcom/google/android/gms/internal/ads/we;)Lcom/google/android/gms/internal/ads/we;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/x21;->b:Lcom/google/android/gms/internal/ads/yz0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    check-cast p1, Lcom/google/android/gms/internal/ads/s11;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/s11;->h()V

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x21;->b:Lcom/google/android/gms/internal/ads/yz0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    check-cast v0, Lcom/google/android/gms/internal/ads/s11;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/s11;->h6(ILjava/lang/String;)V

    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x21;->b:Lcom/google/android/gms/internal/ads/yz0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yz0;->c:Lcom/google/android/gms/internal/ads/b90;

    check-cast v0, Lcom/google/android/gms/internal/ads/s11;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s11;->J1(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method
