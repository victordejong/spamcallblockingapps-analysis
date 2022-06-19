.class public final Lcom/google/android/gms/internal/ads/dwv$j;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dwv$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$j;",
        "Lcom/google/android/gms/internal/ads/dwv$j$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static final zzbxx:Lcom/google/android/gms/internal/ads/dwv$j;

.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbxs:Ljava/lang/String;

.field private zzbxt:Lcom/google/android/gms/internal/ads/dde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dde",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$h;",
            ">;"
        }
    .end annotation
.end field

.field private zzbxu:I

.field private zzbxv:I

.field private zzbxw:I

.field private zzdl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$j;-><init>()V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxx:Lcom/google/android/gms/internal/ads/dwv$j;

    .line 39
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$j;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxs:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$j;->t()Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxt:Lcom/google/android/gms/internal/ads/dde;

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxu:I

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxv:I

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxw:I

    .line 7
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dwv$j;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxx:Lcom/google/android/gms/internal/ads/dwv$j;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwv$j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwv$j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$j;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dwv$j;->zzdl:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxs:Ljava/lang/String;

    .line 11
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dwv$j;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxx:Lcom/google/android/gms/internal/ads/dwv$j;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/dwu;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$j;-><init>()V

    .line 32
    :cond_0
    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$j$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$j$a;-><init>(Lcom/google/android/gms/internal/ads/dwu;)V

    goto :goto_0

    .line 15
    :pswitch_2
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzbxs"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzbxt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/android/gms/internal/ads/dwv$h;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzbxu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/dxf;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "zzbxv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/dxf;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "zzbxw"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/dxf;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    aput-object v2, v0, v1

    .line 19
    const-string/jumbo v1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0008\u0000\u0002\u001b\u0003\u000c\u0001\u0004\u000c\u0002\u0005\u000c\u0003"

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxx:Lcom/google/android/gms/internal/ads/dwv$j;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dwv$j;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxx:Lcom/google/android/gms/internal/ads/dwv$j;

    goto :goto_0

    .line 22
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$j;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 23
    if-nez v0, :cond_0

    .line 24
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$j;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$j;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 26
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$j;->zzbxx:Lcom/google/android/gms/internal/ads/dwv$j;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$j;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 29
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 31
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 32
    goto :goto_0

    .line 12
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
