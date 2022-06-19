.class final synthetic Lcom/google/android/gms/internal/ads/tf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/to;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/to;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/tf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/tf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/tf;->a:Lcom/google/android/gms/internal/ads/to;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/afb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/afb;->d()Ljava/lang/String;

    move-result-object v0

    .line 3
    if-eqz v0, :cond_1

    .line 9
    :cond_0
    :goto_0
    return-object v0

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/afb;->e()Ljava/lang/String;

    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string/jumbo v0, ""

    goto :goto_0
.end method
