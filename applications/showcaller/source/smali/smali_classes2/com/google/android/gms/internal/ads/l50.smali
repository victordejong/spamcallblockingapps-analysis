.class final synthetic Lcom/google/android/gms/internal/ads/l50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/w40;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/d60;

.field private final b:Lcom/google/android/gms/internal/ads/c60;

.field private final c:Lcom/google/android/gms/internal/ads/x40;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l50;->a:Lcom/google/android/gms/internal/ads/d60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l50;->b:Lcom/google/android/gms/internal/ads/c60;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/l50;->c:Lcom/google/android/gms/internal/ads/x40;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l50;->a:Lcom/google/android/gms/internal/ads/d60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l50;->b:Lcom/google/android/gms/internal/ads/c60;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/l50;->c:Lcom/google/android/gms/internal/ads/x40;

    sget-object v3, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    new-instance v4, Lcom/google/android/gms/internal/ads/m50;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/m50;-><init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
