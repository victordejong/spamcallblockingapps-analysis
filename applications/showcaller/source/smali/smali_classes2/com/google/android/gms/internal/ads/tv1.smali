.class final synthetic Lcom/google/android/gms/internal/ads/tv1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/om;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/np;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/np;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tv1;->a:Lcom/google/android/gms/internal/ads/np;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/co;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tv1;->a:Lcom/google/android/gms/internal/ads/np;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/co;->v()Lcom/google/android/gms/internal/ads/vn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ie3;->x()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/un;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/un;->r(Lcom/google/android/gms/internal/ads/np;)Lcom/google/android/gms/internal/ads/un;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/co;->w(Lcom/google/android/gms/internal/ads/un;)Lcom/google/android/gms/internal/ads/co;

    return-void
.end method
