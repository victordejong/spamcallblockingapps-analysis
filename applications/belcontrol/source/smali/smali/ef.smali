.class public Lef;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef$a;,
        Lef$d;,
        Lef$c;,
        Lef$e;,
        Lef$b;
    }
.end annotation


# instance fields
.field public final a:Lef$b;

.field public final b:Lgf;


# direct methods
.method public constructor <init>(Lgf;Lef$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lef;->a:Lef$b;

    iput-object p1, p0, Lef;->b:Lgf;

    return-void
.end method

.method public constructor <init>(Lhf;)V
    .locals 2

    invoke-interface {p1}, Lhf;->getViewModelStore()Lgf;

    move-result-object v0

    instance-of v1, p1, Lle;

    if-eqz v1, :cond_0

    check-cast p1, Lle;

    invoke-interface {p1}, Lle;->getDefaultViewModelProviderFactory()Lef$b;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lef$d;->b()Lef$d;

    move-result-object p1

    :goto_0
    invoke-direct {p0, v0, p1}, Lef;-><init>(Lgf;Lef$b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ldf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ldf;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lef;->b(Ljava/lang/String;Ljava/lang/Class;)Ldf;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Ldf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ldf;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lef;->b:Lgf;

    invoke-virtual {v0, p1}, Lgf;->b(Ljava/lang/String;)Ldf;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lef;->a:Lef$b;

    instance-of p2, p1, Lef$e;

    if-eqz p2, :cond_0

    check-cast p1, Lef$e;

    invoke-virtual {p1, v0}, Lef$e;->b(Ldf;)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lef;->a:Lef$b;

    instance-of v1, v0, Lef$c;

    if-eqz v1, :cond_2

    check-cast v0, Lef$c;

    invoke-virtual {v0, p1, p2}, Lef$c;->c(Ljava/lang/String;Ljava/lang/Class;)Ldf;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Lef$b;->a(Ljava/lang/Class;)Ldf;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lef;->b:Lgf;

    invoke-virtual {v0, p1, p2}, Lgf;->d(Ljava/lang/String;Ldf;)V

    return-object p2
.end method
