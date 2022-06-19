.class public abstract Landroidx/work/r$a;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/work/r$a<",
        "**>;W:",
        "Landroidx/work/r;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/util/UUID;

.field c:Landroidx/work/impl/n/p;

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/work/r$a;->a:Z

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/r$a;->d:Ljava/util/Set;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/r$a;->b:Ljava/util/UUID;

    .line 5
    iput-object p1, p0, Landroidx/work/r$a;->e:Ljava/lang/Class;

    .line 6
    new-instance v0, Landroidx/work/impl/n/p;

    iget-object v1, p0, Landroidx/work/r$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/n/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/r$a;->c:Landroidx/work/impl/n/p;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/r$a;->a(Ljava/lang/String;)Landroidx/work/r$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/work/r$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/r$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/work/r$a;->d()Landroidx/work/r$a;

    move-result-object p1

    return-object p1
.end method

.method public final b()Landroidx/work/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/work/r$a;->c()Landroidx/work/r;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/work/r$a;->c:Landroidx/work/impl/n/p;

    iget-object v1, v1, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/work/b;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroidx/work/b;->f()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v1}, Landroidx/work/b;->g()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 7
    invoke-virtual {v1}, Landroidx/work/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 8
    :goto_1
    iget-object v2, p0, Landroidx/work/r$a;->c:Landroidx/work/impl/n/p;

    iget-boolean v3, v2, Landroidx/work/impl/n/p;->s:Z

    if-eqz v3, :cond_5

    if-nez v1, :cond_4

    .line 9
    iget-wide v1, v2, Landroidx/work/impl/n/p;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/r$a;->b:Ljava/util/UUID;

    .line 13
    new-instance v1, Landroidx/work/impl/n/p;

    iget-object v2, p0, Landroidx/work/r$a;->c:Landroidx/work/impl/n/p;

    invoke-direct {v1, v2}, Landroidx/work/impl/n/p;-><init>(Landroidx/work/impl/n/p;)V

    iput-object v1, p0, Landroidx/work/r$a;->c:Landroidx/work/impl/n/p;

    .line 14
    iget-object v2, p0, Landroidx/work/r$a;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method abstract c()Landroidx/work/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method abstract d()Landroidx/work/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final e(Landroidx/work/b;)Landroidx/work/r$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/b;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/r$a;->c:Landroidx/work/impl/n/p;

    iput-object p1, v0, Landroidx/work/impl/n/p;->l:Landroidx/work/b;

    .line 2
    invoke-virtual {p0}, Landroidx/work/r$a;->d()Landroidx/work/r$a;

    move-result-object p1

    return-object p1
.end method

.method public final f(Landroidx/work/d;)Landroidx/work/r$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/d;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/r$a;->c:Landroidx/work/impl/n/p;

    iput-object p1, v0, Landroidx/work/impl/n/p;->g:Landroidx/work/d;

    .line 2
    invoke-virtual {p0}, Landroidx/work/r$a;->d()Landroidx/work/r$a;

    move-result-object p1

    return-object p1
.end method
