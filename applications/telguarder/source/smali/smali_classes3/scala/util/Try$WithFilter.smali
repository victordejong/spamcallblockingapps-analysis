.class public Lscala/util/Try$WithFilter;
.super Ljava/lang/Object;
.source "Try.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/Try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WithFilter"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/util/Try;

.field public final scala$util$Try$WithFilter$$p:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/util/Try;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try<",
            "TT;>;",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p2, p0, Lscala/util/Try$WithFilter;->scala$util$Try$WithFilter$$p:Lscala/Function1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/Try$WithFilter;->$outer:Lscala/util/Try;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flatMap(Lscala/Function1;)Lscala/util/Try;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/util/Try<",
            "TU;>;>;)",
            "Lscala/util/Try<",
            "TU;>;"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lscala/util/Try$WithFilter;->scala$util$Try$WithFilter$$$outer()Lscala/util/Try;

    move-result-object v0

    iget-object v1, p0, Lscala/util/Try$WithFilter;->scala$util$Try$WithFilter$$p:Lscala/Function1;

    invoke-virtual {v0, v1}, Lscala/util/Try;->filter(Lscala/Function1;)Lscala/util/Try;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/util/Try;->flatMap(Lscala/Function1;)Lscala/util/Try;

    move-result-object p1

    return-object p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lscala/util/Try$WithFilter;->scala$util$Try$WithFilter$$$outer()Lscala/util/Try;

    move-result-object v0

    iget-object v1, p0, Lscala/util/Try$WithFilter;->scala$util$Try$WithFilter$$p:Lscala/Function1;

    invoke-virtual {v0, v1}, Lscala/util/Try;->filter(Lscala/Function1;)Lscala/util/Try;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/util/Try;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public map(Lscala/Function1;)Lscala/util/Try;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TU;>;)",
            "Lscala/util/Try<",
            "TU;>;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lscala/util/Try$WithFilter;->scala$util$Try$WithFilter$$$outer()Lscala/util/Try;

    move-result-object v0

    iget-object v1, p0, Lscala/util/Try$WithFilter;->scala$util$Try$WithFilter$$p:Lscala/Function1;

    invoke-virtual {v0, v1}, Lscala/util/Try;->filter(Lscala/Function1;)Lscala/util/Try;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/util/Try;->map(Lscala/Function1;)Lscala/util/Try;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$util$Try$WithFilter$$$outer()Lscala/util/Try;
    .locals 1

    .line 137
    iget-object v0, p0, Lscala/util/Try$WithFilter;->$outer:Lscala/util/Try;

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/util/Try$WithFilter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/util/Try<",
            "TT;>.WithFilter;"
        }
    .end annotation

    .line 141
    new-instance v0, Lscala/util/Try$WithFilter;

    invoke-virtual {p0}, Lscala/util/Try$WithFilter;->scala$util$Try$WithFilter$$$outer()Lscala/util/Try;

    move-result-object v1

    new-instance v2, Lscala/util/Try$WithFilter$$anonfun$withFilter$1;

    invoke-direct {v2, p0, p1}, Lscala/util/Try$WithFilter$$anonfun$withFilter$1;-><init>(Lscala/util/Try$WithFilter;Lscala/Function1;)V

    invoke-direct {v0, v1, v2}, Lscala/util/Try$WithFilter;-><init>(Lscala/util/Try;Lscala/Function1;)V

    return-object v0
.end method
