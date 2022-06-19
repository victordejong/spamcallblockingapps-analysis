.class final synthetic Lcom/google/android/gms/internal/ads/cbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cxu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cbb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cbb;->a:Lcom/google/android/gms/internal/ads/cxu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/caw;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
