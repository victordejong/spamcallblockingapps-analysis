.class public final Lcom/google/android/gms/internal/ads/cye$a;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cye$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cye$a;",
        "Lcom/google/android/gms/internal/ads/cye$a$a;",
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
            "Lcom/google/android/gms/internal/ads/cye$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhpd:Lcom/google/android/gms/internal/ads/cye$a;


# instance fields
.field private zzhoq:I

.field private zzhpa:Lcom/google/android/gms/internal/ads/cxu;

.field private zzhpb:I

.field private zzhpc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/cye$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cye$a;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/cye$a;->zzhpd:Lcom/google/android/gms/internal/ads/cye$a;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/cye$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 33
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

.method static synthetic f()Lcom/google/android/gms/internal/ads/cye$a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/cye$a;->zzhpd:Lcom/google/android/gms/internal/ads/cye$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/cyd;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 11
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cye$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cye$a;-><init>()V

    .line 27
    :cond_0
    :goto_0
    return-object v0

    .line 12
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cye$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cye$a$a;-><init>(Lcom/google/android/gms/internal/ads/cyd;)V

    goto :goto_0

    .line 13
    :pswitch_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhpa"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzhpb"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzhpc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzhoq"

    aput-object v2, v0, v1

    .line 14
    const-string/jumbo v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/cye$a;->zzhpd:Lcom/google/android/gms/internal/ads/cye$a;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cye$a;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cye$a;->zzhpd:Lcom/google/android/gms/internal/ads/cye$a;

    goto :goto_0

    .line 17
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cye$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 18
    if-nez v0, :cond_0

    .line 19
    const-class v1, Lcom/google/android/gms/internal/ads/cye$a;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cye$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 21
    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cye$a;->zzhpd:Lcom/google/android/gms/internal/ads/cye$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/cye$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 24
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 26
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 27
    goto :goto_0

    .line 10
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

.method public final a()Z
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cye$a;->zzhpa:Lcom/google/android/gms/internal/ads/cxu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/cxu;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cye$a;->zzhpa:Lcom/google/android/gms/internal/ads/cxu;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/cxu;->e()Lcom/google/android/gms/internal/ads/cxu;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cye$a;->zzhpa:Lcom/google/android/gms/internal/ads/cxu;

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cxy;
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/cye$a;->zzhpb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cxy;->a(I)Lcom/google/android/gms/internal/ads/cxy;

    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/cxy;->c:Lcom/google/android/gms/internal/ads/cxy;

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/cye$a;->zzhpc:I

    return v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/cyq;
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/cye$a;->zzhoq:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cyq;->a(I)Lcom/google/android/gms/internal/ads/cyq;

    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/cyq;->f:Lcom/google/android/gms/internal/ads/cyq;

    :cond_0
    return-object v0
.end method
