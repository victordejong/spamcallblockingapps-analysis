.class public final Lcom/google/android/gms/internal/ads/dgr$b$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dgr$b$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dgr$b$a;",
        "Lcom/google/android/gms/internal/ads/dgr$b$a$a;",
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
            "Lcom/google/android/gms/internal/ads/dgr$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziga:Lcom/google/android/gms/internal/ads/dgr$b$a;


# instance fields
.field private zzdl:I

.field private zzifz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$a;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zziga:Lcom/google/android/gms/internal/ads/dgr$b$a;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 33
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dcw;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zzifz:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dgr$b$a$a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zziga:Lcom/google/android/gms/internal/ads/dgr$b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dgr$b$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zzdl:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zzifz:Ljava/lang/String;

    .line 7
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dgr$b$a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zziga:Lcom/google/android/gms/internal/ads/dgr$b$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/dgq;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 10
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgr$b$a;-><init>()V

    .line 26
    :cond_0
    :goto_0
    return-object v0

    .line 11
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dgr$b$a$a;-><init>(Lcom/google/android/gms/internal/ads/dgq;)V

    goto :goto_0

    .line 12
    :pswitch_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzifz"

    aput-object v1, v0, v3

    .line 13
    const-string/jumbo v1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0008\u0000"

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$a;->zziga:Lcom/google/android/gms/internal/ads/dgr$b$a;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dgr$b$a;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 15
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zziga:Lcom/google/android/gms/internal/ads/dgr$b$a;

    goto :goto_0

    .line 16
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 17
    if-nez v0, :cond_0

    .line 18
    const-class v1, Lcom/google/android/gms/internal/ads/dgr$b$a;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 20
    if-nez v0, :cond_1

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$a;->zziga:Lcom/google/android/gms/internal/ads/dgr$b$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 22
    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 23
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 25
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 26
    goto :goto_0

    .line 9
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
