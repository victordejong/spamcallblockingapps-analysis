.class public final Lcom/google/android/gms/internal/measurement/ag$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ag$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ag$e;",
        "Lcom/google/android/gms/internal/measurement/ag$e$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/ag$e;

.field private static volatile zzk:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/measurement/ag$c;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ag$e;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$e;->zzj:Lcom/google/android/gms/internal/measurement/ag$e;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zze:Ljava/lang/String;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ag$e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ag$e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzc:I

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zze:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static i()Lcom/google/android/gms/internal/measurement/ag$e$a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$e;->zzj:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ag$e$a;

    return-object v0
.end method

.method static synthetic j()Lcom/google/android/gms/internal/measurement/ag$e;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$e;->zzj:Lcom/google/android/gms/internal/measurement/ag$e;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/ah;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 35
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 18
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ag$e;-><init>()V

    .line 34
    :cond_0
    :goto_0
    return-object v0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$e$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ag$e$a;-><init>(Lcom/google/android/gms/internal/measurement/ah;)V

    goto :goto_0

    .line 20
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

    .line 21
    const-string/jumbo v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    .line 22
    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$e;->zzj:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ag$e;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$e;->zzj:Lcom/google/android/gms/internal/measurement/ag$e;

    goto :goto_0

    .line 24
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$e;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 25
    if-nez v0, :cond_0

    .line 26
    const-class v1, Lcom/google/android/gms/internal/measurement/ag$e;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$e;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 28
    if-nez v0, :cond_1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$e;->zzj:Lcom/google/android/gms/internal/measurement/ag$e;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$e;->zzk:Lcom/google/android/gms/internal/measurement/fx;

    .line 31
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 34
    goto :goto_0

    .line 17
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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzc:I

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzd:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/ag$c;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzf:Lcom/google/android/gms/internal/measurement/ag$c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$c;->i()Lcom/google/android/gms/internal/measurement/ag$c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzf:Lcom/google/android/gms/internal/measurement/ag$c;

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzg:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzh:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzc:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ag$e;->zzi:Z

    return v0
.end method
