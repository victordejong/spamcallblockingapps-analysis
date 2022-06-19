.class final synthetic Lcom/google/android/gms/internal/ads/yd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ro;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/ro;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/yd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/ro;

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

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cv;->z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ev;

    move-result-object p1

    return-object p1
.end method
