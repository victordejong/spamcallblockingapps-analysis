.class final synthetic Lcom/google/android/gms/internal/ads/vf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zb;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/zb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/vf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vf;->a:Lcom/google/android/gms/internal/ads/zb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/os/IBinder;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator"

    .line 4
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/uw;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/uw;

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/uv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/uv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
