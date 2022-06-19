.class public final Lcom/google/android/gms/internal/ads/zzcb$zza;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzcb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzcb$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzcb$zza;",
        "Lcom/google/android/gms/internal/ads/zzcb$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzcb$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzex:Lcom/google/android/gms/internal/ads/zzcb$zza;


# instance fields
.field private zzdv:I

.field private zzev:Lcom/google/android/gms/internal/ads/zzcb$zzb;

.field private zzew:Lcom/google/android/gms/internal/ads/zzcb$zzc;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcb$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcb$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzex:Lcom/google/android/gms/internal/ads/zzcb$zza;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcb$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method public static synthetic zzab()Lcom/google/android/gms/internal/ads/zzcb$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzex:Lcom/google/android/gms/internal/ads/zzcb$zza;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzca;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzcb$zza;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzex:Lcom/google/android/gms/internal/ads/zzcb$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzex:Lcom/google/android/gms/internal/ads/zzcb$zza;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzev"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzew"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzex:Lcom/google/android/gms/internal/ads/zzcb$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcb$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcb$zza$zza;-><init>(Lcom/google/android/gms/internal/ads/zzca;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcb$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcb$zza;-><init>()V

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

.method public final zzaa()Lcom/google/android/gms/internal/ads/zzcb$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzew:Lcom/google/android/gms/internal/ads/zzcb$zzc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcb$zzc;->zzag()Lcom/google/android/gms/internal/ads/zzcb$zzc;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzx()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzdv:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzy()Lcom/google/android/gms/internal/ads/zzcb$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzev:Lcom/google/android/gms/internal/ads/zzcb$zzb;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcb$zzb;->zzad()Lcom/google/android/gms/internal/ads/zzcb$zzb;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzz()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcb$zza;->zzdv:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
