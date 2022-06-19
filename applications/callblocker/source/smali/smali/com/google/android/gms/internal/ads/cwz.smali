.class public final Lcom/google/android/gms/internal/ads/cwz;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cwz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cwz;",
        "Lcom/google/android/gms/internal/ads/cwz$a;",
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
            "Lcom/google/android/gms/internal/ads/cwz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhms:Lcom/google/android/gms/internal/ads/cwz;


# instance fields
.field private zzhmr:Lcom/google/android/gms/internal/ads/cxc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/cwz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cwz;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/cwz;->zzhms:Lcom/google/android/gms/internal/ads/cwz;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/cwz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 28
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

.method public static a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cwz;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/cwz;->zzhms:Lcom/google/android/gms/internal/ads/cwz;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dcw;->a(Lcom/google/android/gms/internal/ads/dcw;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/dcw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cwz;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/cwz;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/cwz;->zzhms:Lcom/google/android/gms/internal/ads/cwz;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cxc;
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwz;->zzhmr:Lcom/google/android/gms/internal/ads/cxc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cxc;->d()Lcom/google/android/gms/internal/ads/cxc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwz;->zzhmr:Lcom/google/android/gms/internal/ads/cxc;

    goto :goto_0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/cxa;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 6
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cwz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cwz;-><init>()V

    .line 22
    :cond_0
    :goto_0
    return-object v0

    .line 7
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cwz$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cwz$a;-><init>(Lcom/google/android/gms/internal/ads/cxa;)V

    goto :goto_0

    .line 8
    :pswitch_2
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhmr"

    aput-object v2, v0, v1

    .line 9
    const-string/jumbo v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/cwz;->zzhms:Lcom/google/android/gms/internal/ads/cwz;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cwz;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 11
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cwz;->zzhms:Lcom/google/android/gms/internal/ads/cwz;

    goto :goto_0

    .line 12
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cwz;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 13
    if-nez v0, :cond_0

    .line 14
    const-class v1, Lcom/google/android/gms/internal/ads/cwz;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cwz;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 16
    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cwz;->zzhms:Lcom/google/android/gms/internal/ads/cwz;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 18
    sput-object v0, Lcom/google/android/gms/internal/ads/cwz;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 19
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 21
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 22
    goto :goto_0

    .line 5
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
