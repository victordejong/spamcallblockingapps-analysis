.class public final Lcom/google/android/gms/internal/ads/zzeeg;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeeg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzeeg;",
        "Lcom/google/android/gms/internal/ads/zzeeg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzeeg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzieo:Lcom/google/android/gms/internal/ads/zzeeg;


# instance fields
.field private zzidz:I

.field private zziea:Lcom/google/android/gms/internal/ads/zzejr;

.field private zzien:Lcom/google/android/gms/internal/ads/zzeek;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeeg;-><init>()V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzieo:Lcom/google/android/gms/internal/ads/zzeeg;

    .line 43
    const-class v1, Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzidz:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeeg;I)V
    .locals 0

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeeg;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeeg;Lcom/google/android/gms/internal/ads/zzeek;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeeg;->zzb(Lcom/google/android/gms/internal/ads/zzeek;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeeg;Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeeg;->zzs(Lcom/google/android/gms/internal/ads/zzejr;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzeek;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzien:Lcom/google/android/gms/internal/ads/zzeek;

    return-void
.end method

.method public static zzbbu()Lcom/google/android/gms/internal/ads/zzeeg$zza;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzieo:Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeeg$zza;

    return-object v0
.end method

.method public static zzbbv()Lcom/google/android/gms/internal/ads/zzeeg;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzieo:Lcom/google/android/gms/internal/ads/zzeeg;

    return-object v0
.end method

.method static synthetic zzbbw()Lcom/google/android/gms/internal/ads/zzeeg;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzieo:Lcom/google/android/gms/internal/ads/zzeeg;

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeeg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeeg;->zzieo:Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeeg;

    return-object p0
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzidz:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeeh;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 33
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeeg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 26
    const-class p2, Lcom/google/android/gms/internal/ads/zzeeg;

    monitor-enter p2

    .line 27
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeeg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeeg;->zzieo:Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 30
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeeg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 31
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

    .line 23
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeeg;->zzieo:Lcom/google/android/gms/internal/ads/zzeeg;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzidz"

    aput-object v0, p1, p2

    const-string p2, "zzien"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziea"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    .line 22
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeeg;->zzieo:Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeeg;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeeg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeeg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeeh;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeeg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeeg;-><init>()V

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

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0
.end method

.method public final zzbbt()Lcom/google/android/gms/internal/ads/zzeek;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzien:Lcom/google/android/gms/internal/ads/zzeek;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeek;->zzbca()Lcom/google/android/gms/internal/ads/zzeek;

    move-result-object v0

    :cond_0
    return-object v0
.end method
