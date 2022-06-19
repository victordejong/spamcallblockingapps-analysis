.class public final Lcom/google/android/gms/internal/ads/n42;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cf1;

.field private final b:Lcom/google/android/gms/internal/ads/a42;

.field private final c:Lcom/google/android/gms/internal/ads/b31;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cf1;Lcom/google/android/gms/internal/ads/jo2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n42;->a:Lcom/google/android/gms/internal/ads/cf1;

    new-instance v0, Lcom/google/android/gms/internal/ads/a42;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/a42;-><init>(Lcom/google/android/gms/internal/ads/jo2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n42;->b:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cf1;->e()Lcom/google/android/gms/internal/ads/q40;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/m42;

    .line 2
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/m42;-><init>(Lcom/google/android/gms/internal/ads/a42;Lcom/google/android/gms/internal/ads/q40;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n42;->c:Lcom/google/android/gms/internal/ads/b31;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/gs;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n42;->b:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/a42;->r(Lcom/google/android/gms/internal/ads/gs;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zc1;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zc1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n42;->a:Lcom/google/android/gms/internal/ads/cf1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n42;->b:Lcom/google/android/gms/internal/ads/a42;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/a42;->a()Lcom/google/android/gms/internal/ads/gs;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zc1;-><init>(Lcom/google/android/gms/internal/ads/cf1;Lcom/google/android/gms/internal/ads/gs;)V

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/a42;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n42;->b:Lcom/google/android/gms/internal/ads/a42;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/n41;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n42;->b:Lcom/google/android/gms/internal/ads/a42;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/b31;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n42;->c:Lcom/google/android/gms/internal/ads/b31;

    return-object v0
.end method
