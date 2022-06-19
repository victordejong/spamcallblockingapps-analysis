.class public final Lcom/google/android/gms/internal/ads/cys;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cys$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cys;",
        "Lcom/google/android/gms/internal/ads/cys$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/cys;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhpz:Lcom/google/android/gms/internal/ads/cys;


# instance fields
.field private zzhpx:Ljava/lang/String;

.field private zzhpy:Lcom/google/android/gms/internal/ads/dde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dde",
            "<",
            "Lcom/google/android/gms/internal/ads/cyb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/cys;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cys;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/cys;->zzhpz:Lcom/google/android/gms/internal/ads/cys;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/cys;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cys;->zzhpx:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cys;->t()Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cys;->zzhpy:Lcom/google/android/gms/internal/ads/dde;

    .line 4
    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/cys;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/cys;->zzhpz:Lcom/google/android/gms/internal/ads/cys;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/gms/internal/ads/cys;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/cys;->zzhpz:Lcom/google/android/gms/internal/ads/cys;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/cyr;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cys;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cys;-><init>()V

    .line 23
    :cond_0
    :goto_0
    return-object v0

    .line 8
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cys$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cys$a;-><init>(Lcom/google/android/gms/internal/ads/cyr;)V

    goto :goto_0

    .line 9
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhpx"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhpy"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/google/android/gms/internal/ads/cyb;

    aput-object v2, v0, v1

    .line 10
    const-string/jumbo v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/cys;->zzhpz:Lcom/google/android/gms/internal/ads/cys;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cys;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cys;->zzhpz:Lcom/google/android/gms/internal/ads/cys;

    goto :goto_0

    .line 13
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cys;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 14
    if-nez v0, :cond_0

    .line 15
    const-class v1, Lcom/google/android/gms/internal/ads/cys;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cys;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 17
    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cys;->zzhpz:Lcom/google/android/gms/internal/ads/cys;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/cys;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 20
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 22
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 6
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

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/cyb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cys;->zzhpy:Lcom/google/android/gms/internal/ads/dde;

    return-object v0
.end method
