.class public final Lcom/google/android/gms/internal/measurement/ao$k;
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
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$k;",
        "Lcom/google/android/gms/internal/measurement/ao$k$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/ao$k;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:F

.field private zzi:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$k;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$k;-><init>()V

    .line 73
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzj:Lcom/google/android/gms/internal/measurement/ao$k;

    .line 74
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$k;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 75
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zze:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzf:Ljava/lang/String;

    .line 4
    return-void
.end method

.method private final a(D)V
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    .line 38
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzi:D

    .line 39
    return-void
.end method

.method private final a(J)V
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzd:J

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$k;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$k;->l()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$k;D)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$k;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$k;J)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$k;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zze:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private final b(J)V
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzg:J

    .line 31
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$k;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$k;->m()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$k;J)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$k;->b(J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$k;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzf:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/ao$k;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$k;->n()V

    return-void
.end method

.method public static j()Lcom/google/android/gms/internal/measurement/ao$k$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzj:Lcom/google/android/gms/internal/measurement/ao$k;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$k$a;

    return-object v0
.end method

.method static synthetic k()Lcom/google/android/gms/internal/measurement/ao$k;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzj:Lcom/google/android/gms/internal/measurement/ao$k;

    return-object v0
.end method

.method private final l()V
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzj:Lcom/google/android/gms/internal/measurement/ao$k;

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzf:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzf:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private final m()V
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzg:J

    .line 34
    return-void
.end method

.method private final n()V
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzi:D

    .line 42
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 45
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$k;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$k;-><init>()V

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$k$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$k$a;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 47
    :pswitch_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzc"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzd"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "zze"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zzf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzh"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "zzi"

    aput-object v2, v0, v1

    .line 48
    const-string/jumbo v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    .line 49
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$k;->zzj:Lcom/google/android/gms/internal/measurement/ao$k;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$k;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzj:Lcom/google/android/gms/internal/measurement/ao$k;

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 52
    if-nez v0, :cond_0

    .line 53
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$k;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 55
    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$k;->zzj:Lcom/google/android/gms/internal/measurement/ao$k;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 57
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$k;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 58
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 60
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 61
    goto :goto_0

    .line 44
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
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzd:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzg:J

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzc:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()D
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$k;->zzi:D

    return-wide v0
.end method
