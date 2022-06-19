.class public Lcom/google/firebase/e/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"


# static fields
.field private static volatile b:Lcom/google/firebase/e/d;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/e/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/e/d;->a:Ljava/util/Set;

    .line 32
    return-void
.end method

.method public static b()Lcom/google/firebase/e/d;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/google/firebase/e/d;->b:Lcom/google/firebase/e/d;

    .line 55
    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/google/firebase/e/d;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/google/firebase/e/d;->b:Lcom/google/firebase/e/d;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/google/firebase/e/d;

    invoke-direct {v0}, Lcom/google/firebase/e/d;-><init>()V

    sput-object v0, Lcom/google/firebase/e/d;->b:Lcom/google/firebase/e/d;

    .line 61
    :cond_0
    monitor-exit v1

    .line 63
    :cond_1
    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/e/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/firebase/e/d;->a:Ljava/util/Set;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/e/d;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
