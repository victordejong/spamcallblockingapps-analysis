.class public final Lcom/google/android/gms/internal/ads/dwv$v;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dwv$v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$v;",
        "Lcom/google/android/gms/internal/ads/dwv$v$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static final zzccc:Lcom/google/android/gms/internal/ads/dwv$v;

.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dwv$v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcca:I

.field private zzccb:I

.field private zzdl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$v;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$v;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$v;->zzccc:Lcom/google/android/gms/internal/ads/dwv$v;

    .line 25
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$v;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 26
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

.method static synthetic a()Lcom/google/android/gms/internal/ads/dwv$v;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$v;->zzccc:Lcom/google/android/gms/internal/ads/dwv$v;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwu;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$v;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwv$v;-><init>()V

    .line 20
    :cond_0
    :goto_0
    return-object v0

    .line 5
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dwv$v$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$v$a;-><init>(Lcom/google/android/gms/internal/ads/dwu;)V

    goto :goto_0

    .line 6
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzdl"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzcca"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zzccb"

    aput-object v2, v0, v1

    .line 7
    const-string/jumbo v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001"

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$v;->zzccc:Lcom/google/android/gms/internal/ads/dwv$v;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dwv$v;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 9
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$v;->zzccc:Lcom/google/android/gms/internal/ads/dwv$v;

    goto :goto_0

    .line 10
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$v;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 11
    if-nez v0, :cond_0

    .line 12
    const-class v1, Lcom/google/android/gms/internal/ads/dwv$v;

    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwv$v;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 14
    if-nez v0, :cond_1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$v;->zzccc:Lcom/google/android/gms/internal/ads/dwv$v;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 16
    sput-object v0, Lcom/google/android/gms/internal/ads/dwv$v;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 17
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 19
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 20
    goto :goto_0

    .line 3
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
