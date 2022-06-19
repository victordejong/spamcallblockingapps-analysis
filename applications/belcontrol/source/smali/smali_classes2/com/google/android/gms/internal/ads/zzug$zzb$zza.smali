.class public final Lcom/google/android/gms/internal/ads/zzug$zzb$zza;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzb$zza;",
        "Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzbzr:Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzb$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzo:I

.field private zzbzp:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

.field private zzbzq:Lcom/google/android/gms/internal/ads/zzug$zzb$zze;

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zza;Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzb(Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zza;Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zza;Lcom/google/android/gms/internal/ads/zzug$zzb$zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zze;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzp:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzdv:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzdv:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zze;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzq:Lcom/google/android/gms/internal/ads/zzug$zzb$zze;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzdv:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzdv:I

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzo:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzdv:I

    return-void
.end method

.method public static zznn()Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    return-object v0
.end method

.method public static synthetic zzno()Lcom/google/android/gms/internal/ads/zzug$zzb$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzbzo"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzb;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbzp"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbzq"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;->zzbzr:Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zza;-><init>()V

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
