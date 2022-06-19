.class public final Lcom/google/android/gms/internal/measurement/ag$b;
.super Lcom/google/android/gms/internal/measurement/ed;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ag$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ag$b;",
        "Lcom/google/android/gms/internal/measurement/ag$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/measurement/ag$b;

.field private static volatile zzm:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/measurement/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/el",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$c;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/measurement/ag$d;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ag$b;-><init>()V

    .line 53
    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$b;->zzl:Lcom/google/android/gms/internal/measurement/ag$b;

    .line 54
    const-class v1, Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zze:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$b;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 4
    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/measurement/ag$c;)V
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/el;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ag$b;ILcom/google/android/gms/internal/measurement/ag$c;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ag$b;->a(ILcom/google/android/gms/internal/measurement/ag$c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ag$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ag$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzc:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zze:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static l()Lcom/google/android/gms/internal/measurement/ag$b$a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$b;->zzl:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b$a;

    return-object v0
.end method

.method static synthetic m()Lcom/google/android/gms/internal/measurement/ag$b;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$b;->zzl:Lcom/google/android/gms/internal/measurement/ag$b;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/ag$c;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$c;

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/measurement/ah;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 31
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ag$b;-><init>()V

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$b$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ag$b$a;-><init>(Lcom/google/android/gms/internal/measurement/ah;)V

    goto :goto_0

    .line 33
    :pswitch_2
    const/16 v0, 0xa

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

    const-class v2, Lcom/google/android/gms/internal/measurement/ag$c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "zzg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "zzh"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "zzi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "zzj"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "zzk"

    aput-object v2, v0, v1

    .line 34
    const-string/jumbo v1, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

    .line 35
    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$b;->zzl:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ag$b;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$b;->zzl:Lcom/google/android/gms/internal/measurement/ag$b;

    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$b;->zzm:Lcom/google/android/gms/internal/measurement/fx;

    .line 38
    if-nez v0, :cond_0

    .line 39
    const-class v1, Lcom/google/android/gms/internal/measurement/ag$b;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$b;->zzm:Lcom/google/android/gms/internal/measurement/fx;

    .line 41
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$b;->zzl:Lcom/google/android/gms/internal/measurement/ag$b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 43
    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$b;->zzm:Lcom/google/android/gms/internal/measurement/fx;

    .line 44
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 47
    goto :goto_0

    .line 30
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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzc:I

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
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzd:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzf:Lcom/google/android/gms/internal/measurement/el;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/google/android/gms/internal/measurement/ag$d;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzh:Lcom/google/android/gms/internal/measurement/ag$d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$d;->k()Lcom/google/android/gms/internal/measurement/ag$d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzh:Lcom/google/android/gms/internal/measurement/ag$d;

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzi:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzj:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzc:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ag$b;->zzk:Z

    return v0
.end method
