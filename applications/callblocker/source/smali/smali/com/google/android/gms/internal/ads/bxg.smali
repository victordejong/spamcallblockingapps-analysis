.class final synthetic Lcom/google/android/gms/internal/ads/bxg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cqt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bxg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bxg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bxg;->a:Lcom/google/android/gms/internal/ads/cqt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 3
    return-object v0
.end method
