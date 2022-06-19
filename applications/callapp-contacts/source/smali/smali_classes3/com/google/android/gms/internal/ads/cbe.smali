.class final synthetic Lcom/google/android/gms/internal/ads/cbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cxu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cbe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cbe;->a:Lcom/google/android/gms/internal/ads/cxu;

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

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/caw;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
