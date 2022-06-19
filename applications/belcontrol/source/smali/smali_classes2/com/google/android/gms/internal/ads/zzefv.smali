.class public final Lcom/google/android/gms/internal/ads/zzefv;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefv$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzefv;",
        "Lcom/google/android/gms/internal/ads/zzefv$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzefv;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzigo:Lcom/google/android/gms/internal/ads/zzefv;


# instance fields
.field private zzidz:I

.field private zziea:Lcom/google/android/gms/internal/ads/zzejr;

.field private zzign:Lcom/google/android/gms/internal/ads/zzega;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefv;->zzigo:Lcom/google/android/gms/internal/ads/zzefv;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefv;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzefv;->zzidz:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzefv;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefv;->setVersion(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzefv;Lcom/google/android/gms/internal/ads/zzega;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefv;->zzc(Lcom/google/android/gms/internal/ads/zzega;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzefv;Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefv;->zzs(Lcom/google/android/gms/internal/ads/zzejr;)V

    return-void
.end method

.method public static zzbdp()Lcom/google/android/gms/internal/ads/zzefv$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefv;->zzigo:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzefv$zza;

    return-object v0
.end method

.method public static zzbdq()Lcom/google/android/gms/internal/ads/zzefv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefv;->zzigo:Lcom/google/android/gms/internal/ads/zzefv;

    return-object v0
.end method

.method public static synthetic zzbdr()Lcom/google/android/gms/internal/ads/zzefv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefv;->zzigo:Lcom/google/android/gms/internal/ads/zzefv;

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzega;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefv;->zzign:Lcom/google/android/gms/internal/ads/zzega;

    return-void
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefv;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method public static zzt(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzefv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefv;->zzigo:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefv;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->zzidz:I

    return v0
.end method

.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzefx;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzefv;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefv;->zzigo:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzefv;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefv;->zzigo:Lcom/google/android/gms/internal/ads/zzefv;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzidz"

    aput-object v0, p1, p2

    const-string p2, "zzign"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziea"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefv;->zzigo:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefv$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefv$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefx;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefv;-><init>()V

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

.method public final zzbbe()Lcom/google/android/gms/internal/ads/zzejr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0
.end method

.method public final zzbdo()Lcom/google/android/gms/internal/ads/zzega;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefv;->zzign:Lcom/google/android/gms/internal/ads/zzega;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzega;->zzbdv()Lcom/google/android/gms/internal/ads/zzega;

    move-result-object v0

    :cond_0
    return-object v0
.end method
