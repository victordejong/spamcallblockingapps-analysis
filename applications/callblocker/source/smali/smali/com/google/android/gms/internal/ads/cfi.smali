.class final synthetic Lcom/google/android/gms/internal/ads/cfi;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfi;->a:Lcom/google/android/gms/internal/ads/qr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfi;->a:Lcom/google/android/gms/internal/ads/qr;

    check-cast p1, Lcom/google/android/gms/internal/ads/rb;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/rb;->a(Lcom/google/android/gms/internal/ads/qr;)V

    .line 3
    return-void
.end method
