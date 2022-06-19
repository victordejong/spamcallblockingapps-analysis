.class public abstract Lf50$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lf50$a;",
        "W:",
        "Lf50;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/UUID;

.field public c:Lc70;

.field public d:Ljava/util/Set;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf50$a;->a:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf50$a;->d:Ljava/util/Set;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lf50$a;->b:Ljava/util/UUID;

    new-instance v0, Lc70;

    iget-object v1, p0, Lf50$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc70;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lf50$a;->c:Lc70;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf50$a;->a(Ljava/lang/String;)Lf50$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lf50$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lf50$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf50$a;->d()Lf50$a;

    return-object p0
.end method

.method public final b()Lf50;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    invoke-virtual {p0}, Lf50$a;->c()Lf50;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lf50$a;->b:Ljava/util/UUID;

    new-instance v1, Lc70;

    iget-object v2, p0, Lf50$a;->c:Lc70;

    invoke-direct {v1, v2}, Lc70;-><init>(Lc70;)V

    iput-object v1, p0, Lf50$a;->c:Lc70;

    iget-object v2, p0, Lf50$a;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc70;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c()Lf50;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public abstract d()Lf50$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final e(Ls40;)Lf50$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls40;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lf50$a;->c:Lc70;

    iput-object p1, v0, Lc70;->j:Ls40;

    invoke-virtual {p0}, Lf50$a;->d()Lf50$a;

    return-object p0
.end method

.method public final f(Lu40;)Lf50$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu40;",
            ")TB;"
        }
    .end annotation

    iget-object v0, p0, Lf50$a;->c:Lc70;

    iput-object p1, v0, Lc70;->e:Lu40;

    invoke-virtual {p0}, Lf50$a;->d()Lf50$a;

    return-object p0
.end method
