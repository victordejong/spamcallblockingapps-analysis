.class public final Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzepa$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzepa$zza$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;",
        "Lcom/google/android/gms/internal/ads/zzepa$zza$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzixw:Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;


# instance fields
.field private zzdv:I

.field private zzixs:Ljava/lang/String;

.field private zzixt:Ljava/lang/String;

.field private zzixu:Ljava/lang/String;

.field private zzixv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzixw:Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzixs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzixt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzixu:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzbll()Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzixw:Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzeoz;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzixw:Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzixw:Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzixs"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzixt"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzixu"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzixv"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1004\u0003"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;->zzixw:Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeoz;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzepa$zza$zzb;-><init>()V

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
