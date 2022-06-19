.class public final Lcom/google/android/gms/internal/measurement/dc;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/dc;",
        "Lcom/google/android/gms/internal/measurement/cy;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/measurement/dc;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/gs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gs<",
            "Lcom/google/android/gms/internal/measurement/dc;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Z

.field private zzj:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/dc;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/dc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/dc;->zzk:Lcom/google/android/gms/internal/measurement/dc;

    const-class v1, Lcom/google/android/gms/internal/measurement/dc;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gl;-><init>()V

    .line 1001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dc;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dc;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dc;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/measurement/dc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/dc;->zzk:Lcom/google/android/gms/internal/measurement/dc;

    return-object v0
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v0, 0x0

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/dc;->zzk:Lcom/google/android/gms/internal/measurement/dc;

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/cy;

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/cy;-><init>(Lcom/google/android/gms/internal/measurement/cq;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/dc;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/dc;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "zza"

    aput-object v6, p1, v5

    const-string v5, "zze"

    aput-object v5, p1, v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/db;->zzb()Lcom/google/android/gms/internal/measurement/gp;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "zzf"

    aput-object v0, p1, v3

    const-class v0, Lcom/google/android/gms/internal/measurement/dc;

    aput-object v0, p1, v2

    const-string v0, "zzg"

    aput-object v0, p1, v1

    const/4 v0, 0x6

    const-string v1, "zzh"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-string v1, "zzi"

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "zzj"

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/dc;->zzk:Lcom/google/android/gms/internal/measurement/dc;

    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u1000\u0004"

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/dc;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
