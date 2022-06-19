.class final synthetic Lcom/google/android/gms/internal/ads/g52;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/uz2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/g52;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/g52;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/g52;->a:Lcom/google/android/gms/internal/ads/uz2;

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
    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/h52;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/h52;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
