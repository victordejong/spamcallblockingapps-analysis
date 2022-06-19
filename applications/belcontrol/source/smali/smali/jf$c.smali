.class public Ljf$c;
.super Ldf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final f:Lef$b;


# instance fields
.field public c:Li4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li4<",
            "Ljf$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljf$c$a;

    invoke-direct {v0}, Ljf$c$a;-><init>()V

    sput-object v0, Ljf$c;->f:Lef$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ldf;-><init>()V

    new-instance v0, Li4;

    invoke-direct {v0}, Li4;-><init>()V

    iput-object v0, p0, Ljf$c;->c:Li4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljf$c;->d:Z

    return-void
.end method

.method public static j(Lgf;)Ljf$c;
    .locals 2

    new-instance v0, Lef;

    sget-object v1, Ljf$c;->f:Lef$b;

    invoke-direct {v0, p0, v1}, Lef;-><init>(Lgf;Lef$b;)V

    const-class p0, Ljf$c;

    invoke-virtual {v0, p0}, Lef;->a(Ljava/lang/Class;)Ldf;

    move-result-object p0

    check-cast p0, Ljf$c;

    return-object p0
.end method


# virtual methods
.method public e()V
    .locals 4

    invoke-super {p0}, Ldf;->e()V

    iget-object v0, p0, Ljf$c;->c:Li4;

    invoke-virtual {v0}, Li4;->n()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ljf$c;->c:Li4;

    invoke-virtual {v2, v1}, Li4;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljf$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljf$a;->m(Z)Llf;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljf$c;->c:Li4;

    invoke-virtual {v0}, Li4;->c()V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Ljf$c;->c:Li4;

    invoke-virtual {v0}, Li4;->n()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljf$c;->c:Li4;

    invoke-virtual {v2}, Li4;->n()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljf$c;->c:Li4;

    invoke-virtual {v2, v1}, Li4;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljf$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Ljf$c;->c:Li4;

    invoke-virtual {v3, v1}, Li4;->k(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljf$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2, p3, p4}, Ljf$a;->n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljf$c;->d:Z

    return-void
.end method

.method public k(I)Ljf$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljf$a<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Ljf$c;->c:Li4;

    invoke-virtual {v0, p1}, Li4;->g(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljf$a;

    return-object p1
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Ljf$c;->d:Z

    return v0
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Ljf$c;->c:Li4;

    invoke-virtual {v0}, Li4;->n()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Ljf$c;->c:Li4;

    invoke-virtual {v2, v1}, Li4;->o(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljf$a;

    invoke-virtual {v2}, Ljf$a;->p()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(ILjf$a;)V
    .locals 1

    iget-object v0, p0, Ljf$c;->c:Li4;

    invoke-virtual {v0, p1, p2}, Li4;->l(ILjava/lang/Object;)V

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljf$c;->d:Z

    return-void
.end method
