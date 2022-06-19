.class public final Lcom/google/android/gms/internal/ads/cye;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cye$b;,
        Lcom/google/android/gms/internal/ads/cye$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cye;",
        "Lcom/google/android/gms/internal/ads/cye$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/cye;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhoz:Lcom/google/android/gms/internal/ads/cye;


# instance fields
.field private zzhox:I

.field private zzhoy:Lcom/google/android/gms/internal/ads/dde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dde",
            "<",
            "Lcom/google/android/gms/internal/ads/cye$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/cye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cye;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/cye;->zzhoz:Lcom/google/android/gms/internal/ads/cye;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/cye;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/cye;->t()Lcom/google/android/gms/internal/ads/dde;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cye;->zzhoy:Lcom/google/android/gms/internal/ads/dde;

    .line 3
    return-void
.end method

.method public static a([BLcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cye;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/cye;->zzhoz:Lcom/google/android/gms/internal/ads/cye;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;[BLcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cye;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/cye;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/cye;->zzhoz:Lcom/google/android/gms/internal/ads/cye;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/cye;->zzhox:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/cyd;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 9
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cye;-><init>()V

    .line 25
    :cond_0
    :goto_0
    return-object v0

    .line 10
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cye$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cye$b;-><init>(Lcom/google/android/gms/internal/ads/cyd;)V

    goto :goto_0

    .line 11
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhox"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhoy"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/google/android/gms/internal/ads/cye$a;

    aput-object v2, v0, v1

    .line 12
    const-string/jumbo v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/cye;->zzhoz:Lcom/google/android/gms/internal/ads/cye;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cye;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 14
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cye;->zzhoz:Lcom/google/android/gms/internal/ads/cye;

    goto :goto_0

    .line 15
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cye;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 16
    if-nez v0, :cond_0

    .line 17
    const-class v1, Lcom/google/android/gms/internal/ads/cye;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cye;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 19
    if-nez v0, :cond_1

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cye;->zzhoz:Lcom/google/android/gms/internal/ads/cye;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 21
    sput-object v0, Lcom/google/android/gms/internal/ads/cye;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 22
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 24
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 8
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

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/cye$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cye;->zzhoy:Lcom/google/android/gms/internal/ads/dde;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cye;->zzhoy:Lcom/google/android/gms/internal/ads/dde;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dde;->size()I

    move-result v0

    return v0
.end method
