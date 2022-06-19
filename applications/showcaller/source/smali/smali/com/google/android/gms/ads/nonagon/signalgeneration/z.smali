.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/z;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

.field private final e:[Lcom/google/android/gms/internal/ads/qj1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;[Lcom/google/android/gms/internal/ads/qj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/z;->d:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/z;->e:[Lcom/google/android/gms/internal/ads/qj1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/z;->d:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/z;->e:[Lcom/google/android/gms/internal/ads/qj1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->i7([Lcom/google/android/gms/internal/ads/qj1;)V

    return-void
.end method
