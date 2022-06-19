.class public final Lio/objectbox/c/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/c/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ExecutorService;

.field b:Lio/objectbox/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field e:Lio/objectbox/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/g<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Lio/objectbox/c/j;

.field g:Lio/objectbox/c/i;

.field private final h:Lio/objectbox/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Object;

.field private j:Z

.field private k:Lio/objectbox/c/f;


# direct methods
.method public constructor <init>(Lio/objectbox/c/b;Ljava/lang/Object;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/b<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/objectbox/c/k;->h:Lio/objectbox/c/b;

    .line 63
    iput-object p2, p0, Lio/objectbox/c/k;->i:Ljava/lang/Object;

    .line 64
    iput-object p3, p0, Lio/objectbox/c/k;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Lio/objectbox/c/a;)Lio/objectbox/c/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/a<",
            "TT;>;)",
            "Lio/objectbox/c/d;"
        }
    .end annotation

    .line 154
    iget-boolean v0, p0, Lio/objectbox/c/k;->c:Z

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lio/objectbox/c/l;

    invoke-direct {v0, p1}, Lio/objectbox/c/l;-><init>(Lio/objectbox/c/a;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    iput-object p1, p0, Lio/objectbox/c/k;->b:Lio/objectbox/c/a;

    .line 158
    new-instance v1, Lio/objectbox/c/e;

    iget-object v2, p0, Lio/objectbox/c/k;->h:Lio/objectbox/c/b;

    iget-object v3, p0, Lio/objectbox/c/k;->i:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p1}, Lio/objectbox/c/e;-><init>(Lio/objectbox/c/b;Ljava/lang/Object;Lio/objectbox/c/a;)V

    if-eqz v0, :cond_1

    .line 1070
    iput-object v1, v0, Lio/objectbox/c/l;->a:Lio/objectbox/c/d;

    .line 163
    :cond_1
    iget-object v0, p0, Lio/objectbox/c/k;->k:Lio/objectbox/c/f;

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {v0, v1}, Lio/objectbox/c/f;->a(Lio/objectbox/c/d;)V

    .line 170
    :cond_2
    iget-object v0, p0, Lio/objectbox/c/k;->e:Lio/objectbox/c/g;

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/objectbox/c/k;->f:Lio/objectbox/c/j;

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/objectbox/c/k;->g:Lio/objectbox/c/i;

    if-eqz v0, :cond_4

    .line 171
    :cond_3
    new-instance p1, Lio/objectbox/c/k$a;

    invoke-direct {p1, p0, v1}, Lio/objectbox/c/k$a;-><init>(Lio/objectbox/c/k;Lio/objectbox/c/e;)V

    .line 174
    :cond_4
    iget-boolean v0, p0, Lio/objectbox/c/k;->j:Z

    if-eqz v0, :cond_6

    .line 175
    iget-boolean v0, p0, Lio/objectbox/c/k;->d:Z

    if-nez v0, :cond_5

    .line 178
    iget-object v0, p0, Lio/objectbox/c/k;->h:Lio/objectbox/c/b;

    iget-object v2, p0, Lio/objectbox/c/k;->i:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lio/objectbox/c/b;->c(Lio/objectbox/c/a;Ljava/lang/Object;)V

    goto :goto_1

    .line 176
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal combination of single() and onlyChanges()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_6
    iget-object v0, p0, Lio/objectbox/c/k;->h:Lio/objectbox/c/b;

    iget-object v2, p0, Lio/objectbox/c/k;->i:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lio/objectbox/c/b;->a(Lio/objectbox/c/a;Ljava/lang/Object;)V

    .line 181
    iget-boolean v0, p0, Lio/objectbox/c/k;->d:Z

    if-nez v0, :cond_7

    .line 182
    iget-object v0, p0, Lio/objectbox/c/k;->h:Lio/objectbox/c/b;

    iget-object v2, p0, Lio/objectbox/c/k;->i:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lio/objectbox/c/b;->c(Lio/objectbox/c/a;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-object v1
.end method
