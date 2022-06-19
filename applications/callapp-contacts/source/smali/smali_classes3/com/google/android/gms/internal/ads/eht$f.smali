.class public final Lcom/google/android/gms/internal/ads/eht$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/eht$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/eht$f;",
        "Lcom/google/android/gms/internal/ads/eht$f$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzcho:Lcom/google/android/gms/internal/ads/eht$f;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/eht$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzchm:Z

.field private zzchn:I

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/eht$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eht$f;-><init>()V

    .line 34
    sput-object v0, Lcom/google/android/gms/internal/ads/eht$f;->zzcho:Lcom/google/android/gms/internal/ads/eht$f;

    .line 35
    const-class v1, Lcom/google/android/gms/internal/ads/eht$f;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/eht$f$a;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$f;->zzcho:Lcom/google/android/gms/internal/ads/eht$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh;->i()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$f$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$f;I)V
    .locals 1

    .line 1007
    iget v0, p0, Lcom/google/android/gms/internal/ads/eht$f;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$f;->zzdv:I

    .line 1008
    iput p1, p0, Lcom/google/android/gms/internal/ads/eht$f;->zzchn:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/eht$f;Z)V
    .locals 1

    .line 1004
    iget v0, p0, Lcom/google/android/gms/internal/ads/eht$f;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/eht$f;->zzdv:I

    .line 1005
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eht$f;->zzchm:Z

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/eht$f;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$f;->zzcho:Lcom/google/android/gms/internal/ads/eht$f;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 11
    sget-object p2, Lcom/google/android/gms/internal/ads/ehv;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 27
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$f;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 20
    const-class p2, Lcom/google/android/gms/internal/ads/eht$f;

    monitor-enter p2

    .line 21
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$f;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/eht$f;->zzcho:Lcom/google/android/gms/internal/ads/eht$f;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 24
    sput-object p1, Lcom/google/android/gms/internal/ads/eht$f;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 25
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

    .line 17
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/eht$f;->zzcho:Lcom/google/android/gms/internal/ads/eht$f;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v1, "zzdv"

    aput-object v1, p1, p2

    const-string/jumbo p2, "zzchm"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string/jumbo v0, "zzchn"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1004\u0001"

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/eht$f;->zzcho:Lcom/google/android/gms/internal/ads/eht$f;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/eht$f;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$f$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/eht$f$a;-><init>(Lcom/google/android/gms/internal/ads/ehv;)V

    return-object p1

    .line 12
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eht$f;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/eht$f;-><init>()V

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
