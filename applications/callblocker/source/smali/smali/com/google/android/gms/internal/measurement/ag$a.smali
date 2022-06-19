.class public final Lcom/google/android/gms/internal/measurement/ag$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ag$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ag$a;",
        "Lcom/google/android/gms/internal/measurement/ag$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/ag$a;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$a;",
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
            "Lcom/google/android/gms/internal/measurement/ag$e;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/measurement/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/el",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$b;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ag$a;-><init>()V

    .line 52
    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$a;->zzi:Lcom/google/android/gms/internal/measurement/ag$a;

    .line 53
    const-class v1, Lcom/google/android/gms/internal/measurement/ag$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$a;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$a;->aq()Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 4
    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/measurement/ag$b;)V
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzf:Lcom/google/android/gms/internal/measurement/el;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/el;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/measurement/ag$e;)V
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zze:Lcom/google/android/gms/internal/measurement/el;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zze:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/el;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ag$a;ILcom/google/android/gms/internal/measurement/ag$b;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ag$a;->a(ILcom/google/android/gms/internal/measurement/ag$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ag$a;ILcom/google/android/gms/internal/measurement/ag$e;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ag$a;->a(ILcom/google/android/gms/internal/measurement/ag$e;)V

    return-void
.end method

.method static synthetic g()Lcom/google/android/gms/internal/measurement/ag$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$a;->zzi:Lcom/google/android/gms/internal/measurement/ag$a;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/ag$e;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zze:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$e;

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/measurement/ah;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 30
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ag$a;-><init>()V

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ag$a$a;-><init>(Lcom/google/android/gms/internal/measurement/ah;)V

    goto :goto_0

    .line 32
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

    const-class v2, Lcom/google/android/gms/internal/measurement/ag$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "zzf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/google/android/gms/internal/measurement/ag$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "zzg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "zzh"

    aput-object v2, v0, v1

    .line 33
    const-string/jumbo v1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    .line 34
    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$a;->zzi:Lcom/google/android/gms/internal/measurement/ag$a;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ag$a;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$a;->zzi:Lcom/google/android/gms/internal/measurement/ag$a;

    goto :goto_0

    .line 36
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$a;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 37
    if-nez v0, :cond_0

    .line 38
    const-class v1, Lcom/google/android/gms/internal/measurement/ag$a;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$a;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 40
    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$a;->zzi:Lcom/google/android/gms/internal/measurement/ag$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 42
    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$a;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 43
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 45
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 46
    goto :goto_0

    .line 29
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

.method public final a()Z
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzc:I

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzd:I

    return v0
.end method

.method public final b(I)Lcom/google/android/gms/internal/measurement/ag$b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/el;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$b;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zze:Lcom/google/android/gms/internal/measurement/el;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zze:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->size()I

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
            "Lcom/google/android/gms/internal/measurement/ag$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzf:Lcom/google/android/gms/internal/measurement/el;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$a;->zzf:Lcom/google/android/gms/internal/measurement/el;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v0

    return v0
.end method
