.class final synthetic Lcom/google/android/gms/internal/ads/nu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/yc;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/yc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/nu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/nu;->a:Lcom/google/android/gms/internal/ads/yc;

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

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cln;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/clo;

    move-result-object v0

    return-object v0
.end method
