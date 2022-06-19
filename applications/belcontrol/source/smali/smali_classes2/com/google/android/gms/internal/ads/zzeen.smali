.class public final Lcom/google/android/gms/internal/ads/zzeen;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeen$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzeen;",
        "Lcom/google/android/gms/internal/ads/zzeen$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzeen;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziet:Lcom/google/android/gms/internal/ads/zzeen;


# instance fields
.field private zzidz:I

.field private zziea:Lcom/google/android/gms/internal/ads/zzejr;

.field private zzies:Lcom/google/android/gms/internal/ads/zzeer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeen;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeen;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeen;->zziet:Lcom/google/android/gms/internal/ads/zzeen;

    const-class v1, Lcom/google/android/gms/internal/ads/zzeen;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeen;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeen;->zzidz:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzeen;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeen;->setVersion(I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzeen;Lcom/google/android/gms/internal/ads/zzeer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeen;->zza(Lcom/google/android/gms/internal/ads/zzeer;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzeen;Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeen;->zzs(Lcom/google/android/gms/internal/ads/zzejr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzeer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeen;->zzies:Lcom/google/android/gms/internal/ads/zzeer;

    return-void
.end method

.method public static zzbcd()Lcom/google/android/gms/internal/ads/zzeen$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeen;->zziet:Lcom/google/android/gms/internal/ads/zzeen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeen$zza;

    return-object v0
.end method

.method public static synthetic zzbce()Lcom/google/android/gms/internal/ads/zzeen;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeen;->zziet:Lcom/google/android/gms/internal/ads/zzeen;

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeen;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeen;->zziet:Lcom/google/android/gms/internal/ads/zzeen;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeen;

    return-object p0
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeen;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeen;->zzidz:I

    return v0
.end method

.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzeem;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeen;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzeen;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeen;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeen;->zziet:Lcom/google/android/gms/internal/ads/zzeen;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzeen;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeen;->zziet:Lcom/google/android/gms/internal/ads/zzeen;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzidz"

    aput-object v0, p1, p2

    const-string p2, "zzies"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziea"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzeen;->zziet:Lcom/google/android/gms/internal/ads/zzeen;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeen$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeen$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeem;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeen;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeen;-><init>()V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeen;->zziea:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0
.end method

.method public final zzbcc()Lcom/google/android/gms/internal/ads/zzeer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeen;->zzies:Lcom/google/android/gms/internal/ads/zzeer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeer;->zzbcg()Lcom/google/android/gms/internal/ads/zzeer;

    move-result-object v0

    :cond_0
    return-object v0
.end method
