.class Ld/b/a/b/b$a;
.super Ld/b/a/b/b$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ld/b/a/b/b$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ld/b/a/b/b$c;Ld/b/a/b/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/b/b$c<",
            "TK;TV;>;",
            "Ld/b/a/b/b$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ld/b/a/b/b$e;-><init>(Ld/b/a/b/b$c;Ld/b/a/b/b$c;)V

    return-void
.end method


# virtual methods
.method c(Ld/b/a/b/b$c;)Ld/b/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/b/b$c<",
            "TK;TV;>;)",
            "Ld/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Ld/b/a/b/b$c;->e:Ld/b/a/b/b$c;

    return-object p1
.end method

.method d(Ld/b/a/b/b$c;)Ld/b/a/b/b$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b/a/b/b$c<",
            "TK;TV;>;)",
            "Ld/b/a/b/b$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Ld/b/a/b/b$c;->d:Ld/b/a/b/b$c;

    return-object p1
.end method
