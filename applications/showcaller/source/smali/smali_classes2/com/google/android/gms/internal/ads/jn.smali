.class final Lcom/google/android/gms/internal/ads/jn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/me3;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/me3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/jn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jn;->a:Lcom/google/android/gms/internal/ads/me3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazx;->zzb(I)Lcom/google/android/gms/internal/ads/zzazx;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
