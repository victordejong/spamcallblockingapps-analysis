.class public final Lcom/google/android/gms/internal/ads/q33;
.super Lcom/google/android/gms/internal/ads/w13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/w13<",
        "Lcom/google/android/gms/internal/ads/u93;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/v13;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/o33;

    const-class v2, Lcom/google/android/gms/internal/ads/i13;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/o33;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/u93;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/w13;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/v13;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/u93;->E(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/u93;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/u93;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u93;->C()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/gc3;->b(II)V

    return-void
.end method

.method public final h()Lcom/google/android/gms/internal/ads/u13;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/u13<",
            "Lcom/google/android/gms/internal/ads/x93;",
            "Lcom/google/android/gms/internal/ads/u93;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/p33;

    const-class v1, Lcom/google/android/gms/internal/ads/x93;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/p33;-><init>(Lcom/google/android/gms/internal/ads/q33;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
