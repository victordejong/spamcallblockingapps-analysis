.class public final Lcom/google/android/gms/internal/measurement/e2;
.super Lcom/google/android/gms/internal/measurement/q5;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/q5<",
        "Lcom/google/android/gms/internal/measurement/e2;",
        "Lcom/google/android/gms/internal/measurement/d2;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/r6;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/e2;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/v5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/e2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/e2;->zzg:Lcom/google/android/gms/internal/measurement/e2;

    const-class v1, Lcom/google/android/gms/internal/measurement/e2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/q5;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/q5;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q5;->l()Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zzf:Lcom/google/android/gms/internal/measurement/v5;

    return-void
.end method

.method public static A()Lcom/google/android/gms/internal/measurement/d2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/e2;->zzg:Lcom/google/android/gms/internal/measurement/e2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q5;->p()Lcom/google/android/gms/internal/measurement/n5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    return-object v0
.end method

.method static synthetic C()Lcom/google/android/gms/internal/measurement/e2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/e2;->zzg:Lcom/google/android/gms/internal/measurement/e2;

    return-object v0
.end method

.method static synthetic D(Lcom/google/android/gms/internal/measurement/e2;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/e2;->zze:I

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/measurement/e2;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zzf:Lcom/google/android/gms/internal/measurement/v5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w5;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->m(Lcom/google/android/gms/internal/measurement/v5;)Lcom/google/android/gms/internal/measurement/v5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zzf:Lcom/google/android/gms/internal/measurement/v5;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/e2;->zzf:Lcom/google/android/gms/internal/measurement/v5;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/j4;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final u(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/e2;->zzg:Lcom/google/android/gms/internal/measurement/e2;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/d2;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/d2;-><init>(Lcom/google/android/gms/internal/measurement/h1;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/e2;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/e2;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zza"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/measurement/e2;->zzg:Lcom/google/android/gms/internal/measurement/e2;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/q5;->t(Lcom/google/android/gms/internal/measurement/q6;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final v()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zze:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zzf:Lcom/google/android/gms/internal/measurement/v5;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zzf:Lcom/google/android/gms/internal/measurement/v5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/e2;->zzf:Lcom/google/android/gms/internal/measurement/v5;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/v5;->H(I)J

    move-result-wide v0

    return-wide v0
.end method
