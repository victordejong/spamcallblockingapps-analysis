.class final synthetic Lcom/google/android/gms/internal/ads/er;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gi0;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/gi0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/er;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/er;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/er;->a:Lcom/google/android/gms/internal/ads/gi0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ah0;->E6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/bh0;

    move-result-object p1

    return-object p1
.end method
