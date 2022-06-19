.class final synthetic Lcom/google/android/gms/internal/ads/cbb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/coe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cbb;->a:Lcom/google/android/gms/internal/ads/coe;

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

    new-instance v0, Lcom/google/android/gms/internal/ads/caz;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/caz;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
