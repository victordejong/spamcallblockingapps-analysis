.class public final Lcom/google/android/gms/internal/measurement/ao$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ao$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$b;",
        "Lcom/google/android/gms/internal/measurement/ao$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/ao$b;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/ao$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$b;-><init>()V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$b;->zzf:Lcom/google/android/gms/internal/measurement/ao$b;

    .line 38
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 39
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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zzc:I

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zzd:I

    .line 7
    return-void
.end method

.method private final a(J)V
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zzc:I

    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zze:J

    .line 12
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$b;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ao$b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/ao$b;J)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ao$b;->a(J)V

    return-void
.end method

.method public static e()Lcom/google/android/gms/internal/measurement/ao$b$a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$b;->zzf:Lcom/google/android/gms/internal/measurement/ao$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed;->ak()Lcom/google/android/gms/internal/measurement/ed$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$b$a;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/internal/measurement/ao$b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$b;->zzf:Lcom/google/android/gms/internal/measurement/ao$b;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/ap;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 15
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ao$b;-><init>()V

    .line 31
    :cond_0
    :goto_0
    return-object v0

    .line 16
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/ao$b$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$b$a;-><init>(Lcom/google/android/gms/internal/measurement/ap;)V

    goto :goto_0

    .line 17
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

    .line 18
    const-string/jumbo v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$b;->zzf:Lcom/google/android/gms/internal/measurement/ao$b;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/ao$b;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 20
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$b;->zzf:Lcom/google/android/gms/internal/measurement/ao$b;

    goto :goto_0

    .line 21
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$b;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 22
    if-nez v0, :cond_0

    .line 23
    const-class v1, Lcom/google/android/gms/internal/measurement/ao$b;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ao$b;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 25
    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/ao$b;->zzf:Lcom/google/android/gms/internal/measurement/ao$b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/measurement/ao$b;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 28
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 30
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 31
    goto :goto_0

    .line 14
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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zzc:I

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zzd:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/ao$b;->zze:J

    return-wide v0
.end method
