.class public final Lcom/google/android/gms/internal/ads/bef;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bif;

.field final b:Lcom/google/android/gms/internal/ads/bgy;

.field c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bif;Lcom/google/android/gms/internal/ads/bgy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bef;->a:Lcom/google/android/gms/internal/ads/bif;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bef;->b:Lcom/google/android/gms/internal/ads/bgy;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bef;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 18
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/yq;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method
