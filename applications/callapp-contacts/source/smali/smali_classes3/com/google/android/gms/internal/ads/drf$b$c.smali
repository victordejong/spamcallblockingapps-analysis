.class public final Lcom/google/android/gms/internal/ads/drf$b$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/drf$b$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/drf$b$c;",
        "Lcom/google/android/gms/internal/ads/drf$b$c$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/drf$b$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjbz:Lcom/google/android/gms/internal/ads/drf$b$c;


# instance fields
.field private zzdv:I

.field private zzijw:Lcom/google/android/gms/internal/ads/dlw;

.field private zzjat:B

.field private zzjby:Lcom/google/android/gms/internal/ads/dlw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/drf$b$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drf$b$c;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjbz:Lcom/google/android/gms/internal/ads/drf$b$c;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/drf$b$c;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjat:B

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjby:Lcom/google/android/gms/internal/ads/dlw;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzijw:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/drf$b$c$a;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjbz:Lcom/google/android/gms/internal/ads/drf$b$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/drf$b$c$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/drf$b$c;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 1

    .line 1006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzdv:I

    .line 1008
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjby:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/drf$b$c;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjbz:Lcom/google/android/gms/internal/ads/drf$b$c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/drf$b$c;Lcom/google/android/gms/internal/ads/dlw;)V
    .locals 1

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    iget v0, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzdv:I

    .line 1012
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzijw:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/dre;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-byte p1, v1

    .line 32
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjat:B

    return-object v2

    .line 31
    :pswitch_1
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 22
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$c;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_2

    .line 24
    const-class p2, Lcom/google/android/gms/internal/ads/drf$b$c;

    monitor-enter p2

    .line 25
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$c;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjbz:Lcom/google/android/gms/internal/ads/drf$b$c;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 28
    sput-object p1, Lcom/google/android/gms/internal/ads/drf$b$c;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 29
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

    .line 21
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjbz:Lcom/google/android/gms/internal/ads/drf$b$c;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, v0

    const-string p2, "zzjby"

    aput-object p2, p1, v1

    const/4 p2, 0x2

    const-string v0, "zzijw"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u150a\u0000\u0002\u100a\u0001"

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$c;->zzjbz:Lcom/google/android/gms/internal/ads/drf$b$c;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/drf$b$c;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$c$a;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/drf$b$c$a;-><init>(Lcom/google/android/gms/internal/ads/dre;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$c;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/drf$b$c;-><init>()V

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
