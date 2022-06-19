.class final synthetic Lcom/google/android/gms/internal/ads/xy1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qc1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yy1;

.field private final b:Lcom/google/android/gms/internal/ads/tw1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yy1;Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xy1;->a:Lcom/google/android/gms/internal/ads/yy1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xy1;->b:Lcom/google/android/gms/internal/ads/tw1;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/l31;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xy1;->a:Lcom/google/android/gms/internal/ads/yy1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xy1;->b:Lcom/google/android/gms/internal/ads/tw1;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/yy1;->c(Lcom/google/android/gms/internal/ads/tw1;ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/l31;)V

    return-void
.end method
