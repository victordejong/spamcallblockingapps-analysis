.class public final Lcom/google/android/gms/internal/measurement/cn;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/cn;",
        "Lcom/google/android/gms/internal/measurement/cm;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/cn;


# instance fields
.field private zza:I

.field public zze:I

.field public zzf:Lcom/google/android/gms/internal/measurement/gr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/cn;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/cn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/cn;->zzg:Lcom/google/android/gms/internal/measurement/cn;

    const-class v1, Lcom/google/android/gms/internal/measurement/cn;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cn;->zzf:Lcom/google/android/gms/internal/measurement/gr;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cn;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cn;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cn;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/cn;->zze:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cn;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cn;->zzf:Lcom/google/android/gms/internal/measurement/gr;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Lcom/google/android/gms/internal/measurement/gr;)Lcom/google/android/gms/internal/measurement/gr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cn;->zzf:Lcom/google/android/gms/internal/measurement/gr;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/cn;->zzf:Lcom/google/android/gms/internal/measurement/gr;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/ey;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/measurement/cm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cn;->zzg:Lcom/google/android/gms/internal/measurement/cn;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gl;->l()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/cm;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/measurement/cn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cn;->zzg:Lcom/google/android/gms/internal/measurement/cn;

    return-object v0
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/cn;->zzg:Lcom/google/android/gms/internal/measurement/cn;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/cm;

    .line 3
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/cm;-><init>(Lcom/google/android/gms/internal/measurement/bm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/cn;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/cn;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v3, "zza"

    aput-object v3, p1, v1

    const-string v1, "zze"

    aput-object v1, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, v2

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/cn;->zzg:Lcom/google/android/gms/internal/measurement/cn;

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/cn;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cn;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cn;->zzf:Lcom/google/android/gms/internal/measurement/gr;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gr;->size()I

    move-result v0

    return v0
.end method
