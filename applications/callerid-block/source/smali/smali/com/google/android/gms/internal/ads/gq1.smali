.class public final Lcom/google/android/gms/internal/ads/gq1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/aq1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/kq1;

.field private final b:Lcom/google/android/gms/internal/ads/iq1;

.field private final c:Lcom/google/android/gms/internal/ads/xp1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/xp1;Lcom/google/android/gms/internal/ads/kq1;Lcom/google/android/gms/internal/ads/iq1;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gq1;->c:Lcom/google/android/gms/internal/ads/xp1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gq1;->a:Lcom/google/android/gms/internal/ads/kq1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gq1;->b:Lcom/google/android/gms/internal/ads/iq1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zp1;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gq1;->a:Lcom/google/android/gms/internal/ads/kq1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zp1;->j()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gq1;->b:Lcom/google/android/gms/internal/ads/iq1;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/iq1;->a(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/kq1;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zp1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gq1;->c:Lcom/google/android/gms/internal/ads/xp1;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/gq1;->a(Lcom/google/android/gms/internal/ads/zp1;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xp1;->a(Ljava/lang/String;)V

    return-void
.end method
