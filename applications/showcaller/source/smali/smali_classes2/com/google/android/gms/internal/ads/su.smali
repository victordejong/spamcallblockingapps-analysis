.class final synthetic Lcom/google/android/gms/internal/ads/su;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/wu;

.field private final e:Lcom/google/android/gms/ads/initialization/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wu;Lcom/google/android/gms/ads/initialization/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su;->d:Lcom/google/android/gms/internal/ads/wu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/su;->e:Lcom/google/android/gms/ads/initialization/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su;->d:Lcom/google/android/gms/internal/ads/wu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/su;->e:Lcom/google/android/gms/ads/initialization/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wu;->j(Lcom/google/android/gms/ads/initialization/b;)V

    return-void
.end method
