.class public final Lcom/google/android/gms/internal/measurement/ao$h;
.super Lcom/google/android/gms/internal/measurement/ed;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$h$b;,
        Lcom/google/android/gms/internal/measurement/ao$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$h;",
        "Lcom/google/android/gms/internal/measurement/ao$h$b;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/ao$h;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/el",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$h;-><init>()V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$h;->zzf:Lcom/google/android/gms/internal/measurement/ao$h;

    .line 38
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$h;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$h;->zzd:I

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$h;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$h;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 4
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/ao$h$b;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$h;->zzf:Lcom/google/android/gms/internal/measurement/ao$h;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$h$b;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/ao$d;)V
    .locals 2

    .prologue
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$h;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$h;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$h;->zze:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$h;Lcom/google/android/gms/internal/measurement/ao$d;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$h;->a(Lcom/google/android/gms/internal/measurement/ao$d;)V

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/measurement/ao$h;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$h;->zzf:Lcom/google/android/gms/internal/measurement/ao$h;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 15
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$h;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$h;-><init>()V

    .line 32
    :cond_0
    :goto_0
    return-object v0

    .line 16
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$h$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$h$b;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 17
    :pswitch_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzc"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzd"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$h$a;->b()Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zze"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/google/android/gms/internal/measurement/ao$d;

    aput-object v2, v0, v1

    .line 19
    const-string/jumbo v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b"

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$h;->zzf:Lcom/google/android/gms/internal/measurement/ao$h;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$h;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$h;->zzf:Lcom/google/android/gms/internal/measurement/ao$h;

    goto :goto_0

    .line 22
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$h;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 23
    if-nez v0, :cond_0

    .line 24
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$h;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$h;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 26
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$h;->zzf:Lcom/google/android/gms/internal/measurement/ao$h;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$h;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 29
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 31
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 32
    goto :goto_0

    .line 14
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
