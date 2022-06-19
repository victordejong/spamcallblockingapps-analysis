.class public final Lcom/google/android/gms/internal/measurement/c2;
.super Lcom/google/android/gms/internal/measurement/q5;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/q5<",
        "Lcom/google/android/gms/internal/measurement/c2;",
        "Lcom/google/android/gms/internal/measurement/b2;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/r6;"
    }
.end annotation


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/measurement/c2;


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/v5;

.field private zze:Lcom/google/android/gms/internal/measurement/v5;

.field private zzf:Lcom/google/android/gms/internal/measurement/w5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w5<",
            "Lcom/google/android/gms/internal/measurement/n1;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/measurement/w5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/w5<",
            "Lcom/google/android/gms/internal/measurement/e2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/c2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/c2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/c2;->zzh:Lcom/google/android/gms/internal/measurement/c2;

    const-class v1, Lcom/google/android/gms/internal/measurement/c2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->l()Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zza:Lcom/google/android/gms/internal/measurement/v5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->l()Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zze:Lcom/google/android/gms/internal/measurement/v5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->n()Lcom/google/android/gms/internal/measurement/w5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzf:Lcom/google/android/gms/internal/measurement/w5;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->n()Lcom/google/android/gms/internal/measurement/w5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzg:Lcom/google/android/gms/internal/measurement/w5;

    return-void
.end method

.method public static H()Lcom/google/android/gms/internal/measurement/b2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/c2;->zzh:Lcom/google/android/gms/internal/measurement/c2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->p()Lcom/google/android/gms/internal/measurement/n5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/b2;

    return-object v0
.end method

.method public static I()Lcom/google/android/gms/internal/measurement/c2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/c2;->zzh:Lcom/google/android/gms/internal/measurement/c2;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/measurement/c2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/c2;->zzh:Lcom/google/android/gms/internal/measurement/c2;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zza:Lcom/google/android/gms/internal/measurement/v5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w5;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->m(Lcom/google/android/gms/internal/measurement/v5;)Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zza:Lcom/google/android/gms/internal/measurement/v5;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/c2;->zza:Lcom/google/android/gms/internal/measurement/v5;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/j4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/measurement/c2;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->l()Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zza:Lcom/google/android/gms/internal/measurement/v5;

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zze:Lcom/google/android/gms/internal/measurement/v5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w5;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->m(Lcom/google/android/gms/internal/measurement/v5;)Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zze:Lcom/google/android/gms/internal/measurement/v5;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/c2;->zze:Lcom/google/android/gms/internal/measurement/v5;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/j4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic N(Lcom/google/android/gms/internal/measurement/c2;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->l()Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zze:Lcom/google/android/gms/internal/measurement/v5;

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/c2;->T()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzf:Lcom/google/android/gms/internal/measurement/w5;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/j4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/measurement/c2;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/c2;->T()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzf:Lcom/google/android/gms/internal/measurement/w5;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic R(Lcom/google/android/gms/internal/measurement/c2;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/c2;->V()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzg:Lcom/google/android/gms/internal/measurement/w5;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/j4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/measurement/c2;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/c2;->V()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzg:Lcom/google/android/gms/internal/measurement/w5;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private final T()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzf:Lcom/google/android/gms/internal/measurement/w5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w5;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->o(Lcom/google/android/gms/internal/measurement/w5;)Lcom/google/android/gms/internal/measurement/w5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzf:Lcom/google/android/gms/internal/measurement/w5;

    :cond_0
    return-void
.end method

.method private final V()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzg:Lcom/google/android/gms/internal/measurement/w5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w5;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->o(Lcom/google/android/gms/internal/measurement/w5;)Lcom/google/android/gms/internal/measurement/w5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzg:Lcom/google/android/gms/internal/measurement/w5;

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzf:Lcom/google/android/gms/internal/measurement/w5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final C(I)Lcom/google/android/gms/internal/measurement/n1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzf:Lcom/google/android/gms/internal/measurement/w5;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/n1;

    return-object p1
.end method

.method public final D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/e2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzg:Lcom/google/android/gms/internal/measurement/w5;

    return-object v0
.end method

.method public final E()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzg:Lcom/google/android/gms/internal/measurement/w5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final G(I)Lcom/google/android/gms/internal/measurement/e2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzg:Lcom/google/android/gms/internal/measurement/w5;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/e2;

    return-object p1
.end method

.method protected final u(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/c2;->zzh:Lcom/google/android/gms/internal/measurement/c2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/b2;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/b2;-><init>(Lcom/google/android/gms/internal/measurement/h1;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/c2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/c2;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zza"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-class p2, Lcom/google/android/gms/internal/measurement/n1;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/measurement/e2;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/c2;->zzh:Lcom/google/android/gms/internal/measurement/c2;

    const-string p3, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/q5;->t(Lcom/google/android/gms/internal/measurement/q6;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zza:Lcom/google/android/gms/internal/measurement/v5;

    return-object v0
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zza:Lcom/google/android/gms/internal/measurement/v5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zze:Lcom/google/android/gms/internal/measurement/v5;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zze:Lcom/google/android/gms/internal/measurement/v5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/n1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/c2;->zzf:Lcom/google/android/gms/internal/measurement/w5;

    return-object v0
.end method
