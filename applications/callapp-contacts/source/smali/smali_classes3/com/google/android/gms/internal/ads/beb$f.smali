.class public final Lcom/google/android/gms/internal/ads/beb$f;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/beb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/beb$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/beb$f;",
        "Lcom/google/android/gms/internal/ads/beb$f$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/beb$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmm:Lcom/google/android/gms/internal/ads/beb$f;


# instance fields
.field private zzdv:I

.field private zzhv:I

.field private zzhw:I

.field private zzlm:Lcom/google/android/gms/internal/ads/dlw;

.field private zzml:Lcom/google/android/gms/internal/ads/dnr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dnr<",
            "Lcom/google/android/gms/internal/ads/dlw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/beb$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/beb$f;-><init>()V

    .line 49
    sput-object v0, Lcom/google/android/gms/internal/ads/beb$f;->zzmm:Lcom/google/android/gms/internal/ads/beb$f;

    .line 50
    const-class v1, Lcom/google/android/gms/internal/ads/beb$f;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    .line 1084
    invoke-static {}, Lcom/google/android/gms/internal/ads/dph;->d()Lcom/google/android/gms/internal/ads/dph;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzml:Lcom/google/android/gms/internal/ads/dnr;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzlm:Lcom/google/android/gms/internal/ads/dlw;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzhw:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzhv:I

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/beb$f$a;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/beb$f;->zzmm:Lcom/google/android/gms/internal/ads/beb$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/beb$f$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/beb$f;Lcom/google/android/gms/internal/ads/blg;)V
    .locals 0

    .line 2019
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/blg;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzhv:I

    .line 2020
    iget p1, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzdv:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzdv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/beb$f;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 2

    .line 2007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2009
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzml:Lcom/google/android/gms/internal/ads/dnr;

    .line 2010
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2012
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnr;)Lcom/google/android/gms/internal/ads/dnr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzml:Lcom/google/android/gms/internal/ads/dnr;

    .line 2013
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzml:Lcom/google/android/gms/internal/ads/dnr;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/dnr;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/beb$f;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/beb$f;->zzmm:Lcom/google/android/gms/internal/ads/beb$f;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/beb$f;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 1

    .line 2015
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2016
    iget v0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzdv:I

    .line 2017
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/beb$f;->zzlm:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/bfc;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 41
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/beb$f;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 34
    const-class p2, Lcom/google/android/gms/internal/ads/beb$f;

    monitor-enter p2

    .line 35
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/beb$f;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/beb$f;->zzmm:Lcom/google/android/gms/internal/ads/beb$f;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 38
    sput-object p1, Lcom/google/android/gms/internal/ads/beb$f;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 39
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

    .line 31
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/beb$f;->zzmm:Lcom/google/android/gms/internal/ads/beb$f;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzdv"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzml"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo v0, "zzlm"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string/jumbo v0, "zzhw"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/bqj;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string/jumbo v0, "zzhv"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/blg;->zzw()Lcom/google/android/gms/internal/ads/dno;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/beb$f;->zzmm:Lcom/google/android/gms/internal/ads/beb$f;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/beb$f;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/beb$f$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/beb$f$a;-><init>(Lcom/google/android/gms/internal/ads/bfc;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/beb$f;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/beb$f;-><init>()V

    return-object p1

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
