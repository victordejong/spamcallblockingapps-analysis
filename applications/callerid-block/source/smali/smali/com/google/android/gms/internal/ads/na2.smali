.class final Lcom/google/android/gms/internal/ads/na2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku1;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/et1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/et1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/na2;->a:Lcom/google/android/gms/internal/ads/et1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/na2;->a:Lcom/google/android/gms/internal/ads/et1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/et1;->g(IJLjava/lang/String;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method public final b(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/na2;->a:Lcom/google/android/gms/internal/ads/et1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/et1;->c(IJ)Lcom/google/android/gms/tasks/g;

    return-void
.end method
