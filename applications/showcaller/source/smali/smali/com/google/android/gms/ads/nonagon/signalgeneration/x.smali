.class final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/x;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/nu2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/x;

    invoke-direct {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/x;->a:Lcom/google/android/gms/internal/ads/nu2;

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

    .line 1
    check-cast p1, Ljava/lang/Exception;

    sget v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->h:I

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
