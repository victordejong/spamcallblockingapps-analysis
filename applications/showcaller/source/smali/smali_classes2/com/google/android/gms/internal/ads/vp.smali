.class public final Lcom/google/android/gms/internal/ads/vp;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/vp;",
        "Lcom/google/android/gms/internal/ads/tp;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/vp;


# instance fields
.field private zzb:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/vp;->zzf:Lcom/google/android/gms/internal/ads/vp;

    const-class v1, Lcom/google/android/gms/internal/ads/vp;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    return-void
.end method

.method static synthetic C()Lcom/google/android/gms/internal/ads/vp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/vp;->zzf:Lcom/google/android/gms/internal/ads/vp;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/vp;->zzf:Lcom/google/android/gms/internal/ads/vp;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/tp;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/tp;-><init>(Lcom/google/android/gms/internal/ads/um;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/vp;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/vp;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzb"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/up;->a:Lcom/google/android/gms/internal/ads/me3;

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/vp;->zzf:Lcom/google/android/gms/internal/ads/vp;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
