.class final Lcom/google/android/gms/internal/ads/es;
.super Lcom/google/android/gms/internal/ads/ey;
.source ""


# static fields
.field static final c:Lcom/google/android/gms/internal/ads/es;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/es;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/es;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/es;->c:Lcom/google/android/gms/internal/ads/es;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ey;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/i20;
    .locals 0

    const-string p2, "moov"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/j40;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/j40;-><init>()V

    return-object p1

    :cond_0
    const-string p2, "mvhd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/k50;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/k50;-><init>()V

    return-object p1

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/l60;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/l60;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
