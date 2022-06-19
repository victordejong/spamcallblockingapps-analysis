.class public final Lcom/google/android/gms/internal/measurement/bl;
.super Lcom/google/android/gms/internal/measurement/gl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gl<",
        "Lcom/google/android/gms/internal/measurement/bl;",
        "Lcom/google/android/gms/internal/measurement/bk;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/measurement/bl;


# instance fields
.field private zza:I

.field public zze:Ljava/lang/String;

.field public zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/bl;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/bl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bl;->zzg:Lcom/google/android/gms/internal/measurement/bl;

    const-class v1, Lcom/google/android/gms/internal/measurement/bl;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/gl;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gl;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bl;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/bl;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/measurement/bl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/bl;->zzg:Lcom/google/android/gms/internal/measurement/bl;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/bl;->zzg:Lcom/google/android/gms/internal/measurement/bl;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/bk;

    .line 3
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/bk;-><init>(Lcom/google/android/gms/internal/measurement/bf;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/bl;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/bl;-><init>()V

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/bl;->zzg:Lcom/google/android/gms/internal/measurement/bl;

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/bl;->a(Lcom/google/android/gms/internal/measurement/ho;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
