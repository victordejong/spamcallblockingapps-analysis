.class final synthetic Lcom/google/android/gms/internal/ads/acf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dxw;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/dxw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/acf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/acf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/acf;->a:Lcom/google/android/gms/internal/ads/dxw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Lcom/google/android/gms/internal/ads/dxv;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dxv;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/dzj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dzj;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/dyl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dyl;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/dzc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dzc;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method
