.class public final Lcom/google/android/gms/internal/ads/dhm;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dhm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dhm;",
        "Lcom/google/android/gms/internal/ads/dhm$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dhm;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziio:Lcom/google/android/gms/internal/ads/dhm;


# instance fields
.field private zziin:Lcom/google/android/gms/internal/ads/dhn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/dhm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dhm;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/dhm;->zziio:Lcom/google/android/gms/internal/ads/dhm;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/dhm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dhm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dhm;->zziio:Lcom/google/android/gms/internal/ads/dhm;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dnh;->a(Lcom/google/android/gms/internal/ads/dnh;Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/dhm;

    return-object p0
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dhm;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/dhm;->zziio:Lcom/google/android/gms/internal/ads/dhm;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dhn;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhm;->zziin:Lcom/google/android/gms/internal/ads/dhn;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dhn;->d()Lcom/google/android/gms/internal/ads/dhn;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/dhl;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dhm;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/ads/dhm;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dhm;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dhm;->zziio:Lcom/google/android/gms/internal/ads/dhm;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/ads/dhm;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 19
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

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dhm;->zziio:Lcom/google/android/gms/internal/ads/dhm;

    return-object p1

    :pswitch_4
    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziin"

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/dhm;->zziio:Lcom/google/android/gms/internal/ads/dhm;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dhm;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dhm$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dhm$a;-><init>(Lcom/google/android/gms/internal/ads/dhl;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dhm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dhm;-><init>()V

    return-object p1

    nop

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
