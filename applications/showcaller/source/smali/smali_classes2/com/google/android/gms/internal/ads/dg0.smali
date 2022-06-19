.class final synthetic Lcom/google/android/gms/internal/ads/dg0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ig0;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/ig0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/dg0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dg0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dg0;->a:Lcom/google/android/gms/internal/ads/ig0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/op0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/op0;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
