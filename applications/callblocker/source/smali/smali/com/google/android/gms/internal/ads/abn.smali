.class final Lcom/google/android/gms/internal/ads/abn;
.super Lcom/google/android/gms/internal/ads/aag;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/abn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/abn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/abn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/abn;->a:Lcom/google/android/gms/internal/ads/abn;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aag;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/adi;
    .locals 1

    .prologue
    .line 2
    const-string/jumbo v0, "moov"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/afi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/afi;-><init>()V

    .line 6
    :goto_0
    return-object v0

    .line 4
    :cond_0
    const-string/jumbo v0, "mvhd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/ail;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ail;-><init>()V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ahk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ahk;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
