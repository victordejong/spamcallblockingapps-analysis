.class final Lcom/google/android/gms/internal/measurement/fz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/fz;


# instance fields
.field private final b:Lcom/google/android/gms/internal/measurement/gg;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/gd",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/fz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/fz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/fz;->a:Lcom/google/android/gms/internal/measurement/fz;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fz;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/fa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/fa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fz;->b:Lcom/google/android/gms/internal/measurement/gg;

    .line 18
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/fz;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/fz;->a:Lcom/google/android/gms/internal/measurement/fz;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/gd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/measurement/gd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2
    const-string/jumbo v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fz;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/gd;

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fz;->b:Lcom/google/android/gms/internal/measurement/gg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/gg;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v1

    .line 7
    const-string/jumbo v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    const-string/jumbo v0, "schema"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fz;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/gd;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/measurement/gd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    return-object v0
.end method
