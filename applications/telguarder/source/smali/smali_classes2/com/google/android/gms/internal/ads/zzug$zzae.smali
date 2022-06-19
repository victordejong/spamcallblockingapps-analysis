.class public final Lcom/google/android/gms/internal/ads/zzug$zzae;
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
    name = "zzae"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzae$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzae;",
        "Lcom/google/android/gms/internal/ads/zzug$zzae$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzchc:Lcom/google/android/gms/internal/ads/zzug$zzae;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcha:Z

.field private zzchb:I

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzae;-><init>()V

    .line 34
    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzchc:Lcom/google/android/gms/internal/ads/zzug$zzae;

    .line 35
    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzae;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzcv(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzae;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzx(Z)V

    return-void
.end method

.method private final zzcv(I)V
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzdv:I

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzchb:I

    return-void
.end method

.method public static zzpz()Lcom/google/android/gms/internal/ads/zzug$zzae$zza;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzchc:Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzae$zza;

    return-object v0
.end method

.method static synthetic zzqa()Lcom/google/android/gms/internal/ads/zzug$zzae;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzchc:Lcom/google/android/gms/internal/ads/zzug$zzae;

    return-object v0
.end method

.method private final zzx(Z)V
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzdv:I

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzcha:Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuf;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 27
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzae;

    monitor-enter p2

    .line 21
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzchc:Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 25
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

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzchc:Lcom/google/android/gms/internal/ads/zzug$zzae;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzcha"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzchb"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1004\u0001"

    .line 16
    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzchc:Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzug$zzae;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzae$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzae$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    .line 12
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzae;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzae;-><init>()V

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

.method public final zzpy()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzae;->zzcha:Z

    return v0
.end method
