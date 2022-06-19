.class final synthetic Lcom/google/android/gms/internal/ads/ht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/util/n;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ht;->a:Lcom/google/android/gms/internal/ads/fa;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ht;->a:Lcom/google/android/gms/internal/ads/fa;

    check-cast p1, Lcom/google/android/gms/internal/ads/fa;

    .line 2
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/ib;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/ib;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ib;->a(Lcom/google/android/gms/internal/ads/ib;)Lcom/google/android/gms/internal/ads/fa;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    :goto_0
    return v0

    .line 3
    :cond_0
    const/4 v0, 0x0

    .line 4
    goto :goto_0
.end method
