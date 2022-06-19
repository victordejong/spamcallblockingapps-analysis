.class public final Lcom/google/android/gms/internal/ads/zzug$zze;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zze;",
        "Lcom/google/android/gms/internal/ads/zzug$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzcaz:Lcom/google/android/gms/internal/ads/zzug$zze;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcau:Ljava/lang/String;

.field private zzcav:Lcom/google/android/gms/internal/ads/zzell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzell<",
            "Lcom/google/android/gms/internal/ads/zzug$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzcaw:I

.field private zzcax:I

.field private zzcay:I

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcaz:Lcom/google/android/gms/internal/ads/zzug$zze;

    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcau:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelb;->zzbin()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcav:Lcom/google/android/gms/internal/ads/zzell;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcaw:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcax:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcay:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zze;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zze;->zzbt(Ljava/lang/String;)V

    return-void
.end method

.method private final zzbt(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzdv:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcau:Ljava/lang/String;

    return-void
.end method

.method public static zznv()Lcom/google/android/gms/internal/ads/zzug$zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcaz:Lcom/google/android/gms/internal/ads/zzug$zze;

    return-object v0
.end method

.method public static synthetic zznw()Lcom/google/android/gms/internal/ads/zzug$zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcaz:Lcom/google/android/gms/internal/ads/zzug$zze;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzuf;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zze;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zze;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zze;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcaz:Lcom/google/android/gms/internal/ads/zzug$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zze;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcaz:Lcom/google/android/gms/internal/ads/zzug$zze;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzcau"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcav"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/ads/zzug$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcaw"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcax"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcay"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u100c\u0001\u0004\u100c\u0002\u0005\u100c\u0003"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zze;->zzcaz:Lcom/google/android/gms/internal/ads/zzug$zze;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zze$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zze$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zze;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
