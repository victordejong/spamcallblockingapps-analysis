.class final synthetic Lcom/google/android/gms/internal/ads/f12;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/g12;

.field private final e:Lcom/google/android/gms/internal/ads/rj2;

.field private final f:Lcom/google/android/gms/internal/ads/ej2;

.field private final g:Lcom/google/android/gms/internal/ads/tw1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/g12;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f12;->d:Lcom/google/android/gms/internal/ads/g12;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/f12;->e:Lcom/google/android/gms/internal/ads/rj2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/f12;->f:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/f12;->g:Lcom/google/android/gms/internal/ads/tw1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f12;->d:Lcom/google/android/gms/internal/ads/g12;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/f12;->e:Lcom/google/android/gms/internal/ads/rj2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/f12;->f:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/f12;->g:Lcom/google/android/gms/internal/ads/tw1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/g12;->d:Lcom/google/android/gms/internal/ads/i12;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/i12;->d(Lcom/google/android/gms/internal/ads/i12;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)V

    return-void
.end method
