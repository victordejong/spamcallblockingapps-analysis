.class public Lz2$b;
.super Lz2$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lz2$e<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lz2$c;Lz2$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2$c<",
            "TK;TV;>;",
            "Lz2$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lz2$e;-><init>(Lz2$c;Lz2$c;)V

    return-void
.end method


# virtual methods
.method public b(Lz2$c;)Lz2$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2$c<",
            "TK;TV;>;)",
            "Lz2$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Lz2$c;->c:Lz2$c;

    return-object p1
.end method

.method public c(Lz2$c;)Lz2$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2$c<",
            "TK;TV;>;)",
            "Lz2$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p1, p1, Lz2$c;->d:Lz2$c;

    return-object p1
.end method
