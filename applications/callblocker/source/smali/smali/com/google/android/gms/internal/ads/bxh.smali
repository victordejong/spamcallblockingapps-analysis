.class final synthetic Lcom/google/android/gms/internal/ads/bxh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bxf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bxf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxh;->a:Lcom/google/android/gms/internal/ads/bxf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxh;->a:Lcom/google/android/gms/internal/ads/bxf;

    check-cast p1, Landroid/location/Location;

    .line 2
    if-eqz p1, :cond_0

    .line 5
    :goto_0
    return-object p1

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bxf;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dya;->k:Landroid/location/Location;

    goto :goto_0
.end method
