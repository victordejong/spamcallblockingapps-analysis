.class final Lcom/google/android/gms/internal/measurement/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/gp;


# static fields
.field static final a:Lcom/google/android/gms/internal/measurement/gp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/da;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/da;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/da;->a:Lcom/google/android/gms/internal/measurement/gp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/db;->zza(I)Lcom/google/android/gms/internal/measurement/db;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
