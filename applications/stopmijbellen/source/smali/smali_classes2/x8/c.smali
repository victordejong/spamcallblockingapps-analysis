.class public Lx8/c;
.super Lx8/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lx8/b<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public d:Z

.field public final e:Lx8/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;ZLx8/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Lx8/c$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2
    iput-boolean p3, p0, Lx8/c;->d:Z

    .line 3
    iput-object p4, p0, Lx8/c;->e:Lx8/c$a;

    return-void
.end method


# virtual methods
.method public c()Lw8/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/k<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx8/b;->b:Lw8/j;

    .line 2
    iget-object v1, p0, Lx8/c;->e:Lx8/c$a;

    iget-object v2, p0, Lx8/b;->a:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lx8/c$a;->a(Ljava/lang/Class;)Ls8/g;

    move-result-object v1

    iget-boolean v2, p0, Lx8/c;->d:Z

    .line 3
    new-instance v3, Lw8/k;

    invoke-direct {v3, v0, v1, v2}, Lw8/k;-><init>(Lw8/j;Ls8/g;Z)V

    return-object v3
.end method
