.class public final Lcom/google/android/gms/internal/ads/cwl;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cwl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/cwl;",
        "Lcom/google/android/gms/internal/ads/cwl$a;",
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
            "Lcom/google/android/gms/internal/ads/cwl;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhme:Lcom/google/android/gms/internal/ads/cwl;


# instance fields
.field private zzhlz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/cwl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cwl;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/cwl;->zzhme:Lcom/google/android/gms/internal/ads/cwl;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/cwl;

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

.method public static b()Lcom/google/android/gms/internal/ads/cwl;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/cwl;->zzhme:Lcom/google/android/gms/internal/ads/cwl;

    return-object v0
.end method

.method static synthetic c()Lcom/google/android/gms/internal/ads/cwl;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/cwl;->zzhme:Lcom/google/android/gms/internal/ads/cwl;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/cwl;->zzhlz:I

    return v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/cwm;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 5
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cwl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cwl;-><init>()V

    .line 21
    :cond_0
    :goto_0
    return-object v0

    .line 6
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cwl$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cwl$a;-><init>(Lcom/google/android/gms/internal/ads/cwm;)V

    goto :goto_0

    .line 7
    :pswitch_2
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzhlz"

    aput-object v2, v0, v1

    .line 8
    const-string/jumbo v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/cwl;->zzhme:Lcom/google/android/gms/internal/ads/cwl;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/cwl;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/cwl;->zzhme:Lcom/google/android/gms/internal/ads/cwl;

    goto :goto_0

    .line 11
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/cwl;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 12
    if-nez v0, :cond_0

    .line 13
    const-class v1, Lcom/google/android/gms/internal/ads/cwl;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cwl;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 15
    if-nez v0, :cond_1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/cwl;->zzhme:Lcom/google/android/gms/internal/ads/cwl;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/cwl;->zzea:Lcom/google/android/gms/internal/ads/dep;

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
