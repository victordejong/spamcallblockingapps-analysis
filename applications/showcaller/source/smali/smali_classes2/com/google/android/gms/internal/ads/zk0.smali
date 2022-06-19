.class final synthetic Lcom/google/android/gms/internal/ads/zk0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/zzcjs;

.field private final e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjs;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zk0;->d:Lcom/google/android/gms/internal/ads/zzcjs;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zk0;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zk0;->d:Lcom/google/android/gms/internal/ads/zzcjs;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zk0;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjs;->H(I)V

    return-void
.end method
