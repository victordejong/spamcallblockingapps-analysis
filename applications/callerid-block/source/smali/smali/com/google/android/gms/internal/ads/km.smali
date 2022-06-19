.class final synthetic Lcom/google/android/gms/internal/ads/km;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/um;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/um;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/km;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/km;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/km;->a:Lcom/google/android/gms/internal/ads/um;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/av;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/av;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
