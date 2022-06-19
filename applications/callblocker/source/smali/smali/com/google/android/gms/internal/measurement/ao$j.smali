.class public final Lcom/google/android/gms/internal/measurement/ao$j;
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
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$j;",
        "Lcom/google/android/gms/internal/measurement/ao$j$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/ao$j;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/em;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$j;-><init>()V

    .line 43
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$j;->zzf:Lcom/google/android/gms/internal/measurement/ao$j;

    .line 44
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$j;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$j;->ap()Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zze:Lcom/google/android/gms/internal/measurement/em;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$j;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$j;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$j;Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$j;->a(Ljava/lang/Iterable;)V

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
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zze:Lcom/google/android/gms/internal/measurement/em;

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/em;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/em;)Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zze:Lcom/google/android/gms/internal/measurement/em;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zze:Lcom/google/android/gms/internal/measurement/em;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ck;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 18
    return-void
.end method

.method private final b(I)V
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zzc:I

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zzd:I

    .line 8
    return-void
.end method

.method public static e()Lcom/google/android/gms/internal/measurement/ao$j$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$j;->zzf:Lcom/google/android/gms/internal/measurement/ao$j;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$j$a;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/internal/measurement/ao$j;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$j;->zzf:Lcom/google/android/gms/internal/measurement/ao$j;

    return-object v0
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zze:Lcom/google/android/gms/internal/measurement/em;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/em;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 21
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$j;-><init>()V

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 22
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$j$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$j$a;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 23
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

    .line 24
    const-string/jumbo v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$j;->zzf:Lcom/google/android/gms/internal/measurement/ao$j;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$j;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 26
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$j;->zzf:Lcom/google/android/gms/internal/measurement/ao$j;

    goto :goto_0

    .line 27
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$j;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 28
    if-nez v0, :cond_0

    .line 29
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$j;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$j;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 31
    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$j;->zzf:Lcom/google/android/gms/internal/measurement/ao$j;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$j;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 34
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 36
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 37
    goto :goto_0

    .line 20
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
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zzc:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zzd:I

    return v0
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
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zze:Lcom/google/android/gms/internal/measurement/em;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$j;->zze:Lcom/google/android/gms/internal/measurement/em;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/em;->size()I

    move-result v0

    return v0
.end method
