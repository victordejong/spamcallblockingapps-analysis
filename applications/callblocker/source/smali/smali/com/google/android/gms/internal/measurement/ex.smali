.class abstract Lcom/google/android/gms/internal/measurement/ex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/ex;

.field private static final b:Lcom/google/android/gms/internal/measurement/ex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/ez;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ez;-><init>(Lcom/google/android/gms/internal/measurement/ew;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ex;->a:Lcom/google/android/gms/internal/measurement/ex;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/ey;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ey;-><init>(Lcom/google/android/gms/internal/measurement/ew;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ex;->b:Lcom/google/android/gms/internal/measurement/ex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ew;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ex;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/measurement/ex;
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/ex;->a:Lcom/google/android/gms/internal/measurement/ex;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/measurement/ex;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ex;->b:Lcom/google/android/gms/internal/measurement/ex;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;J)V
.end method
