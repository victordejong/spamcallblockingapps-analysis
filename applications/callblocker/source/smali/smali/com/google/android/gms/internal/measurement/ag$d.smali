.class public final Lcom/google/android/gms/internal/measurement/ag$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ag$d$b;,
        Lcom/google/android/gms/internal/measurement/ag$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ag$d;",
        "Lcom/google/android/gms/internal/measurement/ag$d$b;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/ag$d;

.field private static volatile zzj:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ag$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ag$d;-><init>()V

    .line 40
    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$d;->zzi:Lcom/google/android/gms/internal/measurement/ag$d;

    .line 41
    const-class v1, Lcom/google/android/gms/internal/measurement/ag$d;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzf:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzg:Ljava/lang/String;

    .line 4
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzh:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public static k()Lcom/google/android/gms/internal/measurement/ag$d;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$d;->zzi:Lcom/google/android/gms/internal/measurement/ag$d;

    return-object v0
.end method

.method static synthetic l()Lcom/google/android/gms/internal/measurement/ag$d;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$d;->zzi:Lcom/google/android/gms/internal/measurement/ag$d;

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

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 18
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ag$d;-><init>()V

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ag$d$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ag$d$b;-><init>(Lcom/google/android/gms/internal/measurement/ah;)V

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

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ag$d$a;->b()Lcom/google/android/gms/internal/measurement/ek;

    move-result-object v2

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

    .line 22
    const-string/jumbo v1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    .line 23
    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$d;->zzi:Lcom/google/android/gms/internal/measurement/ag$d;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ag$d;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 24
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$d;->zzi:Lcom/google/android/gms/internal/measurement/ag$d;

    goto :goto_0

    .line 25
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$d;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 26
    if-nez v0, :cond_0

    .line 27
    const-class v1, Lcom/google/android/gms/internal/measurement/ag$d;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$d;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 29
    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ag$d;->zzi:Lcom/google/android/gms/internal/measurement/ag$d;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/measurement/ag$d;->zzj:Lcom/google/android/gms/internal/measurement/fx;

    .line 32
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 34
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 35
    goto :goto_0

    .line 17
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
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzc:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/ag$d$a;
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ag$d$a;->a(I)Lcom/google/android/gms/internal/measurement/ag$d$a;

    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ag$d$a;->a:Lcom/google/android/gms/internal/measurement/ag$d$a;

    :cond_0
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zze:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzc:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzc:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ag$d;->zzh:Ljava/lang/String;

    return-object v0
.end method
