.class final synthetic Lcom/google/android/gms/internal/ads/gr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gi0;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/gi0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/gr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/gr;->a:Lcom/google/android/gms/internal/ads/gi0;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cb0;->E6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/db0;

    move-result-object p1

    return-object p1
.end method
