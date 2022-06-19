.class public final Lcom/google/android/gms/internal/ads/beb$a$g;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/beb$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/beb$a$g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/beb$a$g;",
        "Lcom/google/android/gms/internal/ads/beb$a$g$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/beb$a$g;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzle:Lcom/google/android/gms/internal/ads/beb$a$g;


# instance fields
.field private zzdv:I

.field private zzhf:J

.field private zzhg:J

.field private zzla:J

.field private zzlb:J

.field private zzlc:J

.field private zzld:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/ads/beb$a$g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/beb$a$g;-><init>()V

    .line 47
    sput-object v0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzle:Lcom/google/android/gms/internal/ads/beb$a$g;

    .line 48
    const-class v1, Lcom/google/android/gms/internal/ads/beb$a$g;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzhf:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzhg:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzla:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzlb:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzlc:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzld:J

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/beb$a$g$a;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzle:Lcom/google/android/gms/internal/ads/beb$a$g;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/beb$a$g$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/beb$a$g;J)V
    .locals 1

    .line 1009
    iget v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzdv:I

    .line 1010
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzla:J

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/beb$a$g;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzle:Lcom/google/android/gms/internal/ads/beb$a$g;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/beb$a$g;J)V
    .locals 1

    .line 1012
    iget v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzdv:I

    .line 1013
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzlb:J

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/beb$a$g;J)V
    .locals 1

    .line 1015
    iget v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzdv:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzdv:I

    .line 1016
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzlc:J

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/beb$a$g;J)V
    .locals 1

    .line 1018
    iget v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzdv:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzdv:I

    .line 1019
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzld:J

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/bfc;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 38
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/beb$a$g;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 31
    const-class p2, Lcom/google/android/gms/internal/ads/beb$a$g;

    monitor-enter p2

    .line 32
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/beb$a$g;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzle:Lcom/google/android/gms/internal/ads/beb$a$g;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 35
    sput-object p1, Lcom/google/android/gms/internal/ads/beb$a$g;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 36
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

    .line 28
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/beb$a$g;->zzle:Lcom/google/android/gms/internal/ads/beb$a$g;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzhf"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzhg"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzla"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzlb"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzlc"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "zzld"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005"

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/beb$a$g;->zzle:Lcom/google/android/gms/internal/ads/beb$a$g;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/beb$a$g;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/beb$a$g$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/beb$a$g$a;-><init>(Lcom/google/android/gms/internal/ads/bfc;)V

    return-object p1

    .line 23
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/beb$a$g;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/beb$a$g;-><init>()V

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
