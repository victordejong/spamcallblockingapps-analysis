.class final synthetic Lcom/google/android/gms/internal/ads/q2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/r2;

.field private final e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/r2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q2;->d:Lcom/google/android/gms/internal/ads/r2;

    iput p2, p0, Lcom/google/android/gms/internal/ads/q2;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q2;->d:Lcom/google/android/gms/internal/ads/r2;

    iget v1, p0, Lcom/google/android/gms/internal/ads/q2;->e:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/r2;->b:Lcom/google/android/gms/internal/ads/t2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/t2;->d(Lcom/google/android/gms/internal/ads/t2;I)V

    return-void
.end method
