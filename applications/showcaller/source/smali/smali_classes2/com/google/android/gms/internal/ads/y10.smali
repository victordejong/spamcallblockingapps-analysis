.class final synthetic Lcom/google/android/gms/internal/ads/y10;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/n20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/y10;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/y10;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/y10;->a:Lcom/google/android/gms/internal/ads/n20;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/xo0;

    sget-object v0, Lcom/google/android/gms/internal/ads/m20;->a:Lcom/google/android/gms/internal/ads/n20;

    const-string v0, "u"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/util/c1;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xo0;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/fp0;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/fp0;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/ads/internal/util/c1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/b0;->c()Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method
