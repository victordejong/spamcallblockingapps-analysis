.class public final Lcom/google/android/gms/internal/ads/zzug$zzu;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzu$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzu;",
        "Lcom/google/android/gms/internal/ads/zzug$zzu$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzcfp:Lcom/google/android/gms/internal/ads/zzug$zzu;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcfm:I

.field private zzcfn:I

.field private zzcfo:I

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfp:Lcom/google/android/gms/internal/ads/zzug$zzu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcn(I)V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzug$zzu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzco(I)V

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzug$zzu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcp(I)V

    return-void
.end method

.method private final zzcn(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzdv:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfm:I

    return-void
.end method

.method private final zzco(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzdv:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfn:I

    return-void
.end method

.method private final zzcp(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzdv:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfo:I

    return-void
.end method

.method public static zzpn()Lcom/google/android/gms/internal/ads/zzug$zzu$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfp:Lcom/google/android/gms/internal/ads/zzug$zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzu$zza;

    return-object v0
.end method

.method public static synthetic zzpo()Lcom/google/android/gms/internal/ads/zzug$zzu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfp:Lcom/google/android/gms/internal/ads/zzug$zzu;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfp:Lcom/google/android/gms/internal/ads/zzug$zzu;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfp:Lcom/google/android/gms/internal/ads/zzug$zzu;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzcfm"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcfn"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcfo"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzu;->zzcfp:Lcom/google/android/gms/internal/ads/zzug$zzu;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzu$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzu$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzu;-><init>()V

    return-object p1

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
