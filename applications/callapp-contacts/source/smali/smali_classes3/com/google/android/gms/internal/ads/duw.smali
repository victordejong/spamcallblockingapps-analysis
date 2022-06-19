.class public final Lcom/google/android/gms/internal/ads/duw;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/duw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/duw;",
        "Lcom/google/android/gms/internal/ads/duw$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static final zzach:Lcom/google/android/gms/internal/ads/duw;

.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/duw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzace:Lcom/google/android/gms/internal/ads/dva;

.field zzacf:Lcom/google/android/gms/internal/ads/dlw;

.field zzacg:Lcom/google/android/gms/internal/ads/dlw;

.field private zzdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/duw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/duw;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/ads/duw;->zzach:Lcom/google/android/gms/internal/ads/duw;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/ads/duw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duw;->zzacf:Lcom/google/android/gms/internal/ads/dlw;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/dlw;->a:Lcom/google/android/gms/internal/ads/dlw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duw;->zzacg:Lcom/google/android/gms/internal/ads/dlw;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/duw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/duw;->zzach:Lcom/google/android/gms/internal/ads/duw;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/duw;

    return-object p0
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/duw;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/duw;->zzach:Lcom/google/android/gms/internal/ads/duw;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dva;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duw;->zzace:Lcom/google/android/gms/internal/ads/dva;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dva;->b()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/duy;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/duw;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/ads/duw;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/duw;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/duw;->zzach:Lcom/google/android/gms/internal/ads/duw;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/ads/duw;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 23
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/duw;->zzach:Lcom/google/android/gms/internal/ads/duw;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v1, "zzdv"

    aput-object v1, p1, p2

    const-string p2, "zzace"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string v0, "zzacf"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "zzacg"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/duw;->zzach:Lcom/google/android/gms/internal/ads/duw;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/duw;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/duw$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/duw$a;-><init>(Lcom/google/android/gms/internal/ads/duy;)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/duw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/duw;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
