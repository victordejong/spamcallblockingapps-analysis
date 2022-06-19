.class public final Lcom/google/android/gms/internal/measurement/bj;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/bj;",
        "Lcom/google/android/gms/internal/measurement/bi;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/measurement/bj;


# instance fields
.field public zza:I

.field public zze:J

.field public zzf:Ljava/lang/String;

.field private zzg:I

.field public zzh:Lcom/google/android/gms/internal/measurement/gs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gs<",
            "Lcom/google/android/gms/internal/measurement/bl;",
            ">;"
        }
    .end annotation
.end field

.field zzi:Lcom/google/android/gms/internal/measurement/gs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gs<",
            "Lcom/google/android/gms/internal/measurement/bh;",
            ">;"
        }
    .end annotation
.end field

.field zzj:Lcom/google/android/gms/internal/measurement/gs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gs<",
            "Lcom/google/android/gms/internal/measurement/an;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Ljava/lang/String;

.field public zzl:Z

.field private zzm:Lcom/google/android/gms/internal/measurement/gs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gs<",
            "Lcom/google/android/gms/internal/measurement/cx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/bj;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/bj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bj;->zzn:Lcom/google/android/gms/internal/measurement/bj;

    const-class v1, Lcom/google/android/gms/internal/measurement/bj;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gl;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->zzf:Ljava/lang/String;

    .line 1001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v1

    .line 2
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/bj;->zzh:Lcom/google/android/gms/internal/measurement/gs;

    .line 2001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v1

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/bj;->zzi:Lcom/google/android/gms/internal/measurement/gs;

    .line 3001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/bj;->zzj:Lcom/google/android/gms/internal/measurement/gs;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->zzk:Ljava/lang/String;

    .line 4001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->zzm:Lcom/google/android/gms/internal/measurement/gs;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bj;)V
    .locals 1

    .line 5001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->zzj:Lcom/google/android/gms/internal/measurement/gs;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bj;ILcom/google/android/gms/internal/measurement/bh;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->zzi:Lcom/google/android/gms/internal/measurement/gs;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Lcom/google/android/gms/internal/measurement/gs;)Lcom/google/android/gms/internal/measurement/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bj;->zzi:Lcom/google/android/gms/internal/measurement/gs;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/bj;->zzi:Lcom/google/android/gms/internal/measurement/gs;

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/gs;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/measurement/bi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->zzn:Lcom/google/android/gms/internal/measurement/bj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gl;->l()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bi;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/measurement/bj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->zzn:Lcom/google/android/gms/internal/measurement/bj;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/measurement/bj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->zzn:Lcom/google/android/gms/internal/measurement/bj;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/bj;->zzn:Lcom/google/android/gms/internal/measurement/bj;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/bi;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/bi;-><init>(Lcom/google/android/gms/internal/measurement/bf;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/bj;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/bj;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xe

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "zza"

    aput-object v6, p1, v5

    const-string v5, "zze"

    aput-object v5, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    const-string v0, "zzh"

    aput-object v0, p1, v2

    .line 0
    const-class v0, Lcom/google/android/gms/internal/measurement/bl;

    aput-object v0, p1, v1

    const/4 v0, 0x6

    const-string v1, "zzi"

    aput-object v1, p1, v0

    const/4 v0, 0x7

    const-class v1, Lcom/google/android/gms/internal/measurement/bh;

    aput-object v1, p1, v0

    const/16 v0, 0x8

    const-string v1, "zzj"

    aput-object v1, p1, v0

    const/16 v0, 0x9

    const-class v1, Lcom/google/android/gms/internal/measurement/an;

    aput-object v1, p1, v0

    const/16 v0, 0xa

    const-string v1, "zzk"

    aput-object v1, p1, v0

    const/16 v0, 0xb

    const-string v1, "zzl"

    aput-object v1, p1, v0

    const/16 v0, 0xc

    const-string v1, "zzm"

    aput-object v1, p1, v0

    const/16 v0, 0xd

    const-class v1, Lcom/google/android/gms/internal/measurement/cx;

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/bj;->zzn:Lcom/google/android/gms/internal/measurement/bj;

    const-string v1, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0004\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/bj;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bj;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
