.class public final Lcom/google/android/gms/internal/ads/dwk$a;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dwk$a$b;,
        Lcom/google/android/gms/internal/ads/dwk$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw",
        "<",
        "Lcom/google/android/gms/internal/ads/dwk$a;",
        "Lcom/google/android/gms/internal/ads/dwk$a$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# static fields
.field private static final zzbth:Lcom/google/android/gms/internal/ads/dwk$a;

.field private static volatile zzea:Lcom/google/android/gms/internal/ads/dep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dep",
            "<",
            "Lcom/google/android/gms/internal/ads/dwk$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dwk$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwk$a;-><init>()V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/ads/dwk$a;->zzbth:Lcom/google/android/gms/internal/ads/dwk$a;

    .line 24
    const-class v1, Lcom/google/android/gms/internal/ads/dwk$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dcw;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dcw;)V

    .line 25
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

.method static synthetic a()Lcom/google/android/gms/internal/ads/dwk$a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a;->zzbth:Lcom/google/android/gms/internal/ads/dwk$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwm;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dwk$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwk$a;-><init>()V

    .line 19
    :cond_0
    :goto_0
    return-object v0

    .line 5
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dwk$a$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dwk$a$b;-><init>(Lcom/google/android/gms/internal/ads/dwm;)V

    goto :goto_0

    .line 6
    :pswitch_2
    const-string/jumbo v0, "\u0001\u0000"

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/dwk$a;->zzbth:Lcom/google/android/gms/internal/ads/dwk$a;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dwk$a;->a(Lcom/google/android/gms/internal/ads/deg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a;->zzbth:Lcom/google/android/gms/internal/ads/dwk$a;

    goto :goto_0

    .line 9
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 10
    if-nez v0, :cond_0

    .line 11
    const-class v1, Lcom/google/android/gms/internal/ads/dwk$a;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dwk$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 13
    if-nez v0, :cond_1

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/dcw$c;

    sget-object v2, Lcom/google/android/gms/internal/ads/dwk$a;->zzbth:Lcom/google/android/gms/internal/ads/dwk$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dcw$c;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 15
    sput-object v0, Lcom/google/android/gms/internal/ads/dwk$a;->zzea:Lcom/google/android/gms/internal/ads/dep;

    .line 16
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 18
    :pswitch_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 19
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
