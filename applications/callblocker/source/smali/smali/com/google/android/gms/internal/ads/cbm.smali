.class final synthetic Lcom/google/android/gms/internal/ads/cbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/coe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cbm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cbm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cbm;->a:Lcom/google/android/gms/internal/ads/coe;

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

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3
    :goto_0
    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cbh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/cbh;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
