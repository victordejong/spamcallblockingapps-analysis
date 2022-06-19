.class public final Lcom/google/android/gms/internal/ads/hs0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gs0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/gs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hs0;->a:Lcom/google/android/gms/internal/ads/gs0;

    return-void
.end method

.method public static final a()Lcom/google/android/gms/ads/internal/a;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/gms/ads/internal/a;

    new-instance v1, Lcom/google/android/gms/internal/ads/vl0;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/vl0;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/bk0;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/bk0;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/df0;

    new-instance v0, Lcom/google/android/gms/internal/ads/ef0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ef0;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/internal/ads/df0;-><init>(Lcom/google/android/gms/internal/ads/ef0;[B)V

    new-instance v4, Lcom/google/android/gms/internal/ads/tm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/tm;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/pb0;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/pb0;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/mx;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/mx;-><init>()V

    const/4 v7, 0x0

    move-object v0, v8

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/a;-><init>(Lcom/google/android/gms/internal/ads/vl0;Lcom/google/android/gms/internal/ads/sj0;Lcom/google/android/gms/internal/ads/df0;Lcom/google/android/gms/internal/ads/tm;Lcom/google/android/gms/internal/ads/pb0;Lcom/google/android/gms/internal/ads/mx;[B)V

    return-object v8
.end method
