.class public final Lcom/google/android/gms/internal/measurement/ao$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$d;",
        "Lcom/google/android/gms/internal/measurement/ao$d$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/ao$d;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$d;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$d;->zzf:Lcom/google/android/gms/internal/measurement/ao$d;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$d;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$d;->zzd:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/ao$d$a;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$d;->zzf:Lcom/google/android/gms/internal/measurement/ao$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$d$a;

    return-object v0
.end method

.method private final a(J)V
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$d;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$d;->zzc:I

    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$d;->zze:J

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$d;J)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$d;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$d;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$d;->zzc:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ao$d;->zzd:Ljava/lang/String;

    .line 7
    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/measurement/ao$d;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$d;->zzf:Lcom/google/android/gms/internal/measurement/ao$d;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$d;-><init>()V

    .line 29
    :cond_0
    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$d$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$d$a;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 15
    :pswitch_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzc"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzd"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zze"

    aput-object v2, v0, v1

    .line 16
    const-string/jumbo v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001"

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$d;->zzf:Lcom/google/android/gms/internal/measurement/ao$d;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$d;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 18
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$d;->zzf:Lcom/google/android/gms/internal/measurement/ao$d;

    goto :goto_0

    .line 19
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$d;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 20
    if-nez v0, :cond_0

    .line 21
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$d;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$d;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 23
    if-nez v0, :cond_1

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$d;->zzf:Lcom/google/android/gms/internal/measurement/ao$d;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$d;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 26
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 28
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 12
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
