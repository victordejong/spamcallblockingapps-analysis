.class public abstract Landroidx/media2/exoplayer/external/source/d;
.super Landroidx/media2/exoplayer/external/source/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/d$a;,
        Landroidx/media2/exoplayer/external/source/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/media2/exoplayer/external/source/b;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Landroidx/media2/exoplayer/external/source/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Landroidx/media2/exoplayer/external/upstream/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/b;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method protected a(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)J"
        }
    .end annotation

    return-wide p1
.end method

.method protected a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/t$a;",
            ")",
            "Landroidx/media2/exoplayer/external/source/t$a;"
        }
    .end annotation

    return-object p2
.end method

.method protected a()V
    .locals 3

    .line 69
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

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

    check-cast v1, Landroidx/media2/exoplayer/external/source/d$b;

    .line 70
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/d$b;->b:Landroidx/media2/exoplayer/external/source/t$b;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/t$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/d;->c:Landroidx/media2/exoplayer/external/upstream/w;

    .line 55
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/d;->b:Landroid/os/Handler;

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/d$b;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/d$b;

    .line 134
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/d$b;->b:Landroidx/media2/exoplayer/external/source/t$b;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/t$b;)V

    return-void
.end method

.method protected final a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/t;",
            ")V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 116
    new-instance v0, Landroidx/media2/exoplayer/external/source/e;

    invoke-direct {v0, p0, p1}, Landroidx/media2/exoplayer/external/source/e;-><init>(Landroidx/media2/exoplayer/external/source/d;Ljava/lang/Object;)V

    .line 118
    new-instance v1, Landroidx/media2/exoplayer/external/source/d$a;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/source/d$a;-><init>(Landroidx/media2/exoplayer/external/source/d;Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

    new-instance v3, Landroidx/media2/exoplayer/external/source/d$b;

    invoke-direct {v3, p2, v0, v1}, Landroidx/media2/exoplayer/external/source/d$b;-><init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/source/t$b;Landroidx/media2/exoplayer/external/source/u;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d;->b:Landroid/os/Handler;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Landroidx/media2/exoplayer/external/source/t;->a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/u;)V

    .line 121
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/d;->c:Landroidx/media2/exoplayer/external/upstream/w;

    invoke-interface {p2, v0, p1}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/t$b;Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 122
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/d;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-interface {p2, v0}, Landroidx/media2/exoplayer/external/source/t;->b(Landroidx/media2/exoplayer/external/source/t$b;)V

    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/exoplayer/external/source/t;",
            "Landroidx/media2/exoplayer/external/al;",
            ")V"
        }
    .end annotation
.end method

.method protected b()V
    .locals 3

    .line 77
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

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

    check-cast v1, Landroidx/media2/exoplayer/external/source/d$b;

    .line 78
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/d$b;->b:Landroidx/media2/exoplayer/external/source/t$b;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/t;->b(Landroidx/media2/exoplayer/external/source/t$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/d$b;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/d$b;

    .line 144
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/d$b;->b:Landroidx/media2/exoplayer/external/source/t$b;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/t;->b(Landroidx/media2/exoplayer/external/source/t$b;)V

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/d;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V

    return-void
.end method

.method protected b(Landroidx/media2/exoplayer/external/source/t$a;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c()V
    .locals 4

    .line 85
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

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

    check-cast v1, Landroidx/media2/exoplayer/external/source/d$b;

    .line 86
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/source/d$b;->b:Landroidx/media2/exoplayer/external/source/t$b;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/source/t;->c(Landroidx/media2/exoplayer/external/source/t$b;)V

    .line 87
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/d$b;->c:Landroidx/media2/exoplayer/external/source/u;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/u;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected final c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/d$b;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/d$b;

    .line 154
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/d$b;->b:Landroidx/media2/exoplayer/external/source/t$b;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/source/t;->c(Landroidx/media2/exoplayer/external/source/t$b;)V

    .line 155
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/d$b;->c:Landroidx/media2/exoplayer/external/source/u;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/u;)V

    return-void
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/d;->a:Ljava/util/HashMap;

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

    check-cast v1, Landroidx/media2/exoplayer/external/source/d$b;

    .line 62
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/d$b;->a:Landroidx/media2/exoplayer/external/source/t;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/t;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method
