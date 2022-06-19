.class public final Lcom/google/android/gms/internal/ads/dwv$g$a;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dwv$g$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$g$a;",
        "Lcom/google/android/gms/internal/ads/dwv$g$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static final zzbwp:Lcom/google/android/gms/internal/ads/dwv$g$a;

.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$g$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbwm:I

.field private zzbwn:Lcom/google/android/gms/internal/ads/dwv$g$d;

.field private zzbwo:Lcom/google/android/gms/internal/ads/dwv$g$e;

.field private zzdl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$g$a;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwp:Lcom/google/android/gms/internal/ads/dwv$g$a;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$g$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 42
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

.method public static a()Lcom/google/android/gms/internal/ads/dwv$g$a$a;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwp:Lcom/google/android/gms/internal/ads/dwv$g$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwv$g$a;Lcom/google/android/gms/internal/ads/dwv$g$b;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwv$g$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwv$g$a;Lcom/google/android/gms/internal/ads/dwv$g$d;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwv$g$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwv$g$a;Lcom/google/android/gms/internal/ads/dwv$g$e;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwv$g$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$e;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dwv$g$b;)V
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwv$g$b;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwm:I

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzdl:I

    .line 5
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dwv$g$d;)V
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwn:Lcom/google/android/gms/internal/ads/dwv$g$d;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzdl:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzdl:I

    .line 9
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dwv$g$e;)V
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwo:Lcom/google/android/gms/internal/ads/dwv$g$e;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzdl:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzdl:I

    .line 13
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dwv$g$a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwp:Lcom/google/android/gms/internal/ads/dwv$g$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/dwu;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$g$a;-><init>()V

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 17
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$g$a$a;-><init>(Lcom/google/android/gms/internal/ads/dwu;)V

    goto :goto_0

    .line 18
    :pswitch_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzbwm"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g$b;->b()Lcom/google/android/gms/internal/ads/dda;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzbwn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzbwo"

    aput-object v2, v0, v1

    .line 20
    const-string/jumbo v1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0000\u0002\t\u0001\u0003\t\u0002"

    .line 21
    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwp:Lcom/google/android/gms/internal/ads/dwv$g$a;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dwv$g$a;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 22
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwp:Lcom/google/android/gms/internal/ads/dwv$g$a;

    goto :goto_0

    .line 23
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 24
    if-nez v0, :cond_0

    .line 25
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$g$a;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 27
    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzbwp:Lcom/google/android/gms/internal/ads/dwv$g$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$g$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 30
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 32
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 33
    goto :goto_0

    .line 15
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
