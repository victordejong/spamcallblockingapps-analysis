.class final synthetic Lcom/google/android/gms/internal/ads/blf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ckg;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/ckg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/blf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/blf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/blf;->a:Lcom/google/android/gms/internal/ads/ckg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    const-string/jumbo v0, "Ad request signals:"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 5
    return-object p1
.end method
