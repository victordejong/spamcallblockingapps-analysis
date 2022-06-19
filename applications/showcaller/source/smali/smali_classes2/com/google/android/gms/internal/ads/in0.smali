.class final synthetic Lcom/google/android/gms/internal/ads/in0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/br3;


# static fields
.field static final b:Lcom/google/android/gms/internal/ads/br3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/in0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/in0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/in0;->b:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/uq3;
    .locals 2

    .line 1
    sget p1, Lcom/google/android/gms/internal/ads/mn0;->f:I

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/uq3;

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/su3;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/su3;-><init>(I)V

    aput-object p2, p1, v0

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/kt3;

    .line 5
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/kt3;-><init>(I)V

    const/4 v1, 0x1

    aput-object p2, p1, v1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/nu3;

    const/4 v1, 0x0

    .line 7
    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/nu3;-><init>(ILcom/google/android/gms/internal/ads/ta;)V

    const/4 v0, 0x2

    aput-object p2, p1, v0

    return-object p1
.end method
