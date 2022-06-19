.class public final Lcom/google/android/gms/internal/ads/drf$b$d$a;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/drf$b$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/drf$b$d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/drf$b$d$a;",
        "Lcom/google/android/gms/internal/ads/drf$b$d$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/drf$b$d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjcj:Lcom/google/android/gms/internal/ads/drf$b$d$a;


# instance fields
.field private zzdv:I

.field private zzjcg:Lcom/google/android/gms/internal/ads/dlw;

.field private zzjch:Lcom/google/android/gms/internal/ads/dlw;

.field private zzjci:Lcom/google/android/gms/internal/ads/dlw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/drf$b$d$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/drf$b$d$a;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzjcj:Lcom/google/android/gms/internal/ads/drf$b$d$a;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/ads/drf$b$d$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzjcg:Lcom/google/android/gms/internal/ads/dlw;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzjch:Lcom/google/android/gms/internal/ads/dlw;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzjci:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/drf$b$d$a;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzjcj:Lcom/google/android/gms/internal/ads/drf$b$d$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/dre;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/ads/drf$b$d$a;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzjcj:Lcom/google/android/gms/internal/ads/drf$b$d$a;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzjcj:Lcom/google/android/gms/internal/ads/drf$b$d$a;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzjcg"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzjch"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzjci"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/drf$b$d$a;->zzjcj:Lcom/google/android/gms/internal/ads/drf$b$d$a;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/drf$b$d$a;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$d$a$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/drf$b$d$a$a;-><init>(Lcom/google/android/gms/internal/ads/dre;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/drf$b$d$a;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/drf$b$d$a;-><init>()V

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
