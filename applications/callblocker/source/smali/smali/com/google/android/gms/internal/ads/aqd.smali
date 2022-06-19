.class final synthetic Lcom/google/android/gms/internal/ads/aqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/atg;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/atg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/aqd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aqd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/aqd;->a:Lcom/google/android/gms/internal/ads/atg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/aqe;

    .line 2
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/aqe;->b(I)V

    .line 3
    return-void
.end method
