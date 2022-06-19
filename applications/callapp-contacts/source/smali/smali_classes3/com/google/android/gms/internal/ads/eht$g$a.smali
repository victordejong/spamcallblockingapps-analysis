.class public final Lcom/google/android/gms/internal/ads/eht$g$a;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/eht$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$g$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$g$a;",
        "Lcom/google/android/gms/internal/ads/eht$g$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcab:Lcom/google/android/gms/internal/ads/eht$g$a;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$g$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbzy:I

.field private zzbzz:Lcom/google/android/gms/internal/ads/eht$g$d;

.field private zzcaa:Lcom/google/android/gms/internal/ads/eht$g$e;

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$g$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$g$a;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzcab:Lcom/google/android/gms/internal/ads/eht$g$a;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/ads/eht$g$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/eht$g$a$a;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzcab:Lcom/google/android/gms/internal/ads/eht$g$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$g$a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$g$a;Lcom/google/android/gms/internal/ads/eht$g$c;)V
    .locals 0

    .line 1003
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eht$g$c;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzbzy:I

    .line 1004
    iget p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$g$a;Lcom/google/android/gms/internal/ads/eht$g$d;)V
    .locals 0

    .line 1006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzbzz:Lcom/google/android/gms/internal/ads/eht$g$d;

    .line 1008
    iget p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzdv:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$g$a;Lcom/google/android/gms/internal/ads/eht$g$e;)V
    .locals 0

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzcaa:Lcom/google/android/gms/internal/ads/eht$g$e;

    .line 1012
    iget p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzdv:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzdv:I

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/eht$g$a;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzcab:Lcom/google/android/gms/internal/ads/eht$g$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/ehv;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 32
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$g$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 25
    const-class p2, Lcom/google/android/gms/internal/ads/eht$g$a;

    monitor-enter p2

    .line 26
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$g$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 28
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzcab:Lcom/google/android/gms/internal/ads/eht$g$a;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 29
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$g$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 30
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

    .line 22
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$g$a;->zzcab:Lcom/google/android/gms/internal/ads/eht$g$a;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzdv"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzbzy"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g$c;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string/jumbo v0, "zzbzz"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string/jumbo v0, "zzcaa"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$g$a;->zzcab:Lcom/google/android/gms/internal/ads/eht$g$a;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$g$a;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$g$a$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$g$a$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$g$a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$g$a;-><init>()V

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
