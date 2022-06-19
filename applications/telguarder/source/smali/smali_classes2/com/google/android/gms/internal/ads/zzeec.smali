.class public final Lcom/google/android/gms/internal/ads/zzeec;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeec$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzeec;",
        "Lcom/google/android/gms/internal/ads/zzeec$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzeec;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziej:Lcom/google/android/gms/internal/ads/zzeec;


# instance fields
.field private zzidz:I

.field private zzieh:Lcom/google/android/gms/internal/ads/zzeeg;

.field private zziei:Lcom/google/android/gms/internal/ads/zzefv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeec;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeec;->zziej:Lcom/google/android/gms/internal/ads/zzeec;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/ads/zzeec;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzidz:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeec;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeec;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeec;Lcom/google/android/gms/internal/ads/zzeeg;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeec;->zzb(Lcom/google/android/gms/internal/ads/zzeeg;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzeec;Lcom/google/android/gms/internal/ads/zzefv;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeec;->zzb(Lcom/google/android/gms/internal/ads/zzefv;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzeeg;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzieh:Lcom/google/android/gms/internal/ads/zzeeg;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzefv;)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeec;->zziei:Lcom/google/android/gms/internal/ads/zzefv;

    return-void
.end method

.method public static zzbbo()Lcom/google/android/gms/internal/ads/zzeec$zza;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeec;->zziej:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeec$zza;

    return-object v0
.end method

.method static synthetic zzbbp()Lcom/google/android/gms/internal/ads/zzeec;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeec;->zziej:Lcom/google/android/gms/internal/ads/zzeec;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeec;->zziej:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeec;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzidz:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeed;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeec;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 25
    const-class p2, Lcom/google/android/gms/internal/ads/zzeec;

    monitor-enter p2

    .line 26
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeec;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeec;->zziej:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/ads/zzeec;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeec;->zziej:Lcom/google/android/gms/internal/ads/zzeec;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzidz"

    aput-object v0, p1, p2

    const-string p2, "zzieh"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziei"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t"

    .line 21
    sget-object p3, Lcom/google/android/gms/internal/ads/zzeec;->zziej:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeec;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeec$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeec$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeed;)V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeec;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeec;-><init>()V

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

.method public final zzbbm()Lcom/google/android/gms/internal/ads/zzeeg;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzieh:Lcom/google/android/gms/internal/ads/zzeeg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeeg;->zzbbv()Lcom/google/android/gms/internal/ads/zzeeg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzbbn()Lcom/google/android/gms/internal/ads/zzefv;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeec;->zziei:Lcom/google/android/gms/internal/ads/zzefv;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefv;->zzbdq()Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object v0

    :cond_0
    return-object v0
.end method
