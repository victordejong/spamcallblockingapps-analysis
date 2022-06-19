.class public final Lcom/google/android/exoplayer2/upstream/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/c$a$a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/upstream/c$a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/c$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/upstream/c$a$a$a;IJJ)V
    .locals 6

    .line 4087
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c$a$a$a;->b:Lcom/google/android/exoplayer2/upstream/c$a;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 81
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/c$a;->b(IJJ)V

    return-void
.end method

.method public static synthetic lambda$8HHn-rXOBZgXVClyVWpyi_VaO64(Lcom/google/android/exoplayer2/upstream/c$a$a$a;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/upstream/c$a$a;->a(Lcom/google/android/exoplayer2/upstream/c$a$a$a;IJJ)V

    return-void
.end method


# virtual methods
.method public final a(IJJ)V
    .locals 10

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/upstream/c$a$a$a;

    .line 2087
    iget-boolean v1, v3, Lcom/google/android/exoplayer2/upstream/c$a$a$a;->c:Z

    if-nez v1, :cond_0

    .line 3087
    iget-object v1, v3, Lcom/google/android/exoplayer2/upstream/c$a$a$a;->a:Landroid/os/Handler;

    .line 79
    new-instance v9, Lcom/google/android/exoplayer2/upstream/-$$Lambda$c$a$a$8HHn-rXOBZgXVClyVWpyi_VaO64;

    move-object v2, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$c$a$a$8HHn-rXOBZgXVClyVWpyi_VaO64;-><init>(Lcom/google/android/exoplayer2/upstream/c$a$a$a;IJJ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/c$a;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/c$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/c$a$a$a;

    .line 1087
    iget-object v2, v1, Lcom/google/android/exoplayer2/upstream/c$a$a$a;->b:Lcom/google/android/exoplayer2/upstream/c$a;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    .line 1100
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/upstream/c$a$a$a;->c:Z

    .line 71
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/c$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
