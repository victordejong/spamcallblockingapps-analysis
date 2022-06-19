.class final synthetic Lcom/google/android/gms/internal/ads/pk3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/vk3;

.field private final e:Lcom/google/android/gms/internal/ads/wk3;

.field private final f:Lcom/google/android/gms/internal/ads/dk3;

.field private final g:Lcom/google/android/gms/internal/ads/jk3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vk3;Lcom/google/android/gms/internal/ads/wk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pk3;->d:Lcom/google/android/gms/internal/ads/vk3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pk3;->e:Lcom/google/android/gms/internal/ads/wk3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pk3;->f:Lcom/google/android/gms/internal/ads/dk3;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/pk3;->g:Lcom/google/android/gms/internal/ads/jk3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk3;->d:Lcom/google/android/gms/internal/ads/vk3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk3;->e:Lcom/google/android/gms/internal/ads/wk3;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pk3;->f:Lcom/google/android/gms/internal/ads/dk3;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/pk3;->g:Lcom/google/android/gms/internal/ads/jk3;

    iget v4, v0, Lcom/google/android/gms/internal/ads/vk3;->a:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vk3;->b:Lcom/google/android/gms/internal/ads/mk3;

    invoke-interface {v1, v4, v0, v2, v3}, Lcom/google/android/gms/internal/ads/wk3;->d(ILcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/dk3;Lcom/google/android/gms/internal/ads/jk3;)V

    return-void
.end method
