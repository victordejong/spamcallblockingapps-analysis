.class public final Lcom/google/android/gms/internal/ads/zzegg;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzegg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzegg;",
        "Lcom/google/android/gms/internal/ads/zzegg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzegg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzihk:Lcom/google/android/gms/internal/ads/zzegg;


# instance fields
.field private zzigs:Ljava/lang/String;

.field private zzigt:Lcom/google/android/gms/internal/ads/zzejr;

.field private zzihj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzegg;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegg;->zzihk:Lcom/google/android/gms/internal/ads/zzegg;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzegg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegg;->zzigs:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegg;->zzigt:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method public static zzbed()Lcom/google/android/gms/internal/ads/zzegg;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegg;->zzihk:Lcom/google/android/gms/internal/ads/zzegg;

    return-object v0
.end method

.method static synthetic zzbee()Lcom/google/android/gms/internal/ads/zzegg;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzegg;->zzihk:Lcom/google/android/gms/internal/ads/zzegg;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzegi;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzegg;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzegg;->zzihk:Lcom/google/android/gms/internal/ads/zzegg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzegg;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzegg;->zzihk:Lcom/google/android/gms/internal/ads/zzegg;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzigs"

    aput-object v0, p1, p2

    const-string p2, "zzigt"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzihj"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/ads/zzegg;->zzihk:Lcom/google/android/gms/internal/ads/zzegg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzegg;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzegg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzegi;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzegg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzegg;-><init>()V

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

.method public final zzbdx()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegg;->zzigs:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbdy()Lcom/google/android/gms/internal/ads/zzejr;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegg;->zzigt:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0
.end method
