.class final synthetic Lcom/google/android/gms/internal/ads/b80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/sc0;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/sc0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/b80;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/b80;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/b80;->a:Lcom/google/android/gms/internal/ads/sc0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/g80;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/nm1;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzym;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/g80;->B0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void
.end method
