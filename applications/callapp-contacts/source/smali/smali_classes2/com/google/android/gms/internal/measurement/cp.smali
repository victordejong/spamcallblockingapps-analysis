.class public final Lcom/google/android/gms/internal/measurement/cp;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/cp;",
        "Lcom/google/android/gms/internal/measurement/co;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/measurement/cp;


# instance fields
.field public zza:I

.field public zze:J

.field public zzf:Ljava/lang/String;

.field public zzg:Ljava/lang/String;

.field public zzh:J

.field private zzi:F

.field public zzj:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/cp;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/cp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/cp;->zzk:Lcom/google/android/gms/internal/measurement/cp;

    const-class v1, Lcom/google/android/gms/internal/measurement/cp;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gl;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cp;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/cp;->zzk:Lcom/google/android/gms/internal/measurement/cp;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cp;D)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/cp;->zzj:D

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cp;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/cp;->zze:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/cp;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/cp;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zzh:J

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/cp;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/cp;->zzh:J

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/cp;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/cp;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zzj:D

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/measurement/co;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cp;->zzk:Lcom/google/android/gms/internal/measurement/cp;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gl;->l()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/co;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/measurement/cp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/cp;->zzk:Lcom/google/android/gms/internal/measurement/cp;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/cp;->zzk:Lcom/google/android/gms/internal/measurement/cp;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/co;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/co;-><init>(Lcom/google/android/gms/internal/measurement/bm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/cp;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/cp;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

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

    const-string v0, "zzi"

    aput-object v0, p1, v1

    const/4 v0, 0x6

    const-string v1, "zzj"

    aput-object v1, p1, v0

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/cp;->zzk:Lcom/google/android/gms/internal/measurement/cp;

    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

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

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/cp;->zza:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
