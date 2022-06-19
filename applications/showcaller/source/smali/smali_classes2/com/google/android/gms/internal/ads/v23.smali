.class final Lcom/google/android/gms/internal/ads/v23;
.super Lcom/google/android/gms/internal/ads/v13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/v13<",
        "Lcom/google/android/gms/internal/ads/i13;",
        "Lcom/google/android/gms/internal/ads/u53;",
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
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/u53;

    new-instance v0, Lcom/google/android/gms/internal/ads/mb3;

    new-instance v1, Lcom/google/android/gms/internal/ads/a33;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/a33;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u53;->D()Lcom/google/android/gms/internal/ads/a63;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/xb3;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/w13;->e(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xb3;

    new-instance v2, Lcom/google/android/gms/internal/ads/c53;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/c53;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u53;->E()Lcom/google/android/gms/internal/ads/r83;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/a23;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/w13;->e(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/a23;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u53;->E()Lcom/google/android/gms/internal/ads/r83;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r83;->D()Lcom/google/android/gms/internal/ads/x83;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x83;->C()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/mb3;-><init>(Lcom/google/android/gms/internal/ads/xb3;Lcom/google/android/gms/internal/ads/a23;I)V

    return-object v0
.end method
