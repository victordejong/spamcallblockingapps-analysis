.class public final Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;
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
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjav:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;


# instance fields
.field private zzdv:I

.field private zzjas:Ljava/lang/String;

.field private zzjat:J

.field private zzjau:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjav:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjas:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;J)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzft(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzbw(Z)V

    return-void
.end method

.method public static zzbmg()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjav:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;

    return-object v0
.end method

.method static synthetic zzbmh()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjav:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    return-object v0
.end method

.method private final zzbw(Z)V
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzdv:I

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjau:Z

    return-void
.end method

.method private final zzft(J)V
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzdv:I

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjat:J

    return-void
.end method

.method private final zzin(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzdv:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjas:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeoz;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjav:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjav:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzjas"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzjat"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjau"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1007\u0002"

    .line 20
    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zzjav:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeoz;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzi;-><init>()V

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
