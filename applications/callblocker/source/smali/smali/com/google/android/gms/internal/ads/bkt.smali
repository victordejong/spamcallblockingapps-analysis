.class final synthetic Lcom/google/android/gms/internal/ads/bkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bkx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bkq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bkq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkt;->a:Lcom/google/android/gms/internal/ads/bkq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkt;->a:Lcom/google/android/gms/internal/ads/bkq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bkq;->e(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method
