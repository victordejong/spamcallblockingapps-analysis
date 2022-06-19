.class public Lcom/google/android/gms/internal/measurement/dp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/dp$a;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static b:Z

.field private static volatile c:Lcom/google/android/gms/internal/measurement/dp;

.field private static volatile d:Lcom/google/android/gms/internal/measurement/dp;

.field private static final e:Lcom/google/android/gms/internal/measurement/dp;


# instance fields
.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/measurement/dp$a;",
            "Lcom/google/android/gms/internal/measurement/ed$f",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/dp;->a:Z

    .line 33
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/dp;->b:Z

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/dp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/dp;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/dp;->e:Lcom/google/android/gms/internal/measurement/dp;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dp;->f:Ljava/util/Map;

    .line 28
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/dp;->f:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/dp;
    .locals 2

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/dp;->c:Lcom/google/android/gms/internal/measurement/dp;

    .line 2
    if-nez v0, :cond_1

    .line 3
    const-class v1, Lcom/google/android/gms/internal/measurement/dp;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/dp;->c:Lcom/google/android/gms/internal/measurement/dp;

    .line 5
    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/dp;->e:Lcom/google/android/gms/internal/measurement/dp;

    sput-object v0, Lcom/google/android/gms/internal/measurement/dp;->c:Lcom/google/android/gms/internal/measurement/dp;

    .line 8
    :cond_0
    monitor-exit v1

    .line 9
    :cond_1
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Lcom/google/android/gms/internal/measurement/dp;
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/dp;->d:Lcom/google/android/gms/internal/measurement/dp;

    .line 11
    if-eqz v0, :cond_0

    .line 21
    :goto_0
    return-object v0

    .line 13
    :cond_0
    const-class v1, Lcom/google/android/gms/internal/measurement/dp;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/dp;->d:Lcom/google/android/gms/internal/measurement/dp;

    .line 15
    if-eqz v0, :cond_1

    .line 16
    monitor-exit v1

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 18
    :cond_1
    :try_start_1
    const-class v0, Lcom/google/android/gms/internal/measurement/dp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/eb;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/dp;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/measurement/dp;->d:Lcom/google/android/gms/internal/measurement/dp;

    .line 21
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/fn;I)Lcom/google/android/gms/internal/measurement/ed$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/fn;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/ed$f",
            "<TContainingType;*>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/dp;->f:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/dp$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/dp$a;-><init>(Ljava/lang/Object;I)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$f;

    .line 25
    return-object v0
.end method
