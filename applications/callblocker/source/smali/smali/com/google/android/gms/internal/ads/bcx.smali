.class final synthetic Lcom/google/android/gms/internal/ads/bcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bcx;->a:Lcom/google/android/gms/internal/ads/bcy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bcx;->a:Lcom/google/android/gms/internal/ads/bcy;

    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcy;->a(Lcom/google/android/gms/internal/ads/act;)Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    return-object v0
.end method
