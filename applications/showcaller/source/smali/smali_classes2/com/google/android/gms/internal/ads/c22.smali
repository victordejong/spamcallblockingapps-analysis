.class final synthetic Lcom/google/android/gms/internal/ads/c22;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dn2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/e22;

.field private final b:Lcom/google/android/gms/internal/ads/bx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e22;Lcom/google/android/gms/internal/ads/bx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c22;->a:Lcom/google/android/gms/internal/ads/e22;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c22;->b:Lcom/google/android/gms/internal/ads/bx;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c22;->a:Lcom/google/android/gms/internal/ads/e22;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c22;->b:Lcom/google/android/gms/internal/ads/bx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/e22;->c(Lcom/google/android/gms/internal/ads/bx;)V

    return-void
.end method
