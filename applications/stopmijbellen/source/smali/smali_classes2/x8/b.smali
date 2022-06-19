.class public Lx8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx8/a;
.implements Lv8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lx8/a<",
        "Lx8/b<",
        "TT;>;>;",
        "Lv8/a;"
    }
.end annotation


# static fields
.field public static final c:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Lw8/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lx8/b;

    const-string v1, "*"

    invoke-static {v1}, Lw8/j;->e(Ljava/lang/String;)Lw8/j$b;

    move-result-object v1

    invoke-virtual {v1}, Lw8/j$b;->a()Lw8/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lx8/b;-><init>(Ljava/lang/Class;Lw8/j;)V

    sput-object v0, Lx8/b;->c:Lx8/b;

    const-string v0, "?"

    .line 2
    invoke-static {v0}, Lw8/j;->e(Ljava/lang/String;)Lw8/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lw8/j$b;->a()Lw8/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lx8/b;->a:Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 6
    new-instance p1, Lw8/j$b;

    invoke-direct {p1, p2}, Lw8/j$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lw8/j$b;->a()Lw8/j;

    move-result-object p1

    iput-object p1, p0, Lx8/b;->b:Lw8/j;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lw8/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lw8/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lx8/b;->a:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lx8/b;->b:Lw8/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lw8/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lw8/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx8/b;->c()Lw8/k;

    move-result-object v0

    const-string v1, "="

    .line 2
    iput-object v1, v0, Lw8/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lw8/c;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lw8/c;->e:Z

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx8/b;->f()Lw8/j;

    move-result-object v0

    invoke-virtual {v0}, Lw8/j;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lw8/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx8/b;->f()Lw8/j;

    move-result-object v0

    .line 2
    new-instance v1, Lw8/k;

    invoke-direct {v1, v0}, Lw8/k;-><init>(Lw8/j;)V

    return-object v1
.end method

.method public d(Ljava/lang/Object;)Lw8/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lw8/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx8/b;->c()Lw8/k;

    move-result-object v0

    const-string v1, ">"

    .line 2
    iput-object v1, v0, Lw8/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lw8/c;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lw8/c;->e:Z

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Lw8/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lw8/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx8/b;->c()Lw8/k;

    move-result-object v0

    const-string v1, "="

    .line 2
    iput-object v1, v0, Lw8/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lw8/c;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lw8/c;->e:Z

    return-object v0
.end method

.method public f()Lw8/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/b;->b:Lw8/j;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Lw8/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lw8/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx8/b;->c()Lw8/k;

    move-result-object v0

    const-string v1, "!="

    .line 2
    iput-object v1, v0, Lw8/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lw8/c;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lw8/c;->e:Z

    return-object v0
.end method

.method public h()Lw8/k;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lx8/b;->c()Lw8/k;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "IS NULL"

    aput-object v3, v1, v2

    const-string v2, " %1s "

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lw8/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)Lw8/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lw8/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx8/b;->c()Lw8/k;

    move-result-object v0

    const-string v1, "<="

    .line 2
    iput-object v1, v0, Lw8/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lw8/c;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lw8/c;->e:Z

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Lw8/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lw8/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lx8/b;->c()Lw8/k;

    move-result-object v0

    const-string v1, "!="

    .line 2
    iput-object v1, v0, Lw8/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lw8/c;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lw8/c;->e:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx8/b;->f()Lw8/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lw8/j;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
