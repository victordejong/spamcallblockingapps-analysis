.class final synthetic Lcom/google/android/gms/internal/ads/z02;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp0;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/el1;

.field private final e:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/el1;Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z02;->d:Lcom/google/android/gms/internal/ads/el1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z02;->e:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/z02;->d:Lcom/google/android/gms/internal/ads/el1;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z02;->e:Lcom/google/android/gms/internal/ads/wn0;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/el1;->b()V

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->p0()V

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jp0;->g()V

    return-void
.end method
