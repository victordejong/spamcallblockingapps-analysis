.class public final Lcom/google/android/gms/internal/ads/ux;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/google/android/gms/ads/internal/a;
    .locals 9

    new-instance v8, Lcom/google/android/gms/ads/internal/a;

    new-instance v1, Lcom/google/android/gms/internal/ads/ds;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ds;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/jq;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/jq;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/pl;

    new-instance v0, Lcom/google/android/gms/internal/ads/ql;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ql;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/internal/ads/pl;-><init>(Lcom/google/android/gms/internal/ads/ql;[B)V

    new-instance v4, Lcom/google/android/gms/internal/ads/aw2;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/aw2;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/ci;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/ci;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/o4;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/o4;-><init>()V

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/internal/ads/ds;Lcom/google/android/gms/internal/ads/bq;Lcom/google/android/gms/internal/ads/pl;Lcom/google/android/gms/internal/ads/aw2;Lcom/google/android/gms/internal/ads/ci;Lcom/google/android/gms/internal/ads/o4;[B)V

    return-object v8
.end method
