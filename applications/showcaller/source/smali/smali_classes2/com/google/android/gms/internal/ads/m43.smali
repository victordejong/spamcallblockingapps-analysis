.class final Lcom/google/android/gms/internal/ads/m43;
.super Lcom/google/android/gms/internal/ads/v13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/v13<",
        "Lcom/google/android/gms/internal/ads/n13;",
        "Lcom/google/android/gms/internal/ads/f83;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/v13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/f83;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f83;->D()Lcom/google/android/gms/internal/ads/z73;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z73;->C()Lcom/google/android/gms/internal/ads/k83;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/k83;->H()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/u43;->c(I)I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f83;->E()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f83;->F()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object p1

    .line 7
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/kb3;->e(I[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/ads/v43;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z73;->D()Lcom/google/android/gms/internal/ads/t73;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/t73;->C()Lcom/google/android/gms/internal/ads/d93;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/v43;-><init>(Lcom/google/android/gms/internal/ads/d93;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/gb3;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/k83;->C()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v6

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/k83;->I()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/u43;->b(I)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z73;->J()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u43;->d(I)I

    move-result v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/gb3;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;ILcom/google/android/gms/internal/ads/eb3;)V

    return-object p1
.end method
