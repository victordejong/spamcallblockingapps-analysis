.class public final Lcom/google/android/gms/internal/ads/dgn;
.super Lcom/google/android/gms/internal/ads/dnh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dgn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh<",
        "Lcom/google/android/gms/internal/ads/dgn;",
        "Lcom/google/android/gms/internal/ads/dgn$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# static fields
.field private static volatile zzek:Lcom/google/android/gms/internal/ads/dpc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dpc<",
            "Lcom/google/android/gms/internal/ads/dgn;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzihu:Lcom/google/android/gms/internal/ads/dgn;


# instance fields
.field zziht:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/dgn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgn;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/dgn;->zzihu:Lcom/google/android/gms/internal/ads/dgn;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/ads/dgn;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dnh;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dnh;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dgn;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/dgn;->zzihu:Lcom/google/android/gms/internal/ads/dgn;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/dgn;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/dgn;->zzihu:Lcom/google/android/gms/internal/ads/dgn;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/dgo;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/dgn;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/ads/dgn;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/dgn;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/dnh$a;

    sget-object v0, Lcom/google/android/gms/internal/ads/dgn;->zzihu:Lcom/google/android/gms/internal/ads/dgn;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/dnh$a;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/ads/dgn;->zzek:Lcom/google/android/gms/internal/ads/dpc;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/dgn;->zzihu:Lcom/google/android/gms/internal/ads/dgn;

    return-object p1

    :pswitch_4
    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zziht"

    aput-object v0, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b"

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/dgn;->zzihu:Lcom/google/android/gms/internal/ads/dgn;

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/dgn;->a(Lcom/google/android/gms/internal/ads/dot;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/dgn$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/dgn$a;-><init>(Lcom/google/android/gms/internal/ads/dgo;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/dgn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dgn;-><init>()V

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
