.class public abstract Landroidx/work/l$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/work/l$a;",
        "W:",
        "Landroidx/work/l;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/util/UUID;

.field c:Landroidx/work/impl/l/j;

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/l$a;->a:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/l$a;->d:Ljava/util/Set;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/l$a;->b:Ljava/util/UUID;

    new-instance v0, Landroidx/work/impl/l/j;

    iget-object v1, p0, Landroidx/work/l$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/l/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/l$a;->c:Landroidx/work/impl/l/j;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/l$a;->a(Ljava/lang/String;)Landroidx/work/l$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/work/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/l$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/work/l$a;->d()Landroidx/work/l$a;

    return-object p0
.end method

.method public final b()Landroidx/work/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/work/l$a;->c()Landroidx/work/l;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/l$a;->b:Ljava/util/UUID;

    new-instance v1, Landroidx/work/impl/l/j;

    iget-object v2, p0, Landroidx/work/l$a;->c:Landroidx/work/impl/l/j;

    invoke-direct {v1, v2}, Landroidx/work/impl/l/j;-><init>(Landroidx/work/impl/l/j;)V

    iput-object v1, p0, Landroidx/work/l$a;->c:Landroidx/work/impl/l/j;

    iget-object v2, p0, Landroidx/work/l$a;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/l/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method abstract c()Landroidx/work/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method abstract d()Landroidx/work/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final e(Landroidx/work/b;)Landroidx/work/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/b;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/l$a;->c:Landroidx/work/impl/l/j;

    iput-object p1, v0, Landroidx/work/impl/l/j;->j:Landroidx/work/b;

    invoke-virtual {p0}, Landroidx/work/l$a;->d()Landroidx/work/l$a;

    return-object p0
.end method

.method public final f(Landroidx/work/d;)Landroidx/work/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/d;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/l$a;->c:Landroidx/work/impl/l/j;

    iput-object p1, v0, Landroidx/work/impl/l/j;->e:Landroidx/work/d;

    invoke-virtual {p0}, Landroidx/work/l$a;->d()Landroidx/work/l$a;

    return-object p0
.end method
