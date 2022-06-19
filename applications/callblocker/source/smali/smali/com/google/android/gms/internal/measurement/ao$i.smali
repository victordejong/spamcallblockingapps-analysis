.class public final Lcom/google/android/gms/internal/measurement/ao$i;
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
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$i;",
        "Lcom/google/android/gms/internal/measurement/ao$i$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/ao$i;

.field private static volatile zzh:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/measurement/em;

.field private zzd:Lcom/google/android/gms/internal/measurement/em;

.field private zze:Lcom/google/android/gms/internal/measurement/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/el",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$b;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/measurement/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/el",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$i;-><init>()V

    .line 88
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$i;->zzg:Lcom/google/android/gms/internal/measurement/ao$i;

    .line 89
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$i;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->ap()Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzc:Lcom/google/android/gms/internal/measurement/em;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->ap()Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzd:Lcom/google/android/gms/internal/measurement/em;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$i;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$i;->l()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$i;I)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$i;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$i;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$i;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final a(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzc:Lcom/google/android/gms/internal/measurement/em;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/em;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/em;)Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzc:Lcom/google/android/gms/internal/measurement/em;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzc:Lcom/google/android/gms/internal/measurement/em;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ck;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 15
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$i;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$i;->m()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$i;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$i;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$i;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$i;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final b(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzd:Lcom/google/android/gms/internal/measurement/em;

    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/em;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/em;)Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzd:Lcom/google/android/gms/internal/measurement/em;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzd:Lcom/google/android/gms/internal/measurement/em;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ck;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 26
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/ao$i;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$i;->c(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final c(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/measurement/ao$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$i;->n()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zze:Lcom/google/android/gms/internal/measurement/el;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ck;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 39
    return-void
.end method

.method private final d(I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$i;->n()V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zze:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->remove(I)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/measurement/ao$i;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$i;->d(Ljava/lang/Iterable;)V

    return-void
.end method

.method private final d(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gms/internal/measurement/ao$j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$i;->o()V

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ck;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 53
    return-void
.end method

.method private final e(I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$i;->o()V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->remove(I)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public static i()Lcom/google/android/gms/internal/measurement/ao$i$a;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$i;->zzg:Lcom/google/android/gms/internal/measurement/ao$i;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$i$a;

    return-object v0
.end method

.method public static j()Lcom/google/android/gms/internal/measurement/ao$i;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$i;->zzg:Lcom/google/android/gms/internal/measurement/ao$i;

    return-object v0
.end method

.method static synthetic k()Lcom/google/android/gms/internal/measurement/ao$i;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$i;->zzg:Lcom/google/android/gms/internal/measurement/ao$i;

    return-object v0
.end method

.method private final l()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->ap()Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzc:Lcom/google/android/gms/internal/measurement/em;

    .line 17
    return-void
.end method

.method private final m()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->ap()Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzd:Lcom/google/android/gms/internal/measurement/em;

    .line 28
    return-void
.end method

.method private final n()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 36
    :cond_0
    return-void
.end method

.method private final o()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 47
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/ao$b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zze:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$b;

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 59
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$i;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$i;-><init>()V

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$i$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$i$a;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 61
    :pswitch_2
    const/4 v0, 0x6

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

    const-class v2, Lcom/google/android/gms/internal/measurement/ao$b;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/google/android/gms/internal/measurement/ao$j;

    aput-object v2, v0, v1

    .line 62
    const-string/jumbo v1, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 63
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$i;->zzg:Lcom/google/android/gms/internal/measurement/ao$i;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$i;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$i;->zzg:Lcom/google/android/gms/internal/measurement/ao$i;

    goto :goto_0

    .line 65
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$i;->zzh:Lcom/google/android/gms/internal/measurement/fx;

    .line 66
    if-nez v0, :cond_0

    .line 67
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$i;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$i;->zzh:Lcom/google/android/gms/internal/measurement/fx;

    .line 69
    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$i;->zzg:Lcom/google/android/gms/internal/measurement/ao$i;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 71
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$i;->zzh:Lcom/google/android/gms/internal/measurement/fx;

    .line 72
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 74
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 75
    goto :goto_0

    .line 58
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzc:Lcom/google/android/gms/internal/measurement/em;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzc:Lcom/google/android/gms/internal/measurement/em;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/em;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/measurement/ao$j;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$j;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzd:Lcom/google/android/gms/internal/measurement/em;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzd:Lcom/google/android/gms/internal/measurement/em;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/em;->size()I

    move-result v0

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zze:Lcom/google/android/gms/internal/measurement/el;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zze:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v0

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzf:Lcom/google/android/gms/internal/measurement/el;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$i;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v0

    return v0
.end method
