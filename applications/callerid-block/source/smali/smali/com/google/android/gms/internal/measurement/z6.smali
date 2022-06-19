.class final Lcom/google/android/gms/internal/measurement/z6;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Lcom/google/android/gms/internal/measurement/z6;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/d7;

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/c7<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/z6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/z6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/z6;->c:Lcom/google/android/gms/internal/measurement/z6;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/z6;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/j6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/j6;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/z6;->a:Lcom/google/android/gms/internal/measurement/d7;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/z6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/z6;->c:Lcom/google/android/gms/internal/measurement/z6;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/c7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/c7<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/x5;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/z6;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/c7;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/z6;->a:Lcom/google/android/gms/internal/measurement/d7;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/d7;->d(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/c7;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/x5;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/x5;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z6;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/c7;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
