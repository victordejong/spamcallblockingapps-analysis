.class public final Lcom/google/android/gms/internal/ads/zzug$zzp;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzp$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzp;",
        "Lcom/google/android/gms/internal/ads/zzug$zzp$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzcfb:Lcom/google/android/gms/internal/ads/zzug$zzp;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzceq:I

.field private zzcer:I

.field private zzces:I

.field private zzcet:I

.field private zzceu:I

.field private zzcev:I

.field private zzcew:I

.field private zzcex:I

.field private zzcey:I

.field private zzcez:I

.field private zzcfa:Lcom/google/android/gms/internal/ads/zzug$zzq;

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzp;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzcfb:Lcom/google/android/gms/internal/ads/zzug$zzp;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzceq:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzcer:I

    return-void
.end method

.method static synthetic zzpi()Lcom/google/android/gms/internal/ads/zzug$zzp;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzcfb:Lcom/google/android/gms/internal/ads/zzug$zzp;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuf;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzp;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzcfb:Lcom/google/android/gms/internal/ads/zzug$zzp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzcfb:Lcom/google/android/gms/internal/ads/zzug$zzp;

    return-object p1

    :pswitch_4
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzceq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcer"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzces"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzcet"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzceu"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzcev"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzcew"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzcex"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzcey"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzcez"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzcfa"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1004\t\u000b\u1009\n"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzp;->zzcfb:Lcom/google/android/gms/internal/ads/zzug$zzp;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzug$zzp;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzp$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzp$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzp;-><init>()V

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
