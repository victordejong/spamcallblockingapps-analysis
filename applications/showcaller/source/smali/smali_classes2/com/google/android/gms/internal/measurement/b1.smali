.class public final Lcom/google/android/gms/internal/measurement/b1;
.super Lcom/google/android/gms/internal/measurement/x5;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/x5<",
        "Lcom/google/android/gms/internal/measurement/b1;",
        "Lcom/google/android/gms/internal/measurement/y0;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/z6;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/measurement/b1;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/measurement/e6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/e6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/b1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b1;->zzi:Lcom/google/android/gms/internal/measurement/b1;

    const-class v1, Lcom/google/android/gms/internal/measurement/b1;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/x5;->w(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/x5;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/x5;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x5;->q()Lcom/google/android/gms/internal/measurement/e6;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zzh:Lcom/google/android/gms/internal/measurement/e6;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/measurement/b1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b1;->zzi:Lcom/google/android/gms/internal/measurement/b1;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/measurement/b1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/b1;->zzi:Lcom/google/android/gms/internal/measurement/b1;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Lcom/google/android/gms/internal/measurement/zzck;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zze:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzck;->zza(I)Lcom/google/android/gms/internal/measurement/zzck;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzck;->d:Lcom/google/android/gms/internal/measurement/zzck;

    :cond_0
    return-object v0
.end method

.method public final C()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zza:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zzg:Z

    return v0
.end method

.method public final G()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zzh:Lcom/google/android/gms/internal/measurement/e6;

    return-object v0
.end method

.method public final H()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b1;->zzh:Lcom/google/android/gms/internal/measurement/e6;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final y(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/b1;->zzi:Lcom/google/android/gms/internal/measurement/b1;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/y0;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/y0;-><init>(Lcom/google/android/gms/internal/measurement/k0;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/b1;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/b1;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zza"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck;->zzb()Lcom/google/android/gms/internal/measurement/b6;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/measurement/b1;->zzi:Lcom/google/android/gms/internal/measurement/b1;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u001a"

    .line 7
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/x5;->x(Lcom/google/android/gms/internal/measurement/y6;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
