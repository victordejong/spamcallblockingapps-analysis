.class final synthetic Lcom/google/android/gms/internal/ads/cfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cek;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfg;->a:Lcom/google/android/gms/internal/ads/qr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfg;->a:Lcom/google/android/gms/internal/ads/qr;

    check-cast p1, Lcom/google/android/gms/internal/ads/ry;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/si;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qr;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/si;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/ry;->a(Lcom/google/android/gms/internal/ads/rt;)V

    .line 3
    return-void
.end method
