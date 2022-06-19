.class public final Lcom/google/android/gms/internal/measurement/zzfw;
.super Lcom/google/android/gms/internal/measurement/zzkd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzkd<",
        "Lcom/google/android/gms/internal/measurement/zzfw;",
        "Lcom/google/android/gms/internal/measurement/zzfv;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field public static final synthetic zza:I

.field private static final zzaa:Lcom/google/android/gms/internal/measurement/zzfw;


# instance fields
.field private zzA:Ljava/lang/String;

.field private zzB:J

.field private zzC:I

.field private zzD:Ljava/lang/String;

.field private zzE:Ljava/lang/String;

.field private zzF:Z

.field private zzG:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzfk;",
            ">;"
        }
    .end annotation
.end field

.field private zzH:Ljava/lang/String;

.field private zzI:I

.field private zzJ:I

.field private zzK:I

.field private zzL:Ljava/lang/String;

.field private zzM:J

.field private zzN:J

.field private zzO:Ljava/lang/String;

.field private zzP:Ljava/lang/String;

.field private zzQ:I

.field private zzR:Ljava/lang/String;

.field private zzS:Lcom/google/android/gms/internal/measurement/zzgb;

.field private zzT:Lcom/google/android/gms/internal/measurement/zzki;

.field private zzU:J

.field private zzV:J

.field private zzW:Ljava/lang/String;

.field private zzX:Ljava/lang/String;

.field private zzY:I

.field private zzZ:Z

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzfo;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/measurement/zzkk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkk<",
            "Lcom/google/android/gms/internal/measurement/zzgh;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:J

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;

.field private zzs:I

.field private zzt:Ljava/lang/String;

.field private zzu:Ljava/lang/String;

.field private zzv:Ljava/lang/String;

.field private zzw:J

.field private zzx:J

.field private zzy:Ljava/lang/String;

