.class public final Lcom/google/android/gms/internal/measurement/ao$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$c;",
        "Lcom/google/android/gms/internal/measurement/ao$c$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/ao$c;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/measurement/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/el",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$e;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$c;-><init>()V

    .line 76
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$c;->zzi:Lcom/google/android/gms/internal/measurement/ao$c;

    .line 77
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$c;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zze:Ljava/lang/String;

    .line 4
    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$c;->l()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/el;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method private final a(J)V
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    .line 37
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzf:J

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$c;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$c;->m()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$c;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$c;ILcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$c;->a(ILcom/google/android/gms/internal/measurement/ao$e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$c;J)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$c;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$c;Lcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/ao$e;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/ao$e;)V
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$c;->l()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 20
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
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$c;->l()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ck;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 23
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zze:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private final b(I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$c;->l()V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->remove(I)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private final b(J)V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    .line 42
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzg:J

    .line 43
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$c;J)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$c;->b(J)V

    return-void
.end method

.method public static j()Lcom/google/android/gms/internal/measurement/ao$c$a;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$c;->zzi:Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$c$a;

    return-object v0
.end method

.method static synthetic k()Lcom/google/android/gms/internal/measurement/ao$c;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$c;->zzi:Lcom/google/android/gms/internal/measurement/ao$c;

    return-object v0
.end method

.method private final l()V
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    .line 12
    :cond_0
    return-void
.end method

.method private final m()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$c;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/ao$e;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$e;

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 48
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$c;-><init>()V

    .line 64
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$c$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$c$a;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 50
    :pswitch_2
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "zzc"

    aput-object v2, v0, v1

    const-string/jumbo v1, "zzd"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/google/android/gms/internal/measurement/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "zze"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "zzh"

    aput-object v2, v0, v1

    .line 51
    const-string/jumbo v1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    .line 52
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$c;->zzi:Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$c;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$c;->zzi:Lcom/google/android/gms/internal/measurement/ao$c;

    goto :goto_0

    .line 54
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$c;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 55
    if-nez v0, :cond_0

    .line 56
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$c;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$c;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 58
    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$c;->zzi:Lcom/google/android/gms/internal/measurement/ao$c;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 60
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$c;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 61
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 63
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 64
    goto :goto_0

    .line 47
    nop

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

.method public final a()Ljava/util/List;
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
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzd:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzf:J

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    and-int/lit8 v0, v0, 0x4

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
    .line 40
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzg:J

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$c;->zzh:I

    return v0
.end method
