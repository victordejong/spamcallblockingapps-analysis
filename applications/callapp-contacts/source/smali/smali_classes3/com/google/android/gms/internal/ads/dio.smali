.class public final Lcom/google/android/gms/internal/ads/dio;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dio$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dio;",
        "Lcom/google/android/gms/internal/ads/dio$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dio;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziks:Lcom/google/android/gms/internal/ads/dio;


# instance fields
.field zzijv:Ljava/lang/String;

.field zziko:Ljava/lang/String;

.field zzikp:I

.field zzikq:Z

.field zzikr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/dio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dio;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/dio;->zziks:Lcom/google/android/gms/internal/ads/dio;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/ads/dio;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dio;->zziko:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dio;->zzijv:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/dio;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/dio;->zziks:Lcom/google/android/gms/internal/ads/dio;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/din;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 27
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dio;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/dio;

    monitor-enter p2

    .line 21
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dio;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dio;->zziks:Lcom/google/android/gms/internal/ads/dio;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/ads/dio;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 25
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

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dio;->zziks:Lcom/google/android/gms/internal/ads/dio;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zziko"

    aput-object v1, p1, p2

    const-string p2, "zzijv"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzikp"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzikq"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzikr"

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/dio;->zziks:Lcom/google/android/gms/internal/ads/dio;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dio;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dio$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dio$a;-><init>(Lcom/google/android/gms/internal/ads/din;)V

    return-object p1

    .line 12
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dio;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dio;-><init>()V

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
