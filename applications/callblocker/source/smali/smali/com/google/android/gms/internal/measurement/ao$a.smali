.class public final Lcom/google/android/gms/internal/measurement/ao$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$a;",
        "Lcom/google/android/gms/internal/measurement/ao$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/ao$a;

.field private static volatile zzi:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/measurement/ao$i;

.field private zzf:Lcom/google/android/gms/internal/measurement/ao$i;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$a;-><init>()V

    .line 50
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$a;->zzh:Lcom/google/android/gms/internal/measurement/ao$a;

    .line 51
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    return-void
.end method

.method private final a(I)V
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzd:I

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$a;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$a;Lcom/google/android/gms/internal/measurement/ao$i;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$a;->a(Lcom/google/android/gms/internal/measurement/ao$i;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$a;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$a;->a(Z)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/ao$i;)V
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zze:Lcom/google/android/gms/internal/measurement/ao$i;

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    .line 12
    return-void
.end method

.method private final a(Z)V
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzg:Z

    .line 23
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/ao$a;Lcom/google/android/gms/internal/measurement/ao$i;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$a;->b(Lcom/google/android/gms/internal/measurement/ao$i;)V

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/measurement/ao$i;)V
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzf:Lcom/google/android/gms/internal/measurement/ao$i;

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    .line 18
    return-void
.end method

.method public static h()Lcom/google/android/gms/internal/measurement/ao$a$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$a;->zzh:Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$a$a;

    return-object v0
.end method

.method static synthetic i()Lcom/google/android/gms/internal/measurement/ao$a;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$a;->zzh:Lcom/google/android/gms/internal/measurement/ao$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 26
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$a;-><init>()V

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$a$a;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 28
    :pswitch_2
    const/4 v0, 0x5

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

    .line 29
    const-string/jumbo v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    .line 30
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$a;->zzh:Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$a;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$a;->zzh:Lcom/google/android/gms/internal/measurement/ao$a;

    goto :goto_0

    .line 32
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$a;->zzi:Lcom/google/android/gms/internal/measurement/fx;

    .line 33
    if-nez v0, :cond_0

    .line 34
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$a;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$a;->zzi:Lcom/google/android/gms/internal/measurement/fx;

    .line 36
    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$a;->zzh:Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 38
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$a;->zzi:Lcom/google/android/gms/internal/measurement/fx;

    .line 39
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 41
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 42
    goto :goto_0

    .line 25
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
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

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
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzd:I

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/ao$i;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zze:Lcom/google/android/gms/internal/measurement/ao$i;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->j()Lcom/google/android/gms/internal/measurement/ao$i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zze:Lcom/google/android/gms/internal/measurement/ao$i;

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/internal/measurement/ao$i;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzf:Lcom/google/android/gms/internal/measurement/ao$i;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->j()Lcom/google/android/gms/internal/measurement/ao$i;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzf:Lcom/google/android/gms/internal/measurement/ao$i;

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ao$a;->zzg:Z

    return v0
.end method
