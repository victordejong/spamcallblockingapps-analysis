.class public final Lcom/google/android/gms/internal/ads/te0;
.super Lcom/google/android/gms/internal/ads/le0;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/z/c;

.field private final e:Lcom/google/android/gms/ads/z/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/z/c;Lcom/google/android/gms/ads/z/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/le0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/te0;->d:Lcom/google/android/gms/ads/z/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/te0;->e:Lcom/google/android/gms/ads/z/b;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te0;->d:Lcom/google/android/gms/ads/z/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/te0;->e:Lcom/google/android/gms/ads/z/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final x(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te0;->d:Lcom/google/android/gms/ads/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcz;->l0()Lcom/google/android/gms/ads/j;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/te0;->d:Lcom/google/android/gms/ads/z/c;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    :cond_0
    return-void
.end method
