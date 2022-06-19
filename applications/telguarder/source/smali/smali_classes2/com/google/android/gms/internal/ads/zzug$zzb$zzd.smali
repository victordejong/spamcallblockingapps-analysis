.class public final Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzug$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;",
        "Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzbzx:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzv:Z

.field private zzbzw:I

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;-><init>()V

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbzx:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    .line 34
    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbz(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzr(Z)V

    return-void
.end method

.method private final zzbz(I)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzdv:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbzw:I

    return-void
.end method

.method public static zznp()Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbzx:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;

    return-object v0
.end method

.method static synthetic zznq()Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbzx:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    return-object v0
.end method

.method private final zzr(Z)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzdv:I

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbzv:Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzuf;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 26
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbzx:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 24
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

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbzx:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzbzv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbzw"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u100b\u0001"

    .line 15
    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zzbzx:Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd$zza;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzb$zzd;-><init>()V

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
