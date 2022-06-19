.class final synthetic Lcom/google/android/gms/internal/ads/bvz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/coe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bvz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bvz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bvz;->a:Lcom/google/android/gms/internal/ads/coe;

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
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 5
    :goto_0
    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bwc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/bwc;-><init>(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
