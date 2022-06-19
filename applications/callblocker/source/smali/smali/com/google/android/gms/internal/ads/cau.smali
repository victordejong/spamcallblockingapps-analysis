.class final synthetic Lcom/google/android/gms/internal/ads/cau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/coe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cau;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cau;->a:Lcom/google/android/gms/internal/ads/coe;

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

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/gms/ads/c/a$a;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cas;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/ads/c/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/cas;-><init>(Lcom/google/android/gms/ads/c/a$a;Ljava/lang/String;)V

    .line 3
    return-object v0
.end method
