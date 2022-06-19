.class final synthetic Lcom/google/android/gms/internal/ads/j31;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/l81;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/l81;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/j31;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/j31;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/j31;->a:Lcom/google/android/gms/internal/ads/l81;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/o31;

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/o31;->l(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
