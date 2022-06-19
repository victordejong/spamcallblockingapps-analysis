.class public final Lcom/google/android/gms/internal/measurement/ao$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$e;",
        "Lcom/google/android/gms/internal/measurement/ao$e$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/ao$e;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:F

.field private zzh:D

.field private zzi:Lcom/google/android/gms/internal/measurement/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/el",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$e;-><init>()V

    .line 88
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$e;->zzj:Lcom/google/android/gms/internal/measurement/ao$e;

    .line 89
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 90
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzd:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zze:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzi:Lcom/google/android/gms/internal/measurement/el;

    .line 5
    return-void
.end method

.method private final a(D)V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    .line 35
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzh:D

    .line 36
    return-void
.end method

.method private final a(J)V
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    .line 27
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzf:J

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$e;->m()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$e;D)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$e;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$e;J)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$e;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$e;Lcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$e;->e(Lcom/google/android/gms/internal/measurement/ao$e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$e;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$e;->p()V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzi:Lcom/google/android/gms/internal/measurement/el;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ck;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 53
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzd:Ljava/lang/String;

    .line 11
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$e;->n()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zze:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$e;->o()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$e;->q()V

    return-void
.end method

.method private final e(Lcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$e;->p()V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzi:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public static k()Lcom/google/android/gms/internal/measurement/ao$e$a;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$e;->zzj:Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e$a;

    return-object v0
.end method

.method static synthetic l()Lcom/google/android/gms/internal/measurement/ao$e;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$e;->zzj:Lcom/google/android/gms/internal/measurement/ao$e;

    return-object v0
.end method

.method private final m()V
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$e;->zzj:Lcom/google/android/gms/internal/measurement/ao$e;

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ao$e;->zze:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zze:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private final n()V
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzf:J

    .line 31
    return-void
.end method

.method private final o()V
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzh:D

    .line 39
    return-void
.end method

.method private final p()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzi:Lcom/google/android/gms/internal/measurement/el;

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzi:Lcom/google/android/gms/internal/measurement/el;

    .line 46
    :cond_0
    return-void
.end method

.method private final q()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$e;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzi:Lcom/google/android/gms/internal/measurement/el;

    .line 55
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 58
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$e;-><init>()V

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$e$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$e$a;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 60
    :pswitch_2
    const/16 v0, 0x8

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

    const/4 v1, 0x7

    const-class v2, Lcom/google/android/gms/internal/measurement/ao$e;

    aput-object v2, v0, v1

    .line 61
    const-string/jumbo v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    .line 62
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$e;->zzj:Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$e;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$e;->zzj:Lcom/google/android/gms/internal/measurement/ao$e;

    goto :goto_0

    .line 64
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$e;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 65
    if-nez v0, :cond_0

    .line 66
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$e;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$e;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 68
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$e;->zzj:Lcom/google/android/gms/internal/measurement/ao$e;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 70
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$e;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 71
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 74
    goto :goto_0

    .line 57
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
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzf:J

    return-wide v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()D
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzh:D

    return-wide v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzi:Lcom/google/android/gms/internal/measurement/el;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$e;->zzi:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v0

    return v0
.end method
