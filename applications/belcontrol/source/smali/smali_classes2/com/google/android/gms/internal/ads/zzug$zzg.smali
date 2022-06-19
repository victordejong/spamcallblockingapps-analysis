.class public final Lcom/google/android/gms/internal/ads/zzug$zzg;
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
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzg;",
        "Lcom/google/android/gms/internal/ads/zzug$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzcbp:Lcom/google/android/gms/internal/ads/zzug$zzg;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcbh:Ljava/lang/String;

.field private zzcbi:Lcom/google/android/gms/internal/ads/zzug$zzt;

.field private zzcbj:I

.field private zzcbk:Lcom/google/android/gms/internal/ads/zzug$zzu;

.field private zzcbl:I

.field private zzcbm:I

.field private zzcbn:I

.field private zzcbo:I

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbp:Lcom/google/android/gms/internal/ads/zzug$zzg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbh:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbo:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzg;Lcom/google/android/gms/internal/ads/zzug$zzu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzg;->zza(Lcom/google/android/gms/internal/ads/zzug$zzu;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzbv(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzu;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbk:Lcom/google/android/gms/internal/ads/zzug$zzu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzdv:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzdv:I

    return-void
.end method

.method private final zzbv(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzdv:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbh:Ljava/lang/String;

    return-void
.end method

.method public static zzny()Lcom/google/android/gms/internal/ads/zzug$zzg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbp:Lcom/google/android/gms/internal/ads/zzug$zzg;

    return-object v0
.end method

.method public static synthetic zznz()Lcom/google/android/gms/internal/ads/zzug$zzg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbp:Lcom/google/android/gms/internal/ads/zzug$zzg;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzg;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbp:Lcom/google/android/gms/internal/ads/zzug$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbp:Lcom/google/android/gms/internal/ads/zzug$zzg;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzcbh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcbi"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcbj"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcbk"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcbl"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcbm"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcbn"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzcbo"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1009\u0001\u0003\u1004\u0002\u0004\u1009\u0003\u0005\u1004\u0004\u0006\u100c\u0005\u0007\u100c\u0006\u0008\u100c\u0007"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzg;->zzcbp:Lcom/google/android/gms/internal/ads/zzug$zzg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzg;-><init>()V

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
