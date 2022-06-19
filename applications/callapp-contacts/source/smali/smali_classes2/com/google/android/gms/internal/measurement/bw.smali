.class public final Lcom/google/android/gms/internal/measurement/bw;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/bw;",
        "Lcom/google/android/gms/internal/measurement/bv;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/measurement/bw;


# instance fields
.field public zza:I

.field public zze:Lcom/google/android/gms/internal/measurement/gs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gs<",
            "Lcom/google/android/gms/internal/measurement/ca;",
            ">;"
        }
    .end annotation
.end field

.field public zzf:Ljava/lang/String;

.field public zzg:J

.field public zzh:J

.field public zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/bw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/bw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bw;->zzj:Lcom/google/android/gms/internal/measurement/bw;

    const-class v1, Lcom/google/android/gms/internal/measurement/bw;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bw;)V
    .locals 1

    .line 2001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bw;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/bw;->e()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/gs;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bw;ILcom/google/android/gms/internal/measurement/ca;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/bw;->e()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/gs;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bw;Lcom/google/android/gms/internal/measurement/ca;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/bw;->e()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/bw;->e()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/ey;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/bw;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/bw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/bw;->zzh:J

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/measurement/bv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/bw;->zzj:Lcom/google/android/gms/internal/measurement/bw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gl;->l()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bv;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/measurement/bw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/bw;->zzj:Lcom/google/android/gms/internal/measurement/bw;

    return-object v0
.end method

.method private final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Lcom/google/android/gms/internal/measurement/gs;)Lcom/google/android/gms/internal/measurement/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v0

    return v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/bw;->zzj:Lcom/google/android/gms/internal/measurement/bw;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/bv;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/bv;-><init>(Lcom/google/android/gms/internal/measurement/bm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/bw;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/bw;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "zza"

    aput-object v6, p1, v5

    const-string/jumbo v5, "zze"

    aput-object v5, p1, v0

    .line 0
    const-class v0, Lcom/google/android/gms/internal/measurement/ca;

    aput-object v0, p1, v4

    const-string/jumbo v0, "zzf"

    aput-object v0, p1, v3

    const-string/jumbo v0, "zzg"

    aput-object v0, p1, v2

    const-string/jumbo v0, "zzh"

    aput-object v0, p1, v1

    const/4 v0, 0x6

    const-string/jumbo v1, "zzi"

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/bw;->zzj:Lcom/google/android/gms/internal/measurement/bw;

    const-string v1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/bw;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
