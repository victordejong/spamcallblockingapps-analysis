.class final synthetic Lcom/google/android/gms/internal/ads/sp3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/tp3;

.field private final e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tp3;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sp3;->e:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sp3;->e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tp3;->k(Ljava/lang/Exception;)V

    return-void
.end method
