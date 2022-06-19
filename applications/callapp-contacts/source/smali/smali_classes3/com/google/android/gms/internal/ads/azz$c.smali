.class public final Lcom/google/android/gms/internal/ads/azz$c;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/azz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/azz$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/azz$c;",
        "Lcom/google/android/gms/internal/ads/azz$c$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/azz$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfm:Lcom/google/android/gms/internal/ads/azz$c;


# instance fields
.field private zzdv:I

.field zzfg:Ljava/lang/String;

.field private zzfh:Ljava/lang/String;

.field private zzfi:Ljava/lang/String;

.field private zzfj:Ljava/lang/String;

.field private zzfk:Ljava/lang/String;

.field private zzfl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/azz$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/azz$c;-><init>()V

    .line 32
    sput-object v0, Lcom/google/android/gms/internal/ads/azz$c;->zzfm:Lcom/google/android/gms/internal/ads/azz$c;

    .line 33
    const-class v1, Lcom/google/android/gms/internal/ads/azz$c;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azz$c;->zzfg:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azz$c;->zzfh:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azz$c;->zzfi:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azz$c;->zzfj:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azz$c;->zzfk:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/azz$c;->zzfl:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/azz$c;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/azz$c;->zzfm:Lcom/google/android/gms/internal/ads/azz$c;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/azz$c;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/azz$c;->zzfm:Lcom/google/android/gms/internal/ads/azz$c;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/ayy;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 26
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/azz$c;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/azz$c;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/azz$c;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/azz$c;->zzfm:Lcom/google/android/gms/internal/ads/azz$c;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 23
    sput-object p1, Lcom/google/android/gms/internal/ads/azz$c;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 24
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

    .line 16
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/azz$c;->zzfm:Lcom/google/android/gms/internal/ads/azz$c;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzfg"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzfh"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzfi"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    const-string v0, "zzfj"

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "zzfk"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "zzfl"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005"

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/azz$c;->zzfm:Lcom/google/android/gms/internal/ads/azz$c;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/azz$c;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/azz$c$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/azz$c$a;-><init>(Lcom/google/android/gms/internal/ads/ayy;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/azz$c;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/azz$c;-><init>()V

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
