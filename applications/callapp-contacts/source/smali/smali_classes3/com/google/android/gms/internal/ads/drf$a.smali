.class public final Lcom/google/android/gms/internal/ads/drf$a;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/drf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/drf$a$a;,
        Lcom/google/android/gms/internal/ads/drf$a$b;,
        Lcom/google/android/gms/internal/ads/drf$a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/drf$a;",
        "Lcom/google/android/gms/internal/ads/drf$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/drf$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjau:Lcom/google/android/gms/internal/ads/drf$a;


# instance fields
.field private zzdv:I

.field private zzjan:I

.field private zzjao:Lcom/google/android/gms/internal/ads/drf$a$b;

.field private zzjap:Lcom/google/android/gms/internal/ads/dlw;

.field private zzjaq:Lcom/google/android/gms/internal/ads/dlw;

.field private zzjar:Z

.field private zzjas:Z

.field private zzjat:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/drf$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drf$a;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/drf$a;->zzjau:Lcom/google/android/gms/internal/ads/drf$a;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/drf$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/drf$a;->zzjat:B

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$a;->zzjap:Lcom/google/android/gms/internal/ads/dlw;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$a;->zzjaq:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/drf$a;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$a;->zzjau:Lcom/google/android/gms/internal/ads/drf$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/dre;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-byte p1, v1

    .line 24
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$a;->zzjat:B

    return-object v2

    .line 23
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$a;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_2

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/drf$a;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/drf$a;->zzjau:Lcom/google/android/gms/internal/ads/drf$a;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/drf$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 21
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$a;->zzjau:Lcom/google/android/gms/internal/ads/drf$a;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, v0

    const-string p2, "zzjan"

    aput-object p2, p1, v1

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/drf$a$c;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzjao"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzjap"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzjaq"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "zzjar"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "zzjas"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0001\u0001\u150c\u0000\u0002\u1009\u0001\u0003\u100a\u0002\u0004\u100a\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$a;->zzjau:Lcom/google/android/gms/internal/ads/drf$a;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/drf$a;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$a$a;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/drf$a$a;-><init>(Lcom/google/android/gms/internal/ads/dre;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/drf$a;-><init>()V

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
