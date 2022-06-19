.class public final Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzepa$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziyu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;


# instance fields
.field private zzdv:I

.field private zziyt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zziyu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zziyt:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zzid(Ljava/lang/String;)V

    return-void
.end method

.method public static zzblr()Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zziyu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;

    return-object v0
.end method

.method static synthetic zzbls()Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zziyu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    return-object v0
.end method

.method private final zzid(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zzdv:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zziyt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeoz;->zzel:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zziyu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    .line 23
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

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zziyu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zziyt"

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1008\u0000"

    .line 14
    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zziyu:Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeoz;)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zza;-><init>()V

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
