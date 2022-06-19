.class final Lcom/google/android/gms/internal/ads/qz1;
.super Lcom/google/android/gms/internal/ads/k90;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/tw1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/tw1<",
            "Lcom/google/android/gms/internal/ads/r90;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/google/android/gms/internal/ads/sz1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/sz1;Lcom/google/android/gms/internal/ads/tw1;Lcom/google/android/gms/internal/ads/rz1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/tw1<",
            "Lcom/google/android/gms/internal/ads/r90;",
            "Lcom/google/android/gms/internal/ads/my1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qz1;->e:Lcom/google/android/gms/internal/ads/sz1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/k90;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qz1;->d:Lcom/google/android/gms/internal/ads/tw1;

    return-void
.end method


# virtual methods
.method public final E2(Lcom/google/android/gms/internal/ads/h80;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qz1;->e:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/sz1;->c(Lcom/google/android/gms/internal/ads/sz1;Lcom/google/android/gms/internal/ads/h80;)Lcom/google/android/gms/internal/ads/h80;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/qz1;->d:Lcom/google/android/gms/internal/ads/tw1;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    check-cast p1, Lcom/google/android/gms/internal/ads/my1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/my1;->g()V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qz1;->d:Lcom/google/android/gms/internal/ads/tw1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    check-cast v0, Lcom/google/android/gms/internal/ads/my1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/my1;->u6(ILjava/lang/String;)V

    return-void
.end method

.method public final x(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qz1;->d:Lcom/google/android/gms/internal/ads/tw1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tw1;->c:Lcom/google/android/gms/internal/ads/j41;

    check-cast v0, Lcom/google/android/gms/internal/ads/my1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/my1;->i5(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
