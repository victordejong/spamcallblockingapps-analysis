.class final synthetic Lcom/google/android/gms/internal/ads/xn1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/yn1;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yn1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xn1;->d:Lcom/google/android/gms/internal/ads/yn1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xn1;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xn1;->d:Lcom/google/android/gms/internal/ads/yn1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xn1;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yn1;->d:Lcom/google/android/gms/internal/ads/ii0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ii0;->n(Ljava/lang/String;)V

    return-void
.end method
