.class public final Lcom/google/android/gms/internal/ads/dwv$g$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dwv$g$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$g$d;",
        "Lcom/google/android/gms/internal/ads/dwv$g$d$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static final zzbwv:Lcom/google/android/gms/internal/ads/dwv$g$d;

.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$g$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbwt:Z

.field private zzbwu:I

.field private zzdl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$g$d;-><init>()V

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzbwv:Lcom/google/android/gms/internal/ads/dwv$g$d;

    .line 34
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$g$d;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 35
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

.method public static a()Lcom/google/android/gms/internal/ads/dwv$g$d$a;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzbwv:Lcom/google/android/gms/internal/ads/dwv$g$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw;->n()Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$g$d$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwv$g$d;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwv$g$d;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dwv$g$d;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwv$g$d;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 1

    .prologue
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzdl:I

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzbwt:Z

    .line 5
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dwv$g$d;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzbwv:Lcom/google/android/gms/internal/ads/dwv$g$d;

    return-object v0
.end method

.method private final b(I)V
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzdl:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzdl:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzbwu:I

    .line 8
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/dwu;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 11
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$g$d;-><init>()V

    .line 27
    :cond_0
    :goto_0
    return-object v0

    .line 12
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$g$d$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$g$d$a;-><init>(Lcom/google/android/gms/internal/ads/dwu;)V

    goto :goto_0

    .line 13
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzbwt"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzbwu"

    aput-object v2, v0, v1

    .line 14
    const-string/jumbo v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u000b\u0001"

    .line 15
    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzbwv:Lcom/google/android/gms/internal/ads/dwv$g$d;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dwv$g$d;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 16
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzbwv:Lcom/google/android/gms/internal/ads/dwv$g$d;

    goto :goto_0

    .line 17
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 18
    if-nez v0, :cond_0

    .line 19
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$g$d;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 21
    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzbwv:Lcom/google/android/gms/internal/ads/dwv$g$d;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$g$d;->zzea:Lcom/google/android/gms/internal/ads/dep;

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
