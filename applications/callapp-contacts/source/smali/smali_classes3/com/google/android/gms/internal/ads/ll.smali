.class final synthetic Lcom/google/android/gms/internal/ads/ll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lh;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/lh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ll;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ll;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ll;->a:Lcom/google/android/gms/internal/ads/lh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/lm;->a(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
