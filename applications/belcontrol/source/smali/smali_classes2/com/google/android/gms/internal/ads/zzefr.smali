.class public final Lcom/google/android/gms/internal/ads/zzefr;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefr$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzefr;",
        "Lcom/google/android/gms/internal/ads/zzefr$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzefr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzify:Lcom/google/android/gms/internal/ads/zzefr;


# instance fields
.field private zzifv:I

.field private zzifw:I

.field private zzifx:Lcom/google/android/gms/internal/ads/zzejr;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzify:Lcom/google/android/gms/internal/ads/zzefr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzejr;->zzilz:Lcom/google/android/gms/internal/ads/zzejr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzifx:Lcom/google/android/gms/internal/ads/zzejr;

    return-void
.end method

.method public static zzbdm()Lcom/google/android/gms/internal/ads/zzefr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzify:Lcom/google/android/gms/internal/ads/zzefr;

    return-object v0
.end method

.method public static synthetic zzbdn()Lcom/google/android/gms/internal/ads/zzefr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefr;->zzify:Lcom/google/android/gms/internal/ads/zzefr;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzefq;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzefr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefr;->zzify:Lcom/google/android/gms/internal/ads/zzefr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzefr;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefr;->zzify:Lcom/google/android/gms/internal/ads/zzefr;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzifv"

    aput-object v0, p1, p2

    const-string p2, "zzifw"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzifx"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefr;->zzify:Lcom/google/android/gms/internal/ads/zzefr;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefr$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefq;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefr;-><init>()V

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

.method public final zzbdj()Lcom/google/android/gms/internal/ads/zzefs;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzifv:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefs;->zzfg(I)Lcom/google/android/gms/internal/ads/zzefs;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefs;->zzige:Lcom/google/android/gms/internal/ads/zzefs;

    :cond_0
    return-object v0
.end method

.method public final zzbdk()Lcom/google/android/gms/internal/ads/zzeft;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzifw:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeft;->zzfh(I)Lcom/google/android/gms/internal/ads/zzeft;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeft;->zzigl:Lcom/google/android/gms/internal/ads/zzeft;

    :cond_0
    return-object v0
.end method

.method public final zzbdl()Lcom/google/android/gms/internal/ads/zzejr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefr;->zzifx:Lcom/google/android/gms/internal/ads/zzejr;

    return-object v0
.end method
