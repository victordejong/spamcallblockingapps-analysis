.class final synthetic Lcom/google/android/gms/internal/ads/hl3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/nl3;

.field private final e:Lcom/google/android/gms/internal/ads/ur3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nl3;Lcom/google/android/gms/internal/ads/ur3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hl3;->d:Lcom/google/android/gms/internal/ads/nl3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hl3;->e:Lcom/google/android/gms/internal/ads/ur3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl3;->d:Lcom/google/android/gms/internal/ads/nl3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hl3;->e:Lcom/google/android/gms/internal/ads/ur3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nl3;->x(Lcom/google/android/gms/internal/ads/ur3;)V

    return-void
.end method
