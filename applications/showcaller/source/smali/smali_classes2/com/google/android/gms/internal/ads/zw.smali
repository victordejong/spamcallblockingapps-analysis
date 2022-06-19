.class final synthetic Lcom/google/android/gms/internal/ads/zw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/p9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rz0;

.field private final b:Lcom/google/android/gms/internal/ads/n6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rz0;Lcom/google/android/gms/internal/ads/n6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zw;->a:Lcom/google/android/gms/internal/ads/rz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/n6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/j9;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zw;->a:Lcom/google/android/gms/internal/ads/rz0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zw;->b:Lcom/google/android/gms/internal/ads/n6;

    check-cast p1, Lcom/google/android/gms/internal/ads/u11;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/rz0;->J(Lcom/google/android/gms/internal/ads/n6;Lcom/google/android/gms/internal/ads/u11;Lcom/google/android/gms/internal/ads/j9;)V

    return-void
.end method
