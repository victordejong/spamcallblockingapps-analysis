.class public final Lcom/google/android/gms/internal/ads/dis$a;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dis$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dis$a;",
        "Lcom/google/android/gms/internal/ads/dis$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dis$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzilc:Lcom/google/android/gms/internal/ads/dis$a;


# instance fields
.field private zzijv:Ljava/lang/String;

.field private zzikm:I

.field private zzikx:I

.field private zziky:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/dis$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dis$a;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/dis$a;->zzilc:Lcom/google/android/gms/internal/ads/dis$a;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/dis$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dis$a;->zzijv:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dis$a$a;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/dis$a;->zzilc:Lcom/google/android/gms/internal/ads/dis$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dis$a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dis$a;I)V
    .locals 0

    .line 1009
    iput p1, p0, Lcom/google/android/gms/internal/ads/dis$a;->zziky:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dis$a;Lcom/google/android/gms/internal/ads/dii;)V
    .locals 0

    .line 1007
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dii;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/dis$a;->zzikx:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dis$a;Lcom/google/android/gms/internal/ads/djb;)V
    .locals 0

    .line 1011
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/djb;->zzv()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/dis$a;->zzikm:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dis$a;Ljava/lang/String;)V
    .locals 0

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dis$a;->zzijv:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dis$a;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/dis$a;->zzilc:Lcom/google/android/gms/internal/ads/dis$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/dir;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 30
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dis$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 23
    const-class p2, Lcom/google/android/gms/internal/ads/dis$a;

    monitor-enter p2

    .line 24
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dis$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dis$a;->zzilc:Lcom/google/android/gms/internal/ads/dis$a;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 27
    sput-object p1, Lcom/google/android/gms/internal/ads/dis$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 28
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

    .line 20
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dis$a;->zzilc:Lcom/google/android/gms/internal/ads/dis$a;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzijv"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzikx"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo v0, "zziky"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string/jumbo v0, "zzikm"

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/dis$a;->zzilc:Lcom/google/android/gms/internal/ads/dis$a;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dis$a;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dis$a$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dis$a$a;-><init>(Lcom/google/android/gms/internal/ads/dir;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dis$a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dis$a;-><init>()V

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
