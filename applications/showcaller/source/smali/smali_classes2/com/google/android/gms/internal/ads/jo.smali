.class public final Lcom/google/android/gms/internal/ads/jo;
.super Lcom/google/android/gms/internal/ads/ie3;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nf3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ie3<",
        "Lcom/google/android/gms/internal/ads/jo;",
        "Lcom/google/android/gms/internal/ads/io;",
        ">;",
        "Lcom/google/android/gms/internal/ads/nf3;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/ads/jo;


# instance fields
.field private zzb:I

.field private zze:Lcom/google/android/gms/internal/ads/fo;

.field private zzf:Lcom/google/android/gms/internal/ads/re3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/re3<",
            "Lcom/google/android/gms/internal/ads/jp;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/lp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/jo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/jo;->zzi:Lcom/google/android/gms/internal/ads/jo;

    const-class v1, Lcom/google/android/gms/internal/ads/jo;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ie3;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ie3;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ie3;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ie3;->o()Lcom/google/android/gms/internal/ads/re3;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jo;->zzf:Lcom/google/android/gms/internal/ads/re3;

    return-void
.end method

.method static synthetic C()Lcom/google/android/gms/internal/ads/jo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/jo;->zzi:Lcom/google/android/gms/internal/ads/jo;

    return-object v0
.end method


# virtual methods
.method protected final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/jo;->zzi:Lcom/google/android/gms/internal/ads/jo;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/io;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/io;-><init>(Lcom/google/android/gms/internal/ads/um;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/jo;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jo;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    .line 6
    const-class p2, Lcom/google/android/gms/internal/ads/jp;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/ao;->a:Lcom/google/android/gms/internal/ads/me3;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/jo;->zzi:Lcom/google/android/gms/internal/ads/jo;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/ie3;->A(Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
