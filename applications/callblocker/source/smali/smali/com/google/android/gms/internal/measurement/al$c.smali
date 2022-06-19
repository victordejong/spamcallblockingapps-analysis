.class public final Lcom/google/android/gms/internal/measurement/al$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/al$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed",
        "<",
        "Lcom/google/android/gms/internal/measurement/al$c;",
        "Lcom/google/android/gms/internal/measurement/al$c$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/al$c;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/fx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fx",
            "<",
            "Lcom/google/android/gms/internal/measurement/al$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/al$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/al$c;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/measurement/al$c;->zzf:Lcom/google/android/gms/internal/measurement/al$c;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/measurement/al$c;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    .line 2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/al$c;->zzd:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/al$c;->zze:Ljava/lang/String;

    .line 4
    return-void
.end method

.method static synthetic c()Lcom/google/android/gms/internal/measurement/al$c;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/measurement/al$c;->zzf:Lcom/google/android/gms/internal/measurement/al$c;

    return-object v0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/an;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 8
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/al$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/al$c;-><init>()V

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 9
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/al$c$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/al$c$a;-><init>(Lcom/google/android/gms/internal/measurement/an;)V

    goto :goto_0

    .line 10
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

    .line 11
    const-string/jumbo v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/measurement/al$c;->zzf:Lcom/google/android/gms/internal/measurement/al$c;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/al$c;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 13
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/al$c;->zzf:Lcom/google/android/gms/internal/measurement/al$c;

    goto :goto_0

    .line 14
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/al$c;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 15
    if-nez v0, :cond_0

    .line 16
    const-class v1, Lcom/google/android/gms/internal/measurement/al$c;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/al$c;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 18
    if-nez v0, :cond_1

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/ed$a;

    sget-object v2, Lcom/google/android/gms/internal/measurement/al$c;->zzf:Lcom/google/android/gms/internal/measurement/al$c;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/ed$a;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/measurement/al$c;->zzg:Lcom/google/android/gms/internal/measurement/fx;

    .line 21
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 23
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    .line 24
    goto :goto_0

    .line 7
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
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al$c;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/al$c;->zze:Ljava/lang/String;

    return-object v0
.end method
