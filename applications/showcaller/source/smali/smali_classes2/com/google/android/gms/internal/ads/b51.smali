.class final synthetic Lcom/google/android/gms/internal/ads/b51;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/l81;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/l81;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/b51;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/b51;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/b51;->a:Lcom/google/android/gms/internal/ads/l81;

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

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/o;->a()V

    return-void
.end method
