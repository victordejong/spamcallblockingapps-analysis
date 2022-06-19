.class public final Lcom/google/android/gms/internal/ads/zzcb$zzb;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcb$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzcb$zzb;",
        "Lcom/google/android/gms/internal/ads/zzcb$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzcb$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzez:Lcom/google/android/gms/internal/ads/zzcb$zzb;


# instance fields
.field private zzdv:I

.field private zzey:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcb$zzb;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzcb$zzb;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzcb$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzey:I

    return-void
.end method

.method public static zzad()Lcom/google/android/gms/internal/ads/zzcb$zzb;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzcb$zzb;

    return-object v0
.end method

.method static synthetic zzae()Lcom/google/android/gms/internal/ads/zzcb$zzb;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzcb$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzca;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzcb$zzb;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzcb$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzcb$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzey"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcd;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0001\u001b\u001b\u0001\u0000\u0000\u0000\u001b\u100c\u0000"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzez:Lcom/google/android/gms/internal/ads/zzcb$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcb$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcb$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzca;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcb$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcb$zzb;-><init>()V

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

.method public final zzac()Lcom/google/android/gms/internal/ads/zzcd;
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzey:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcd;->zzj(I)Lcom/google/android/gms/internal/ads/zzcd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcd;->zzfc:Lcom/google/android/gms/internal/ads/zzcd;

    :cond_0
    return-object v0
.end method
