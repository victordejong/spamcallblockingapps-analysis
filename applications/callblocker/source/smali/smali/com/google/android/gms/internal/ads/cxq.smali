.class public final Lcom/google/android/gms/internal/ads/cxq;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cxq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cxq;",
        "Lcom/google/android/gms/internal/ads/cxq$a;",
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
            "Lcom/google/android/gms/internal/ads/cxq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhnw:Lcom/google/android/gms/internal/ads/cxq;


# instance fields
.field private zzhlh:I

.field private zzhlm:I

.field private zzhnu:Lcom/google/android/gms/internal/ads/cxt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/cxq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cxq;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/cxq;->zzhnw:Lcom/google/android/gms/internal/ads/cxq;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/ads/cxq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cxq;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/cxq;->zzhnw:Lcom/google/android/gms/internal/ads/cxq;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cxq;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/ads/cxq;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/cxq;->zzhnw:Lcom/google/android/gms/internal/ads/cxq;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/ads/cxq;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/cxq;->zzhnw:Lcom/google/android/gms/internal/ads/cxq;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cxt;
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxq;->zzhnu:Lcom/google/android/gms/internal/ads/cxt;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cxt;->c()Lcom/google/android/gms/internal/ads/cxt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxq;->zzhnu:Lcom/google/android/gms/internal/ads/cxt;

    goto :goto_0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/cxr;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 7
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cxq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cxq;-><init>()V

    .line 23
    :cond_0
    :goto_0
    return-object v0

    .line 8
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cxq$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cxq$a;-><init>(Lcom/google/android/gms/internal/ads/cxr;)V

    goto :goto_0

    .line 9
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhnu"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhlm"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzhlh"

    aput-object v2, v0, v1

    .line 10
    const-string/jumbo v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b"

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/cxq;->zzhnw:Lcom/google/android/gms/internal/ads/cxq;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cxq;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cxq;->zzhnw:Lcom/google/android/gms/internal/ads/cxq;

    goto :goto_0

    .line 13
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cxq;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 14
    if-nez v0, :cond_0

    .line 15
    const-class v1, Lcom/google/android/gms/internal/ads/cxq;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cxq;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 17
    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cxq;->zzhnw:Lcom/google/android/gms/internal/ads/cxq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/cxq;->zzea:Lcom/google/android/gms/internal/ads/dep;

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

.method public final b()I
    .locals 1

    .prologue
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/cxq;->zzhlm:I

    return v0
.end method
