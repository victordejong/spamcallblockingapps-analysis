.class public final Lcom/google/android/gms/internal/ads/zzug$zzm;
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
    name = "zzm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;,
        Lcom/google/android/gms/internal/ads/zzug$zzm$zza;,
        Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzug$zzm;",
        "Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static final zzcdc:Lcom/google/android/gms/internal/ads/zzug$zzm;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzug$zzm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcan:I

.field private zzcdb:I

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzug$zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzug$zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdc:Lcom/google/android/gms/internal/ads/zzug$zzm;

    const-class v1, Lcom/google/android/gms/internal/ads/zzug$zzm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzm$zza;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdb:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzdv:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzdv:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcan:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzdv:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzm;Lcom/google/android/gms/internal/ads/zzug$zzm$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zza(Lcom/google/android/gms/internal/ads/zzug$zzm$zza;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzug$zzm;Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzug$zzm;->zza(Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;)V

    return-void
.end method

.method public static zzop()Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdc:Lcom/google/android/gms/internal/ads/zzug$zzm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelb;->zzbii()Lcom/google/android/gms/internal/ads/zzelb$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;

    return-object v0
.end method

.method public static zzoq()Lcom/google/android/gms/internal/ads/zzug$zzm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdc:Lcom/google/android/gms/internal/ads/zzug$zzm;

    return-object v0
.end method

.method public static synthetic zzor()Lcom/google/android/gms/internal/ads/zzug$zzm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdc:Lcom/google/android/gms/internal/ads/zzug$zzm;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzug$zzm;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdc:Lcom/google/android/gms/internal/ads/zzug$zzm;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdc:Lcom/google/android/gms/internal/ads/zzug$zzm;

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

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzcdb"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzw()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdc:Lcom/google/android/gms/internal/ads/zzug$zzm;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzug$zzm$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzuf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzug$zzm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzug$zzm;-><init>()V

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

.method public final zzol()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzdv:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzom()Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcan:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzcf(I)Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;->zzcdi:Lcom/google/android/gms/internal/ads/zzug$zzm$zzc;

    :cond_0
    return-object v0
.end method

.method public final zzon()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzdv:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzoo()Lcom/google/android/gms/internal/ads/zzug$zzm$zza;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzug$zzm;->zzcdb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzce(I)Lcom/google/android/gms/internal/ads/zzug$zzm$zza;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzug$zzm$zza;->zzcdd:Lcom/google/android/gms/internal/ads/zzug$zzm$zza;

    :cond_0
    return-object v0
.end method
