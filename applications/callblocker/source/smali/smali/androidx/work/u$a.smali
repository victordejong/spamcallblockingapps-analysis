.class public abstract Landroidx/work/u$a;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/work/u$a",
        "<**>;W:",
        "Landroidx/work/u;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/util/UUID;

.field c:Landroidx/work/impl/b/p;

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
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
            "Ljava/lang/Class",
            "<+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/u$a;->a:Z

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/u$a;->d:Ljava/util/Set;

    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/u$a;->b:Ljava/util/UUID;

    .line 130
    iput-object p1, p0, Landroidx/work/u$a;->e:Ljava/lang/Class;

    .line 131
    new-instance v0, Landroidx/work/impl/b/p;

    iget-object v1, p0, Landroidx/work/u$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/b/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/u$a;->c:Landroidx/work/impl/b/p;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/u$a;->a(Ljava/lang/String;)Landroidx/work/u$a;

    .line 133
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/work/u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Landroidx/work/u$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0}, Landroidx/work/u$a;->c()Landroidx/work/u$a;

    move-result-object v0

    return-object v0
.end method

.method abstract c()Landroidx/work/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract d()Landroidx/work/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public final e()Landroidx/work/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Landroidx/work/u$a;->d()Landroidx/work/u;

    move-result-object v0

    .line 287
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/u$a;->b:Ljava/util/UUID;

    .line 288
    new-instance v1, Landroidx/work/impl/b/p;

    iget-object v2, p0, Landroidx/work/u$a;->c:Landroidx/work/impl/b/p;

    invoke-direct {v1, v2}, Landroidx/work/impl/b/p;-><init>(Landroidx/work/impl/b/p;)V

    iput-object v1, p0, Landroidx/work/u$a;->c:Landroidx/work/impl/b/p;

    .line 289
    iget-object v1, p0, Landroidx/work/u$a;->c:Landroidx/work/impl/b/p;

    iget-object v2, p0, Landroidx/work/u$a;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/b/p;->a:Ljava/lang/String;

    .line 290
    return-object v0
.end method
