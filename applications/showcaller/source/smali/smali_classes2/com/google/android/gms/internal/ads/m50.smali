.class final synthetic Lcom/google/android/gms/internal/ads/m50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/d60;

.field private final e:Lcom/google/android/gms/internal/ads/c60;

.field private final f:Lcom/google/android/gms/internal/ads/x40;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m50;->d:Lcom/google/android/gms/internal/ads/d60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/m50;->e:Lcom/google/android/gms/internal/ads/c60;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/m50;->f:Lcom/google/android/gms/internal/ads/x40;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m50;->d:Lcom/google/android/gms/internal/ads/d60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m50;->e:Lcom/google/android/gms/internal/ads/c60;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/m50;->f:Lcom/google/android/gms/internal/ads/x40;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/d60;->j(Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x40;)V

    return-void
.end method
