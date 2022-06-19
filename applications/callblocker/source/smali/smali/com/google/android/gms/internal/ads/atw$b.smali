.class public final Lcom/google/android/gms/internal/ads/atw$b;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/atw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/atw$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/atw$b;",
        "Lcom/google/android/gms/internal/ads/atw$b$a;",
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
            "Lcom/google/android/gms/internal/ads/atw$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzku:Lcom/google/android/gms/internal/ads/atw$b;


# instance fields
.field private zzdl:I

.field private zzkp:J

.field private zzkq:I

.field private zzkr:Z

.field private zzks:Lcom/google/android/gms/internal/ads/ddd;

.field private zzkt:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/atw$b;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/atw$b;->zzku:Lcom/google/android/gms/internal/ads/atw$b;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/ads/atw$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/atw$b;->r()Lcom/google/android/gms/internal/ads/ddd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/atw$b;->zzks:Lcom/google/android/gms/internal/ads/ddd;

    .line 3
    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/ads/atw$b;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$b;->zzku:Lcom/google/android/gms/internal/ads/atw$b;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/asv;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/atw$b;-><init>()V

    .line 21
    :cond_0
    :goto_0
    return-object v0

    .line 6
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$b$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/atw$b$a;-><init>(Lcom/google/android/gms/internal/ads/asv;)V

    goto :goto_0

    .line 7
    :pswitch_2
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzkp"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzkq"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzkr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzkt"

    aput-object v2, v0, v1

    .line 8
    const-string/jumbo v1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0002\u0000\u0002\u0004\u0001\u0003\u0007\u0002\u0004\u0016\u0005\u0003\u0003"

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/atw$b;->zzku:Lcom/google/android/gms/internal/ads/atw$b;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/atw$b;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$b;->zzku:Lcom/google/android/gms/internal/ads/atw$b;

    goto :goto_0

    .line 11
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$b;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 12
    if-nez v0, :cond_0

    .line 13
    const-class v1, Lcom/google/android/gms/internal/ads/atw$b;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$b;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 15
    if-nez v0, :cond_1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/atw$b;->zzku:Lcom/google/android/gms/internal/ads/atw$b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/atw$b;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 18
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 20
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 21
    goto :goto_0

    .line 4
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
