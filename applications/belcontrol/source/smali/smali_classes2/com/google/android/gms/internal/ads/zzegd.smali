.class public final Lcom/google/android/gms/internal/ads/zzegd;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzegd$zzb;,
        Lcom/google/android/gms/internal/ads/zzegd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzegd;",
        "Lcom/google/android/gms/internal/ads/zzegd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzegd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzigv:Lcom/google/android/gms/internal/ads/zzegd;


# instance fields
.field private zzigs:Ljava/lang/String;

.field private zzigt:Lcom/google/android/gms/internal/ads/zzejr;

.field private zzigu:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzegd;->zzigv:Lcom/google/android/gms/internal/ads/zzegd;

    const-class v1, Lcom/google/android/gms/internal/ads/zzegd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegd;->zzigs:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegd;->zzigt:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzegd$zza;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegd$zza;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzegd;->zzigu:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzegd;Lcom/google/android/gms/internal/ads/zzegd$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegd;->zza(Lcom/google/android/gms/internal/ads/zzegd$zza;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzegd;Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegd;->zzaf(Lcom/google/android/gms/internal/ads/zzejr;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzegd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzegd;->zzht(Ljava/lang/String;)V

    return-void
.end method

.method private final zzaf(Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegd;->zzigt:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method public static zzbea()Lcom/google/android/gms/internal/ads/zzegd$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd;->zzigv:Lcom/google/android/gms/internal/ads/zzegd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegd$zzb;

    return-object v0
.end method

.method public static zzbeb()Lcom/google/android/gms/internal/ads/zzegd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd;->zzigv:Lcom/google/android/gms/internal/ads/zzegd;

    return-object v0
.end method

.method public static synthetic zzbec()Lcom/google/android/gms/internal/ads/zzegd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd;->zzigv:Lcom/google/android/gms/internal/ads/zzegd;

    return-object v0
.end method

.method private final zzht(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegd;->zzigs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzegc;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegd;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzegd;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegd;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegd;->zzigv:Lcom/google/android/gms/internal/ads/zzegd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzegd;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegd;->zzigv:Lcom/google/android/gms/internal/ads/zzegd;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzigs"

    aput-object v0, p1, p2

    const-string p2, "zzigt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzigu"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegd;->zzigv:Lcom/google/android/gms/internal/ads/zzegd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegd$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzegd$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzegc;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzegd;-><init>()V

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

.method public final zzbdx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegd;->zzigs:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbdy()Lcom/google/android/gms/internal/ads/zzejr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegd;->zzigt:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0
.end method

.method public final zzbdz()Lcom/google/android/gms/internal/ads/zzegd$zza;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegd;->zzigu:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegd$zza;->zzfj(I)Lcom/google/android/gms/internal/ads/zzegd$zza;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzegd$zza;->zzihb:Lcom/google/android/gms/internal/ads/zzegd$zza;

    :cond_0
    return-object v0
.end method
