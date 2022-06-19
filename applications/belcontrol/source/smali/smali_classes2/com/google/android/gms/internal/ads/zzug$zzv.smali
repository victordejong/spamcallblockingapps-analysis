.class public final Lcom/google/android/gms/internal/ads/zzug$zzv;
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
    name = "zzv"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzv$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzv;",
        "Lcom/google/android/gms/internal/ads/zzug$zzv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzcgg:Lcom/google/android/gms/internal/ads/zzug$zzv;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcfq:Lcom/google/android/gms/internal/ads/zzug$zzz;

.field private zzcfr:Lcom/google/android/gms/internal/ads/zzug$zzab;

.field private zzcfs:Lcom/google/android/gms/internal/ads/zzug$zzac;

.field private zzcft:Lcom/google/android/gms/internal/ads/zzug$zzad;

.field private zzcfu:Lcom/google/android/gms/internal/ads/zzug$zzw;

.field private zzcfv:Lcom/google/android/gms/internal/ads/zzug$zzaa;

.field private zzcfw:Lcom/google/android/gms/internal/ads/zzug$zzy;

.field private zzcfx:I

.field private zzcfy:I

.field private zzcfz:Lcom/google/android/gms/internal/ads/zzug$zzt;

.field private zzcga:I

.field private zzcgb:I

.field private zzcgc:I

.field private zzcgd:I

.field private zzcge:I

.field private zzcgf:J

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzv;->zzcgg:Lcom/google/android/gms/internal/ads/zzug$zzv;

    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method public static synthetic zzpp()Lcom/google/android/gms/internal/ads/zzug$zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzv;->zzcgg:Lcom/google/android/gms/internal/ads/zzug$zzv;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzv;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzv;->zzcgg:Lcom/google/android/gms/internal/ads/zzug$zzv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzv;->zzcgg:Lcom/google/android/gms/internal/ads/zzug$zzv;

    return-object p1

    :pswitch_4
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzcfq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcfr"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcfs"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcft"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcfu"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcfv"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzcfw"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcfx"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzcfy"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzcfz"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzcga"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzcgb"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzcgc"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzcgd"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzcge"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzcgf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0010\u0000\u0001\u0005\u0014\u0010\u0000\u0000\u0000\u0005\u1009\u0000\u0006\u1009\u0001\u0007\u1009\u0002\u0008\u1009\u0003\t\u1009\u0004\n\u1009\u0005\u000b\u1009\u0006\u000c\u1004\u0007\r\u1004\u0008\u000e\u1009\t\u000f\u1004\n\u0010\u1004\u000b\u0011\u1004\u000c\u0012\u1004\r\u0013\u1004\u000e\u0014\u1003\u000f"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzv;->zzcgg:Lcom/google/android/gms/internal/ads/zzug$zzv;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzv$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzv$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzv;-><init>()V

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
