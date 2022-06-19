.class final synthetic Lcom/google/android/gms/internal/ads/yz0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/b01;

.field private final b:Lcom/google/android/gms/internal/ads/zzfcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/b01;Lcom/google/android/gms/internal/ads/zzfcj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yz0;->a:Lcom/google/android/gms/internal/ads/b01;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yz0;->b:Lcom/google/android/gms/internal/ads/zzfcj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yz0;->a:Lcom/google/android/gms/internal/ads/b01;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yz0;->b:Lcom/google/android/gms/internal/ads/zzfcj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/b01;->j(Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
