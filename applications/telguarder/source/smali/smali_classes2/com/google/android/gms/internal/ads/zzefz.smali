.class public final Lcom/google/android/gms/internal/ads/zzefz;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefz$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzefz;",
        "Lcom/google/android/gms/internal/ads/zzefz$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzefz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzigp:Lcom/google/android/gms/internal/ads/zzefz;


# instance fields
.field private zzidz:I

.field private zzied:I

.field private zzign:Lcom/google/android/gms/internal/ads/zzega;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefz;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzefz;->zzigp:Lcom/google/android/gms/internal/ads/zzefz;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/zzefz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method public static zzbds()Lcom/google/android/gms/internal/ads/zzefz;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefz;->zzigp:Lcom/google/android/gms/internal/ads/zzefz;

    return-object v0
.end method

.method static synthetic zzbdt()Lcom/google/android/gms/internal/ads/zzefz;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefz;->zzigp:Lcom/google/android/gms/internal/ads/zzefz;

    return-object v0
.end method

.method public static zzu(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzefz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzelo;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzefz;->zzigp:Lcom/google/android/gms/internal/ads/zzefz;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefz;

    return-object p0
.end method


# virtual methods
.method public final getKeySize()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzied:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzefy;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefz;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/zzefz;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefz;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefz;->zzigp:Lcom/google/android/gms/internal/ads/zzefz;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/zzefz;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefz;->zzigp:Lcom/google/android/gms/internal/ads/zzefz;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzign"

    aput-object v0, p1, p2

    const-string p2, "zzied"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzidz"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/ads/zzefz;->zzigp:Lcom/google/android/gms/internal/ads/zzefz;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzefz;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefz$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefz$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefy;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefz;-><init>()V

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

.method public final zzbdo()Lcom/google/android/gms/internal/ads/zzega;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefz;->zzign:Lcom/google/android/gms/internal/ads/zzega;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzega;->zzbdv()Lcom/google/android/gms/internal/ads/zzega;

    move-result-object v0

    :cond_0
    return-object v0
.end method
