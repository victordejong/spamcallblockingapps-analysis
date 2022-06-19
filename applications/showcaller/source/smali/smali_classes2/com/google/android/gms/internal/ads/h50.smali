.class final synthetic Lcom/google/android/gms/internal/ads/h50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/d60;

.field private final e:Lcom/google/android/gms/internal/ads/c60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/c60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h50;->d:Lcom/google/android/gms/internal/ads/d60;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/h50;->e:Lcom/google/android/gms/internal/ads/c60;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h50;->d:Lcom/google/android/gms/internal/ads/d60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h50;->e:Lcom/google/android/gms/internal/ads/c60;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/d60;->i(Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/c60;)V

    return-void
.end method
