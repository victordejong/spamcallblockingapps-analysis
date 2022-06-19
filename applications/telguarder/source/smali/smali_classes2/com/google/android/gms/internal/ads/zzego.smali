.class public final Lcom/google/android/gms/internal/ads/zzego;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzego$zzb;,
        Lcom/google/android/gms/internal/ads/zzego$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzego;",
        "Lcom/google/android/gms/internal/ads/zzego$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzego;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzihy:Lcom/google/android/gms/internal/ads/zzego;


# instance fields
.field private zzihq:I

.field private zzihx:Lcom/google/android/gms/internal/ads/zzell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzell<",
            "Lcom/google/android/gms/internal/ads/zzego$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzego;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzego;-><init>()V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/ads/zzego;->zzihy:Lcom/google/android/gms/internal/ads/zzego;

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/zzego;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzego;->zzbin()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzihx:Lcom/google/android/gms/internal/ads/zzell;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzego$zza;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzihx:Lcom/google/android/gms/internal/ads/zzell;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzell;->zzbge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzell;)Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzihx:Lcom/google/android/gms/internal/ads/zzell;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzihx:Lcom/google/android/gms/internal/ads/zzell;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzell;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzego;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzego;->zzfl(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzego;Lcom/google/android/gms/internal/ads/zzego$zza;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzego;->zza(Lcom/google/android/gms/internal/ads/zzego$zza;)V

    return-void
.end method

.method public static zzbes()Lcom/google/android/gms/internal/ads/zzego$zzb;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzego;->zzihy:Lcom/google/android/gms/internal/ads/zzego;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzego$zzb;

    return-object v0
.end method

.method static synthetic zzbet()Lcom/google/android/gms/internal/ads/zzego;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzego;->zzihy:Lcom/google/android/gms/internal/ads/zzego;

    return-object v0
.end method

.method private final zzfl(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzihq:I

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzegn;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 31
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzego;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/zzego;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzego;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzego;->zzihy:Lcom/google/android/gms/internal/ads/zzego;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzego;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzego;->zzihy:Lcom/google/android/gms/internal/ads/zzego;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzihq"

    aput-object v0, p1, p2

    const-string p2, "zzihx"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 18
    const-class p3, Lcom/google/android/gms/internal/ads/zzego$zza;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 20
    sget-object p3, Lcom/google/android/gms/internal/ads/zzego;->zzihy:Lcom/google/android/gms/internal/ads/zzego;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzego;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzego$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzego$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzegn;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzego;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzego;-><init>()V

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
