.class public final Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzepa$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;,
        Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;",
        "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzizp:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;


# instance fields
.field private zzcan:I

.field private zzdv:I

.field private zzizn:Ljava/lang/String;

.field private zzizo:Lcom/google/android/gms/internal/ads/zzejr;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizp:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizn:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizo:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method private final setMimeType(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzdv:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizn:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzcan:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzdv:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzar(Lcom/google/android/gms/internal/ads/zzejr;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->setMimeType(Ljava/lang/String;)V

    return-void
.end method

.method private final zzar(Lcom/google/android/gms/internal/ads/zzejr;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzdv:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizo:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method public static zzbmb()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizp:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;

    return-object v0
.end method

.method public static synthetic zzbmc()Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizp:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizp:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizp:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzcan"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zza;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzizn"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzizo"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u100a\u0002"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;->zzizp:Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzeoz;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzepa$zzb$zzf;-><init>()V

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
