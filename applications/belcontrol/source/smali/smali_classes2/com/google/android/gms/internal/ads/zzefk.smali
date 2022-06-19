.class public final Lcom/google/android/gms/internal/ads/zzefk;
.super Lcom/google/android/gms/internal/ads/zzelb;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzemq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzefk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "Lcom/google/android/gms/internal/ads/zzefk;",
        "Lcom/google/android/gms/internal/ads/zzefk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzemq;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/zzemx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzemx<",
            "Lcom/google/android/gms/internal/ads/zzefk;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzifp:Lcom/google/android/gms/internal/ads/zzefk;


# instance fields
.field private zzifm:Lcom/google/android/gms/internal/ads/zzefr;

.field private zzifn:Lcom/google/android/gms/internal/ads/zzeff;

.field private zzifo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzefk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzefk;->zzifp:Lcom/google/android/gms/internal/ads/zzefk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefk;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzelb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzelb;-><init>()V

    return-void
.end method

.method public static zzbcz()Lcom/google/android/gms/internal/ads/zzefk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefk;->zzifp:Lcom/google/android/gms/internal/ads/zzefk;

    return-object v0
.end method

.method public static synthetic zzbda()Lcom/google/android/gms/internal/ads/zzefk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefk;->zzifp:Lcom/google/android/gms/internal/ads/zzefk;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzefl;->zzel:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefk;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzefk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefk;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzelb$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefk;->zzifp:Lcom/google/android/gms/internal/ads/zzefk;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzelb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzelb;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzefk;->zzek:Lcom/google/android/gms/internal/ads/zzemx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzefk;->zzifp:Lcom/google/android/gms/internal/ads/zzefk;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzifm"

    aput-object v0, p1, p2

    const-string p2, "zzifn"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzifo"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    sget-object p3, Lcom/google/android/gms/internal/ads/zzefk;->zzifp:Lcom/google/android/gms/internal/ads/zzefk;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzelb;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefk$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzefk$zza;-><init>(Lcom/google/android/gms/internal/ads/zzefl;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzefk;-><init>()V

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

.method public final zzbcw()Lcom/google/android/gms/internal/ads/zzefr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzifm:Lcom/google/android/gms/internal/ads/zzefr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdm()Lcom/google/android/gms/internal/ads/zzefr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzbcx()Lcom/google/android/gms/internal/ads/zzeff;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzifn:Lcom/google/android/gms/internal/ads/zzeff;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeff;->zzbcs()Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzbcy()Lcom/google/android/gms/internal/ads/zzefe;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzefk;->zzifo:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefe;->zzfd(I)Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzefe;->zzifg:Lcom/google/android/gms/internal/ads/zzefe;

    :cond_0
    return-object v0
.end method
