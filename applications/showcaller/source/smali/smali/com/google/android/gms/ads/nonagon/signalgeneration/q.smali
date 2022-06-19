.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/q;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/dynamic/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Ljava/util/List;Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/q;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/q;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/q;->c:Lcom/google/android/gms/dynamic/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/q;->a:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/q;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/q;->c:Lcom/google/android/gms/dynamic/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->J6(Ljava/util/List;Lcom/google/android/gms/dynamic/a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
