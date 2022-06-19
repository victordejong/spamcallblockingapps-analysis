.class final synthetic Lcom/google/android/gms/internal/ads/bzu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bzu;->a:Lcom/google/android/gms/internal/ads/cae;

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
    const-string/jumbo v0, "sdk_prefetch"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    return-void
.end method
