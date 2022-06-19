.class public final Lcom/google/android/gms/internal/ads/dgr$b$i;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dgr$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dgr$b$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dgr$b$i;",
        "Lcom/google/android/gms/internal/ads/dgr$b$i$a;",
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
            "Lcom/google/android/gms/internal/ads/dgr$b$i;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziib:Lcom/google/android/gms/internal/ads/dgr$b$i;


# instance fields
.field private zzdl:I

.field private zzihy:Ljava/lang/String;

.field private zzihz:J

.field private zziia:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$i;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zziib:Lcom/google/android/gms/internal/ads/dgr$b$i;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$i;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzihy:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dgr$b$i$a;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zziib:Lcom/google/android/gms/internal/ads/dgr$b$i;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$i$a;

    return-object v0
.end method

.method private final a(J)V
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzdl:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzdl:I

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzihz:J

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$i;J)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dgr$b$i;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$i;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$i;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$i;->a(Z)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzdl:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzihy:Ljava/lang/String;

    .line 7
    return-void
.end method

.method private final a(Z)V
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzdl:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzdl:I

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zziia:Z

    .line 13
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dgr$b$i;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zziib:Lcom/google/android/gms/internal/ads/dgr$b$i;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/dgq;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$i;-><init>()V

    .line 32
    :cond_0
    :goto_0
    return-object v0

    .line 17
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$i$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dgr$b$i$a;-><init>(Lcom/google/android/gms/internal/ads/dgq;)V

    goto :goto_0

    .line 18
    :pswitch_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzihy"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzihz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zziia"

    aput-object v2, v0, v1

    .line 19
    const-string/jumbo v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0002\u0001\u0003\u0007\u0002"

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$i;->zziib:Lcom/google/android/gms/internal/ads/dgr$b$i;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dgr$b$i;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zziib:Lcom/google/android/gms/internal/ads/dgr$b$i;

    goto :goto_0

    .line 22
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 23
    if-nez v0, :cond_0

    .line 24
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$i;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 26
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$i;->zziib:Lcom/google/android/gms/internal/ads/dgr$b$i;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$i;->zzea:Lcom/google/android/gms/internal/ads/dep;

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

    .line 15
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
