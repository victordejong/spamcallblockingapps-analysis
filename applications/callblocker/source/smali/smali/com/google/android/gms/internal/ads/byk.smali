.class final synthetic Lcom/google/android/gms/internal/ads/byk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/byg;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/byg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/byk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/byk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/byk;->a:Lcom/google/android/gms/internal/ads/byg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    const-string/jumbo v0, "native_version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    return-void
.end method
