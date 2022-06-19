.class final synthetic Lcom/google/android/gms/internal/ads/anx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cxu;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/cxu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/anx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/anx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/anx;->a:Lcom/google/android/gms/internal/ads/cxu;

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

    new-instance v0, Lcom/google/android/gms/internal/ads/anv;

    check-cast p1, Lcom/google/android/gms/internal/ads/anp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/anv;-><init>(Lcom/google/android/gms/internal/ads/anp;)V

    return-object v0
.end method
