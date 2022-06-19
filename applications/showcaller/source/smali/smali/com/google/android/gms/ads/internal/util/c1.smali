.class public final Lcom/google/android/gms/ads/internal/util/c1;
.super Lcom/google/android/gms/ads/internal/util/b0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/ii0;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/c2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/b0;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/ii0;

    .line 3
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/ii0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/c1;->c:Lcom/google/android/gms/internal/ads/ii0;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/c1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/c1;->c:Lcom/google/android/gms/internal/ads/ii0;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/c1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ii0;->n(Ljava/lang/String;)V

    return-void
.end method
