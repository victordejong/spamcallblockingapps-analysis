.class public final Lcom/google/android/gms/internal/measurement/cl;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/cl;",
        "Lcom/google/android/gms/internal/measurement/ck;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/cl;


# instance fields
.field public zza:Lcom/google/android/gms/internal/measurement/gr;

.field public zze:Lcom/google/android/gms/internal/measurement/gr;

.field public zzf:Lcom/google/android/gms/internal/measurement/gs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gs<",
            "Lcom/google/android/gms/internal/measurement/bu;",
            ">;"
        }
    .end annotation
.end field

.field public zzg:Lcom/google/android/gms/internal/measurement/gs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/gs<",
            "Lcom/google/android/gms/internal/measurement/cn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/cl;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/cl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/cl;->zzh:Lcom/google/android/gms/internal/measurement/cl;

    const-class v1, Lcom/google/android/gms/internal/measurement/cl;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gl;-><init>()V

    .line 1001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/he;->d()Lcom/google/android/gms/internal/measurement/he;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zza:Lcom/google/android/gms/internal/measurement/gr;

    .line 2001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/he;->d()Lcom/google/android/gms/internal/measurement/he;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zze:Lcom/google/android/gms/internal/measurement/gr;

    .line 3001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    .line 4001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hy;->d()Lcom/google/android/gms/internal/measurement/hy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cl;)V
    .locals 1

    .line 5001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/he;->d()Lcom/google/android/gms/internal/measurement/he;

    move-result-object v0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zza:Lcom/google/android/gms/internal/measurement/gr;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cl;->g()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/gs;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cl;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zza:Lcom/google/android/gms/internal/measurement/gr;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Lcom/google/android/gms/internal/measurement/gr;)Lcom/google/android/gms/internal/measurement/gr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zza:Lcom/google/android/gms/internal/measurement/gr;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/cl;->zza:Lcom/google/android/gms/internal/measurement/gr;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/ey;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/cl;)V
    .locals 1

    .line 6001
    invoke-static {}, Lcom/google/android/gms/internal/measurement/he;->d()Lcom/google/android/gms/internal/measurement/he;

    move-result-object v0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zze:Lcom/google/android/gms/internal/measurement/gr;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/cl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cl;->h()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/gs;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/cl;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zze:Lcom/google/android/gms/internal/measurement/gr;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Lcom/google/android/gms/internal/measurement/gr;)Lcom/google/android/gms/internal/measurement/gr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zze:Lcom/google/android/gms/internal/measurement/gr;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/cl;->zze:Lcom/google/android/gms/internal/measurement/gr;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/ey;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/cl;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cl;->g()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/ey;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/measurement/ck;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cl;->zzh:Lcom/google/android/gms/internal/measurement/cl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gl;->l()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ck;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/measurement/cl;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/cl;->h()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/ey;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static e()Lcom/google/android/gms/internal/measurement/cl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cl;->zzh:Lcom/google/android/gms/internal/measurement/cl;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/internal/measurement/cl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cl;->zzh:Lcom/google/android/gms/internal/measurement/cl;

    return-object v0
.end method

.method private final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Lcom/google/android/gms/internal/measurement/gs;)Lcom/google/android/gms/internal/measurement/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    :cond_0
    return-void
.end method

.method private final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Lcom/google/android/gms/internal/measurement/gs;)Lcom/google/android/gms/internal/measurement/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zza:Lcom/google/android/gms/internal/measurement/gr;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gr;->size()I

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/cl;->zzh:Lcom/google/android/gms/internal/measurement/cl;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/ck;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ck;-><init>(Lcom/google/android/gms/internal/measurement/bm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/cl;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/cl;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "zza"

    aput-object v6, p1, v5

    const-string v5, "zze"

    aput-object v5, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, v4

    .line 0
    const-class v0, Lcom/google/android/gms/internal/measurement/bu;

    aput-object v0, p1, v3

    const-string v0, "zzg"

    aput-object v0, p1, v2

    const-class v0, Lcom/google/android/gms/internal/measurement/cn;

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cl;->zzh:Lcom/google/android/gms/internal/measurement/cl;

    const-string v1, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/cl;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cl;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v0

    return v0
.end method
