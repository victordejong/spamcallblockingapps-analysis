.class final synthetic Lcom/google/android/gms/internal/ads/cx3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/br3;


# static fields
.field static final b:Lcom/google/android/gms/internal/ads/br3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cx3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cx3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cx3;->b:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/uq3;
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/ex3;->a:Lcom/google/android/gms/internal/ads/br3;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/uq3;

    new-instance p2, Lcom/google/android/gms/internal/ads/ex3;

    .line 2
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/ex3;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-object p1
.end method
