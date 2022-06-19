.class public final Lcom/google/android/gms/internal/ads/atw$a$f;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/atw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/atw$a$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/atw$a$f;",
        "Lcom/google/android/gms/internal/ads/atw$a$f$a;",
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
            "Lcom/google/android/gms/internal/ads/atw$a$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzko:Lcom/google/android/gms/internal/ads/atw$a$f;


# instance fields
.field private zzdl:I

.field private zzgu:J

.field private zzgv:J

.field private zzkk:J

.field private zzkl:J

.field private zzkm:J

.field private zzkn:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$a$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/atw$a$f;-><init>()V

    .line 47
    sput-object v0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzko:Lcom/google/android/gms/internal/ads/atw$a$f;

    .line 48
    const-class v1, Lcom/google/android/gms/internal/ads/atw$a$f;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzgu:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzgv:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzkk:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzkl:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzkm:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzkn:J

    .line 8
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/atw$a$f$a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzko:Lcom/google/android/gms/internal/ads/atw$a$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/atw$a$f$a;

    return-object v0
.end method

.method private final a(J)V
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzdl:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzdl:I

    .line 10
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzkk:J

    .line 11
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/atw$a$f;J)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/atw$a$f;->a(J)V

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/atw$a$f;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzko:Lcom/google/android/gms/internal/ads/atw$a$f;

    return-object v0
.end method

.method private final b(J)V
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzdl:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzdl:I

    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzkl:J

    .line 14
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/atw$a$f;J)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/atw$a$f;->b(J)V

    return-void
.end method

.method private final c(J)V
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzdl:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzdl:I

    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzkm:J

    .line 17
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/atw$a$f;J)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/atw$a$f;->c(J)V

    return-void
.end method

.method private final d(J)V
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzdl:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzdl:I

    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzkn:J

    .line 20
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/atw$a$f;J)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/atw$a$f;->d(J)V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/asv;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 23
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$a$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/atw$a$f;-><init>()V

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/atw$a$f$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/atw$a$f$a;-><init>(Lcom/google/android/gms/internal/ads/asv;)V

    goto :goto_0

    .line 25
    :pswitch_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzgu"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzgv"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzkk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzkl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzkm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "zzkn"

    aput-object v2, v0, v1

    .line 26
    const-string/jumbo v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0002\u0004\u0006\u0002\u0005"

    .line 27
    sget-object v2, Lcom/google/android/gms/internal/ads/atw$a$f;->zzko:Lcom/google/android/gms/internal/ads/atw$a$f;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/atw$a$f;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzko:Lcom/google/android/gms/internal/ads/atw$a$f;

    goto :goto_0

    .line 29
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 30
    if-nez v0, :cond_0

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/atw$a$f;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 33
    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/atw$a$f;->zzko:Lcom/google/android/gms/internal/ads/atw$a$f;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/atw$a$f;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 36
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 38
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 39
    goto :goto_0

    .line 22
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
