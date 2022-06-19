.class public final Lcom/google/android/gms/internal/measurement/al$a;
.super Lcom/google/android/gms/internal/measurement/ed;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/al$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/al$a;",
        "Lcom/google/android/gms/internal/measurement/al$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/al$a;

.field private static volatile zzi:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/al$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/al$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/al$a;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/measurement/al$a;->zzh:Lcom/google/android/gms/internal/measurement/al$a;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/measurement/al$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/al$a;->zzd:Ljava/lang/String;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/al$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/al$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/al$a;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/al$a;->zzc:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/al$a;->zzd:Ljava/lang/String;

    .line 8
    return-void
.end method

.method static synthetic f()Lcom/google/android/gms/internal/measurement/al$a;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/gms/internal/measurement/al$a;->zzh:Lcom/google/android/gms/internal/measurement/al$a;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/an;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 14
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/al$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/al$a;-><init>()V

    .line 30
    :cond_0
    :goto_0
    return-object v0

    .line 15
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/al$a$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/al$a$a;-><init>(Lcom/google/android/gms/internal/measurement/an;)V

    goto :goto_0

    .line 16
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

    .line 17
    const-string/jumbo v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1004\u0003"

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/measurement/al$a;->zzh:Lcom/google/android/gms/internal/measurement/al$a;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/al$a;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 19
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/al$a;->zzh:Lcom/google/android/gms/internal/measurement/al$a;

    goto :goto_0

    .line 20
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/al$a;->zzi:Lcom/google/android/gms/internal/measurement/fx;

    .line 21
    if-nez v0, :cond_0

    .line 22
    const-class v1, Lcom/google/android/gms/internal/measurement/al$a;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/al$a;->zzi:Lcom/google/android/gms/internal/measurement/fx;

    .line 24
    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/al$a;->zzh:Lcom/google/android/gms/internal/measurement/al$a;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/measurement/al$a;->zzi:Lcom/google/android/gms/internal/measurement/fx;

    .line 27
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 29
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 13
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

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al$a;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/al$a;->zze:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/al$a;->zzf:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/measurement/al$a;->zzc:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/measurement/al$a;->zzg:I

    return v0
.end method
