.class public final Lcom/google/android/gms/internal/ads/zzug$zza;
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
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zza$zzb;,
        Lcom/google/android/gms/internal/ads/zzug$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zza;",
        "Lcom/google/android/gms/internal/ads/zzug$zza$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzbzl:Lcom/google/android/gms/internal/ads/zzug$zza;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbza:I

.field private zzbzb:I

.field private zzbzc:Lcom/google/android/gms/internal/ads/zzug$zzd;

.field private zzbzd:Lcom/google/android/gms/internal/ads/zzug$zze;

.field private zzbze:Lcom/google/android/gms/internal/ads/zzell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzell<",
            "Lcom/google/android/gms/internal/ads/zzug$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzbzf:Lcom/google/android/gms/internal/ads/zzug$zzf;

.field private zzbzg:Lcom/google/android/gms/internal/ads/zzug$zzp;

.field private zzbzh:Lcom/google/android/gms/internal/ads/zzug$zzn;

.field private zzbzi:Lcom/google/android/gms/internal/ads/zzug$zzk;

.field private zzbzj:Lcom/google/android/gms/internal/ads/zzug$zzl;

.field private zzbzk:Lcom/google/android/gms/internal/ads/zzell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzell<",
            "Lcom/google/android/gms/internal/ads/zzug$zzv;",
            ">;"
        }
    .end annotation
.end field

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zza;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzug$zza;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzb:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbin()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbze:Lcom/google/android/gms/internal/ads/zzell;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbin()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzk:Lcom/google/android/gms/internal/ads/zzell;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zza$zza;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zza$zza;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbza:I

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzdv:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zza;Lcom/google/android/gms/internal/ads/zzug$zza$zza;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zza$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zza;Lcom/google/android/gms/internal/ads/zzug$zze;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zze;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zze;)V
    .locals 0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzd:Lcom/google/android/gms/internal/ads/zzug$zze;

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzdv:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzdv:I

    return-void
.end method

.method public static zznj()Lcom/google/android/gms/internal/ads/zzug$zza;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzug$zza;

    return-object v0
.end method

.method static synthetic zznk()Lcom/google/android/gms/internal/ads/zzug$zza;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzug$zza;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuf;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 32
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 25
    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zza;

    monitor-enter p2

    .line 26
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzug$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 30
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

    .line 22
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzug$zza;

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzbza"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zza$zza;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbzb"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuq;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbzc"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzbzd"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzbze"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/google/android/gms/internal/ads/zzug$zzc;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzbzf"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzbzg"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzbzh"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzbzi"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzbzj"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzbzk"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/google/android/gms/internal/ads/zzug$zzv;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u100c\u0000\u0008\u100c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzl:Lcom/google/android/gms/internal/ads/zzug$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzug$zza;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zza$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zza$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zza;-><init>()V

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

.method public final zzni()Lcom/google/android/gms/internal/ads/zzug$zze;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug$zza;->zzbzd:Lcom/google/android/gms/internal/ads/zzug$zze;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zze;->zznv()Lcom/google/android/gms/internal/ads/zzug$zze;

    move-result-object v0

    :cond_0
    return-object v0
.end method
