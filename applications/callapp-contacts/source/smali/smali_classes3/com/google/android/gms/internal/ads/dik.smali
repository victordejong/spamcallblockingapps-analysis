.class public final Lcom/google/android/gms/internal/ads/dik;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dik$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dik;",
        "Lcom/google/android/gms/internal/ads/dik$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dik;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzikn:Lcom/google/android/gms/internal/ads/dik;


# instance fields
.field zzijv:Ljava/lang/String;

.field zzijw:Lcom/google/android/gms/internal/ads/dlw;

.field private zzikm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/dik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dik;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/dik;->zzikn:Lcom/google/android/gms/internal/ads/dik;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/dik;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dik;->zzijv:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dik;->zzijw:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dik;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/dik;->zzikn:Lcom/google/android/gms/internal/ads/dik;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dik;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/dik;->zzikn:Lcom/google/android/gms/internal/ads/dik;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/dim;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

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
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dik;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/dik;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dik;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dik;->zzikn:Lcom/google/android/gms/internal/ads/dik;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/dik;->zzek:Lcom/google/android/gms/internal/ads/dpc;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/dik;->zzikn:Lcom/google/android/gms/internal/ads/dik;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzijv"

    aput-object v1, p1, p2

    const-string p2, "zzijw"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzikm"

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/dik;->zzikn:Lcom/google/android/gms/internal/ads/dik;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dik;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dik$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dik$a;-><init>(Lcom/google/android/gms/internal/ads/dim;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dik;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dik;-><init>()V

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
