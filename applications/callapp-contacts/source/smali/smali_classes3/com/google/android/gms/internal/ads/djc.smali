.class public final Lcom/google/android/gms/internal/ads/djc;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/djc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/djc;",
        "Lcom/google/android/gms/internal/ads/djc$a;",
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
            "Lcom/google/android/gms/internal/ads/djc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzilv:Lcom/google/android/gms/internal/ads/djc;


# instance fields
.field private zzilt:Ljava/lang/String;

.field zzilu:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/dio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/djc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/djc;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/djc;->zzilv:Lcom/google/android/gms/internal/ads/djc;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/djc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/djc;->zzilt:Ljava/lang/String;

    .line 1084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/djc;->zzilu:Lcom/google/android/gms/internal/ads/dnr;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/djc;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/djc;->zzilv:Lcom/google/android/gms/internal/ads/djc;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/djc;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/djc;->zzilv:Lcom/google/android/gms/internal/ads/djc;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/dje;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/djc;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/djc;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/djc;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/djc;->zzilv:Lcom/google/android/gms/internal/ads/djc;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/djc;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/djc;->zzilv:Lcom/google/android/gms/internal/ads/djc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzilt"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzilu"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 9
    const-class v0, Lcom/google/android/gms/internal/ads/dio;

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/djc;->zzilv:Lcom/google/android/gms/internal/ads/djc;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/djc;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/djc$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/djc$a;-><init>(Lcom/google/android/gms/internal/ads/dje;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/djc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/djc;-><init>()V

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
