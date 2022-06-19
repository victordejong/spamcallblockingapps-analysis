.class public abstract Lcom/google/android/exoplayer2/source/d;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/d$a;,
        Lcom/google/android/exoplayer2/source/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer2/source/a;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/android/exoplayer2/source/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Lcom/google/android/exoplayer2/upstream/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic b(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .locals 0

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/d;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V

    return-void
.end method

.method public static synthetic lambda$DP8hRkX5RPNq96cWCicj9DEL-X8(Lcom/google/android/exoplayer2/source/d;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/d;->b(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V

    return-void
.end method


# virtual methods
.method protected a(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)J"
        }
    .end annotation

    return-wide p1
.end method

.method protected a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/r$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/r$a;",
            ")",
            "Lcom/google/android/exoplayer2/source/r$a;"
        }
    .end annotation

    return-object p2
.end method

.method protected final a()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/d$b;

    .line 66
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/d$b;->b:Lcom/google/android/exoplayer2/source/r$b;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/r$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d;->c:Lcom/google/android/exoplayer2/upstream/v;

    .line 51
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d;->b:Landroid/os/Handler;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/d$b;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/d$b;

    .line 151
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v1, p1, Lcom/google/android/exoplayer2/source/d$b;->b:Lcom/google/android/exoplayer2/source/r$b;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/r;->c(Lcom/google/android/exoplayer2/source/r$b;)V

    .line 152
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/source/s;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/s;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/r;",
            ")V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/source/-$$Lambda$d$DP8hRkX5RPNq96cWCicj9DEL-X8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/source/-$$Lambda$d$DP8hRkX5RPNq96cWCicj9DEL-X8;-><init>(Lcom/google/android/exoplayer2/source/d;Ljava/lang/Object;)V

    .line 114
    new-instance v1, Lcom/google/android/exoplayer2/source/d$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/d$a;-><init>(Lcom/google/android/exoplayer2/source/d;Ljava/lang/Object;)V

    .line 115
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/exoplayer2/source/d$b;

    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/exoplayer2/source/d$b;-><init>(Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/source/r$b;Lcom/google/android/exoplayer2/source/s;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d;->b:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/r;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/s;)V

    .line 117
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d;->b:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/r;->a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V

    .line 118
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d;->c:Lcom/google/android/exoplayer2/upstream/v;

    invoke-interface {p2, v0, p1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/r$b;Lcom/google/android/exoplayer2/upstream/v;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/d;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 120
    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/source/r;->b(Lcom/google/android/exoplayer2/source/r$b;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/exoplayer2/source/r;",
            "Lcom/google/android/exoplayer2/al;",
            ")V"
        }
    .end annotation
.end method

.method protected final b()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/d$b;

    .line 74
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/d$b;->b:Lcom/google/android/exoplayer2/source/r$b;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/r;->b(Lcom/google/android/exoplayer2/source/r$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/d$b;

    .line 82
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/d$b;->b:Lcom/google/android/exoplayer2/source/r$b;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/r;->c(Lcom/google/android/exoplayer2/source/r$b;)V

    .line 83
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/source/r;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/d$b;->c:Lcom/google/android/exoplayer2/source/s;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/s;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/d$b;

    .line 58
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/d$b;->a:Lcom/google/android/exoplayer2/source/r;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/r;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method