.field private zzz:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzby(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzv:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzA:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzE:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzG:Lcom/google/android/gms/internal/measurement/zzkk;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzO:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzP:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzR:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbB()Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzT:Lcom/google/android/gms/internal/measurement/zzki;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzW:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzX:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaA(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzn:J

    return-void
.end method

.method public static synthetic zzaB(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzn:J

    return-void
.end method

.method public static synthetic zzaC(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const-string p1, "android"

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaD(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzp:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaE(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzq:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaF(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzr:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaG(Lcom/google/android/gms/internal/measurement/zzfw;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzs:I

    return-void
.end method

.method public static synthetic zzaH(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzt:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaI(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzu:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaJ(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzv:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaK(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzw:J

    return-void
.end method

.method public static synthetic zzaL(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const p2, 0x8000

    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const-wide/32 p1, 0xa414

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzx:J

    return-void
.end method

.method public static synthetic zzaM(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzy:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaN(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzy:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaO(Lcom/google/android/gms/internal/measurement/zzfw;Z)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzz:Z

    return-void
.end method

.method public static synthetic zzaP(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzz:Z

    return-void
.end method

.method public static synthetic zzaQ(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzA:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaR(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzA:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzA:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaS(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzB:J

    return-void
.end method

.method public static synthetic zzaT(Lcom/google/android/gms/internal/measurement/zzfw;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzC:I

    return-void
.end method

.method public static synthetic zzaU(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzD:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaV(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzD:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaW(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzE:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzaX(Lcom/google/android/gms/internal/measurement/zzfw;Z)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzF:Z

    return-void
.end method

.method public static synthetic zzaY(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzG:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbF(Lcom/google/android/gms/internal/measurement/zzkk;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzG:Lcom/google/android/gms/internal/measurement/zzkk;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzG:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic zzaZ(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzG:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method public static zzaj()Lcom/google/android/gms/internal/measurement/zzfv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbt()Lcom/google/android/gms/internal/measurement/zzjz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfv;

    return-object v0
.end method

.method public static synthetic zzak()Lcom/google/android/gms/internal/measurement/zzfw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    return-object v0
.end method

.method public static synthetic zzal(Lcom/google/android/gms/internal/measurement/zzfw;I)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/4 v0, 0x1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzg:I

    return-void
.end method

.method public static synthetic zzam(Lcom/google/android/gms/internal/measurement/zzfw;ILcom/google/android/gms/internal/measurement/zzfo;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbI()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic zzan(Lcom/google/android/gms/internal/measurement/zzfw;Lcom/google/android/gms/internal/measurement/zzfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbI()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic zzao(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbI()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic zzap(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbE()Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method public static synthetic zzaq(Lcom/google/android/gms/internal/measurement/zzfw;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbI()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic zzar(Lcom/google/android/gms/internal/measurement/zzfw;ILcom/google/android/gms/internal/measurement/zzgh;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbJ()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 3
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic zzas(Lcom/google/android/gms/internal/measurement/zzfw;Lcom/google/android/gms/internal/measurement/zzgh;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbJ()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic zzat(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbJ()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic zzau(Lcom/google/android/gms/internal/measurement/zzfw;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfw;->zzbJ()V

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic zzav(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzj:J

    return-void
.end method

.method public static synthetic zzaw(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzk:J

    return-void
.end method

.method public static synthetic zzax(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzl:J

    return-void
.end method

.method public static synthetic zzay(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzm:J

    return-void
.end method

.method public static synthetic zzaz(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzm:J

    return-void
.end method

.method private final zzbI()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbF(Lcom/google/android/gms/internal/measurement/zzkk;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    :cond_0
    return-void
.end method

.method private final zzbJ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbF(Lcom/google/android/gms/internal/measurement/zzkk;)Lcom/google/android/gms/internal/measurement/zzkk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    :cond_0
    return-void
.end method

.method public static synthetic zzba(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzH:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzbb(Lcom/google/android/gms/internal/measurement/zzfw;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzI:I

    return-void
.end method

.method public static synthetic zzbc(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzL:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzbd(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzM:J

    return-void
.end method

.method public static synthetic zzbe(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzN:J

    return-void
.end method

.method public static synthetic zzbf(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfw;->zzO:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzO:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzbg(Lcom/google/android/gms/internal/measurement/zzfw;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzQ:I

    return-void
.end method

.method public static synthetic zzbh(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzR:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzbi(Lcom/google/android/gms/internal/measurement/zzfw;Lcom/google/android/gms/internal/measurement/zzgb;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzS:Lcom/google/android/gms/internal/measurement/zzgb;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    return-void
.end method

.method public static synthetic zzbj(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzT:Lcom/google/android/gms/internal/measurement/zzki;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzf(I)Lcom/google/android/gms/internal/measurement/zzki;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzT:Lcom/google/android/gms/internal/measurement/zzki;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzT:Lcom/google/android/gms/internal/measurement/zzki;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzio;->zzbs(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic zzbk(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzU:J

    return-void
.end method

.method public static synthetic zzbl(Lcom/google/android/gms/internal/measurement/zzfw;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzV:J

    return-void
.end method

.method public static synthetic zzbm(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzW:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzbn(Lcom/google/android/gms/internal/measurement/zzfw;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method public final zzB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzv:Ljava/lang/String;

    return-object v0
.end method

.method public final zzC()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzD()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzw:J

    return-wide v0
.end method

.method public final zzE()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzF()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzx:J

    return-wide v0
.end method

.method public final zzG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzy:Ljava/lang/String;

    return-object v0
.end method

.method public final zzH()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzz:Z

    return v0
.end method

.method public final zzJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzA:Ljava/lang/String;

    return-object v0
.end method

.method public final zzK()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzB:J

    return-wide v0
.end method

.method public final zzM()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzN()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzC:I

    return v0
.end method

.method public final zzO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzD:Ljava/lang/String;

    return-object v0
.end method

.method public final zzP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzE:Ljava/lang/String;

    return-object v0
.end method

.method public final zzQ()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzF:Z

    return v0
.end method

.method public final zzS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzG:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object v0
.end method

.method public final zzT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzH:Ljava/lang/String;

    return-object v0
.end method

.method public final zzU()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzV()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzI:I

    return v0
.end method

.method public final zzW()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzX()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzM:J

    return-wide v0
.end method

.method public final zzY()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzZ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzN:J

    return-wide v0
.end method

.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzO:Ljava/lang/String;

    return-object v0
.end method

.method public final zzab()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzac()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzQ:I

    return v0
.end method

.method public final zzad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzR:Ljava/lang/String;

    return-object v0
.end method

.method public final zzae()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzaf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzU:J

    return-wide v0
.end method

.method public final zzag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzW:Ljava/lang/String;

    return-object v0
.end method

.method public final zzah()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzf:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzai()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzX:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzg:I

    return v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzh:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfo;

    return-object p1
.end method

.method public final zzf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgh;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    return-object v0
.end method

.method public final zzg()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/measurement/zzgh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzi:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgh;

    return-object p1
.end method

.method public final zzi()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzj:J

    return-wide v0
.end method

.method public final zzk()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfv;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfv;-><init>(Lcom/google/android/gms/internal/measurement/zzff;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfw;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x34

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    .line 6
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfo;

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-class p3, Lcom/google/android/gms/internal/measurement/zzgh;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzA"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzC"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzD"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzE"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzF"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzG"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfk;

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzH"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzI"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "zzJ"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzK"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzL"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "zzM"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-string p3, "zzN"

    aput-object p3, p1, p2

    const/16 p2, 0x27

    const-string p3, "zzO"

    aput-object p3, p1, p2

    const/16 p2, 0x28

    const-string p3, "zzP"

    aput-object p3, p1, p2

    const/16 p2, 0x29

    const-string p3, "zzQ"

    aput-object p3, p1, p2

    const/16 p2, 0x2a

    const-string p3, "zzR"

    aput-object p3, p1, p2

    const/16 p2, 0x2b

    const-string p3, "zzS"

    aput-object p3, p1, p2

    const/16 p2, 0x2c

    const-string p3, "zzT"

    aput-object p3, p1, p2

    const/16 p2, 0x2d

    const-string p3, "zzU"

    aput-object p3, p1, p2

    const/16 p2, 0x2e

    const-string p3, "zzV"

    aput-object p3, p1, p2

    const/16 p2, 0x2f

    const-string p3, "zzW"

    aput-object p3, p1, p2

    const/16 p2, 0x30

    const-string p3, "zzX"

    aput-object p3, p1, p2

    const/16 p2, 0x31

    const-string p3, "zzY"

    aput-object p3, p1, p2

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi;->zzb()Lcom/google/android/gms/internal/measurement/zzkh;

    move-result-object p2

    const/16 p3, 0x32

    aput-object p2, p1, p3

    const/16 p2, 0x33

    const-string p3, "zzZ"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfw;->zzaa:Lcom/google/android/gms/internal/measurement/zzfw;

    const-string p3, "\u0001.\u0000\u0002\u00017.\u0000\u0004\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1002\u0001\u0005\u1002\u0002\u0006\u1002\u0003\u0007\u1002\u0005\u0008\u1008\u0006\t\u1008\u0007\n\u1008\u0008\u000b\u1008\t\u000c\u1004\n\r\u1008\u000b\u000e\u1008\u000c\u0010\u1008\r\u0011\u1002\u000e\u0012\u1002\u000f\u0013\u1008\u0010\u0014\u1007\u0011\u0015\u1008\u0012\u0016\u1002\u0013\u0017\u1004\u0014\u0018\u1008\u0015\u0019\u1008\u0016\u001a\u1002\u0004\u001c\u1007\u0017\u001d\u001b\u001e\u1008\u0018\u001f\u1004\u0019 \u1004\u001a!\u1004\u001b\"\u1008\u001c#\u1002\u001d$\u1002\u001e%\u1008\u001f&\u1008 \'\u1004!)\u1008\",\u1009#-\u001d.\u1002$/\u1002%2\u1008&4\u1008\'5\u100c(7\u1007)"

    .line 8
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzbz(Lcom/google/android/gms/internal/measurement/zzli;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzk:J

    return-wide v0
.end method

.method public final zzn()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzl:J

    return-wide v0
.end method

.method public final zzp()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzm:J

    return-wide v0
.end method

.method public final zzr()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzn:J

    return-wide v0
.end method

.method public final zzt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzx()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zze:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzs:I

    return v0
.end method

.method public final zzz()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfw;->zzt:Ljava/lang/String;

    return-object v0
.end method
