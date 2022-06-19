.class final synthetic Lcom/google/android/gms/internal/ads/wr1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/uz2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/wr1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wr1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/wr1;->a:Lcom/google/android/gms/internal/ads/uz2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/concurrent/TimeoutException;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v0, 0x5

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
