.class public final Lcom/google/android/gms/internal/ads/drf$b$i;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/drf$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/drf$b$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/drf$b$i;",
        "Lcom/google/android/gms/internal/ads/drf$b$i$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/drf$b$i;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjdy:Lcom/google/android/gms/internal/ads/drf$b$i;


# instance fields
.field private zzdv:I

.field private zzjdv:Ljava/lang/String;

.field private zzjdw:J

.field private zzjdx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/drf$b$i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drf$b$i;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdy:Lcom/google/android/gms/internal/ads/drf$b$i;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/drf$b$i;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdv:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/drf$b$i$a;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdy:Lcom/google/android/gms/internal/ads/drf$b$i;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/drf$b$i$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$i;J)V
    .locals 1

    .line 1008
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzdv:I

    .line 1009
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdw:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$i;Ljava/lang/String;)V
    .locals 1

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzdv:I

    .line 1006
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdv:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$i;Z)V
    .locals 1

    .line 1011
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzdv:I

    .line 1012
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdx:Z

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/drf$b$i;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdy:Lcom/google/android/gms/internal/ads/drf$b$i;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/dre;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 31
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$i;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/drf$b$i;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$i;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdy:Lcom/google/android/gms/internal/ads/drf$b$i;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/drf$b$i;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdy:Lcom/google/android/gms/internal/ads/drf$b$i;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzjdv"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzjdw"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzjdx"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1007\u0002"

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$i;->zzjdy:Lcom/google/android/gms/internal/ads/drf$b$i;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/drf$b$i;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$i$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/drf$b$i$a;-><init>(Lcom/google/android/gms/internal/ads/dre;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$i;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/drf$b$i;-><init>()V

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
