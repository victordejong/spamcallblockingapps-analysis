.class public final Lcom/google/android/gms/internal/ads/zzegl;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzegl$zza;,
        Lcom/google/android/gms/internal/ads/zzegl$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzegl;",
        "Lcom/google/android/gms/internal/ads/zzegl$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzegl;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzihs:Lcom/google/android/gms/internal/ads/zzegl;


# instance fields
.field private zzihq:I

.field private zzihr:Lcom/google/android/gms/internal/ads/zzell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzell<",
            "Lcom/google/android/gms/internal/ads/zzegl$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzegl;->zzihs:Lcom/google/android/gms/internal/ads/zzegl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzegl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzelb;->zzbin()Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzihr:Lcom/google/android/gms/internal/ads/zzell;

    return-void
.end method

.method public static synthetic zzben()Lcom/google/android/gms/internal/ads/zzegl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzegl;->zzihs:Lcom/google/android/gms/internal/ads/zzegl;

    return-object v0
.end method

.method public static zzc([BLcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzegl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzegl;->zzihs:Lcom/google/android/gms/internal/ads/zzegl;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzelb;[BLcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzelb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzegl;

    return-object p0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzegm;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegl;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzegl;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegl;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegl;->zzihs:Lcom/google/android/gms/internal/ads/zzegl;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzegl;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegl;->zzihs:Lcom/google/android/gms/internal/ads/zzegl;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzihq"

    aput-object v0, p1, p2

    const-string p2, "zzihr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-class p3, Lcom/google/android/gms/internal/ads/zzegl$zzb;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegl;->zzihs:Lcom/google/android/gms/internal/ads/zzegl;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegl$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzegl$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegm;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzegl;-><init>()V

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

.method public final zzbek()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzihq:I

    return v0
.end method

.method public final zzbel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzegl$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzihr:Lcom/google/android/gms/internal/ads/zzell;

    return-object v0
.end method

.method public final zzbem()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzihr:Lcom/google/android/gms/internal/ads/zzell;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
