.class public final Lcom/google/android/gms/internal/measurement/br;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/br;",
        "Lcom/google/android/gms/internal/measurement/bq;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/br;


# instance fields
.field public zza:I

.field public zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/cl;

.field public zzg:Lcom/google/android/gms/internal/measurement/cl;

.field public zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/br;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/br;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/br;->zzi:Lcom/google/android/gms/internal/measurement/br;

    const-class v1, Lcom/google/android/gms/internal/measurement/br;

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

.method static synthetic a(Lcom/google/android/gms/internal/measurement/br;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/br;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/br;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/br;->zze:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/br;Lcom/google/android/gms/internal/measurement/cl;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/br;->zzf:Lcom/google/android/gms/internal/measurement/cl;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/br;->zza:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/br;->zza:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/br;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/br;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/br;->zza:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/br;->zzh:Z

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/measurement/bq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/br;->zzi:Lcom/google/android/gms/internal/measurement/br;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gl;->l()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bq;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/br;Lcom/google/android/gms/internal/measurement/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/br;->zzg:Lcom/google/android/gms/internal/measurement/cl;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/br;->zza:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/br;->zza:I

    return-void
.end method

.method static synthetic c()Lcom/google/android/gms/internal/measurement/br;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/br;->zzi:Lcom/google/android/gms/internal/measurement/br;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/cl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/br;->zzf:Lcom/google/android/gms/internal/measurement/cl;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cl;->e()Lcom/google/android/gms/internal/measurement/cl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final a(I)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/br;->zzi:Lcom/google/android/gms/internal/measurement/br;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/bq;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/bq;-><init>(Lcom/google/android/gms/internal/measurement/bm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/br;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/br;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "zza"

    aput-object v5, p1, v1

    const-string v1, "zze"

    aput-object v1, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    const-string v0, "zzh"

    aput-object v0, p1, v2

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/br;->zzi:Lcom/google/android/gms/internal/measurement/br;

    const-string v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/br;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
