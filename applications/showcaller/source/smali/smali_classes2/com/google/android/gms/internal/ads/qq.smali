.class public final Lcom/google/android/gms/internal/ads/qq;
.super Lcom/google/android/gms/internal/ads/is;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/is;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/ads/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/c<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/c<",
            "TAdT;>;TAdT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/is;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qq;->d:Lcom/google/android/gms/ads/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qq;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qq;->d:Lcom/google/android/gms/ads/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qq;->e:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final l2(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qq;->d:Lcom/google/android/gms/ads/c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcz;->l0()Lcom/google/android/gms/ads/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/j;)V

    :cond_0
    return-void
.end method
