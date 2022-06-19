.class public final Lcom/google/android/gms/internal/ads/eht$w;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/eht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$w;",
        "Lcom/google/android/gms/internal/ads/eht$w$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcft:Lcom/google/android/gms/internal/ads/eht$w;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcfr:I

.field private zzcfs:I

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$w;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$w;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$w;->zzcft:Lcom/google/android/gms/internal/ads/eht$w;

    .line 25
    const-class v1, Lcom/google/android/gms/internal/ads/eht$w;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/eht$w;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$w;->zzcft:Lcom/google/android/gms/internal/ads/eht$w;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/ehv;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 19
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$w;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 12
    const-class p2, Lcom/google/android/gms/internal/ads/eht$w;

    monitor-enter p2

    .line 13
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$w;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$w;->zzcft:Lcom/google/android/gms/internal/ads/eht$w;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$w;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 17
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

    .line 9
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$w;->zzcft:Lcom/google/android/gms/internal/ads/eht$w;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzcfr"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzcfs"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001"

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$w;->zzcft:Lcom/google/android/gms/internal/ads/eht$w;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$w;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$w$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$w$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$w;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$w;-><init>()V

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
