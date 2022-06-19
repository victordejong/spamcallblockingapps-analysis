.class public abstract Lo1/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lo1/o$a<",
        "**>;W:",
        "Lo1/o;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Lx1/p;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
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

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo1/o$a;->c:Ljava/util/Set;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lo1/o$a;->a:Ljava/util/UUID;

    .line 4
    new-instance v0, Lx1/p;

    iget-object v1, p0, Lo1/o$a;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo1/o$a;->b:Lx1/p;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lo1/o$a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lo1/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lo1/j$a;

    .line 2
    new-instance v1, Lo1/j;

    invoke-direct {v1, v0}, Lo1/j;-><init>(Lo1/j$a;)V

    .line 3
    iget-object v0, p0, Lo1/o$a;->b:Lx1/p;

    iget-object v0, v0, Lx1/p;->j:Lo1/b;

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 5
    invoke-virtual {v0}, Lo1/b;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    :cond_0
    iget-boolean v3, v0, Lo1/b;->d:Z

    if-nez v3, :cond_2

    .line 7
    iget-boolean v3, v0, Lo1/b;->b:Z

    if-nez v3, :cond_2

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 8
    iget-boolean v0, v0, Lo1/b;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 9
    :goto_1
    iget-object v2, p0, Lo1/o$a;->b:Lx1/p;

    iget-boolean v2, v2, Lx1/p;->q:Z

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lo1/o$a;->a:Ljava/util/UUID;

    .line 12
    new-instance v0, Lx1/p;

    iget-object v2, p0, Lo1/o$a;->b:Lx1/p;

    invoke-direct {v0, v2}, Lx1/p;-><init>(Lx1/p;)V

    iput-object v0, p0, Lo1/o$a;->b:Lx1/p;

    .line 13
    iget-object v2, p0, Lo1/o$a;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lx1/p;->a:Ljava/lang/String;

    return-object v1
.end method
