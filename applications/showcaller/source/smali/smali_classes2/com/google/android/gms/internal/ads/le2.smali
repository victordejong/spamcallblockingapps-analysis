.class final synthetic Lcom/google/android/gms/internal/ads/le2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fg2;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/fg2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/le2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/le2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/le2;->a:Lcom/google/android/gms/internal/ads/fg2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/o;->a()V

    return-void
.end method
