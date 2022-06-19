.class public final Lcom/google/android/gms/internal/measurement/bu;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/bu;",
        "Lcom/google/android/gms/internal/measurement/bs;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/bu;


# instance fields
.field private zza:I

.field public zze:I

.field public zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/bu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/bu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bu;->zzg:Lcom/google/android/gms/internal/measurement/bu;

    const-class v1, Lcom/google/android/gms/internal/measurement/bu;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gl;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bu;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bu;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/bu;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/bu;->zze:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/bu;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bu;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/bu;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/bu;->zzf:J

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/measurement/bs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/bu;->zzg:Lcom/google/android/gms/internal/measurement/bu;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gl;->l()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bs;

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/internal/measurement/bu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/bu;->zzg:Lcom/google/android/gms/internal/measurement/bu;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/bu;->zzg:Lcom/google/android/gms/internal/measurement/bu;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/bs;

    .line 3
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/bs;-><init>(Lcom/google/android/gms/internal/measurement/bm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/bu;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/bu;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v3, "zza"

    aput-object v3, p1, v1

    const-string/jumbo v1, "zze"

    aput-object v1, p1, v0

    const-string/jumbo v0, "zzf"

    aput-object v0, p1, v2

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/bu;->zzg:Lcom/google/android/gms/internal/measurement/bu;

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/bu;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bu;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/bu;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
