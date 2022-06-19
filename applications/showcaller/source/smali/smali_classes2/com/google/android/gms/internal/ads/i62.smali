.class final synthetic Lcom/google/android/gms/internal/ads/i62;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/nu2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/i62;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/i62;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/i62;->a:Lcom/google/android/gms/internal/ads/nu2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/appset/c;

    new-instance v0, Lcom/google/android/gms/internal/ads/k62;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/appset/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/appset/c;->b()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k62;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
