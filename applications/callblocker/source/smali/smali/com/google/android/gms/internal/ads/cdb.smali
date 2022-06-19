.class final synthetic Lcom/google/android/gms/internal/ads/cdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cex;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ccy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ccy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdb;->a:Lcom/google/android/gms/internal/ads/ccy;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/aoy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdb;->a:Lcom/google/android/gms/internal/ads/ccy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ccy;->a(Lcom/google/android/gms/internal/ads/ceu;)Lcom/google/android/gms/internal/ads/ajx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aoy;

    return-object v0
.end method
