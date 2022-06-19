.class public abstract Lscala/collection/generic/GenericCompanion;
.super Ljava/lang/Object;
.source "GenericCompanion.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC::",
        "Lscala/collection/GenTraversable<",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001A3Q!\u0001\u0002\u0002\u0002%\u0011\u0001cR3oKJL7mQ8na\u0006t\u0017n\u001c8\u000b\u0005\r!\u0011aB4f]\u0016\u0014\u0018n\u0019\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0015Y\u0019\"\u0001A\u0006\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rC\u0003\u0011\u0001\u0011\u0005\u0011#\u0001\u0004=S:LGO\u0010\u000b\u0002%A\u00191\u0003\u0001\u000b\u000e\u0003\t\u0001\"!\u0006\u000c\r\u0001\u00111q\u0003\u0001CC\u0002a\u0011!aQ\"\u0016\u0005e\u0011\u0013C\u0001\u000e\u001e!\ta1$\u0003\u0002\u001d\r\t9aj\u001c;iS:<\u0007c\u0001\u0010 C5\tA!\u0003\u0002!\t\tqq)\u001a8Ue\u00064XM]:bE2,\u0007CA\u000b#\t\u0015\u0019cC1\u0001%\u0005\u0005A\u0016C\u0001\u000e&!\taa%\u0003\u0002(\r\t\u0019\u0011I\\=\u0006\r%\u0002\u0001\u0015!\u0005+\u0005\u0011\u0019u\u000e\u001c71\u0005-j\u0003cA\u000b\u0017YA\u0011Q#\u000c\u0003\n]!\n\t\u0011!A\u0003\u0002\u0011\u00121a\u0018\u00132\u0011\u0015\u0001\u0004A\"\u00012\u0003)qWm\u001e\"vS2$WM]\u000b\u0003ei*\u0012a\r\t\u0005i]JD(D\u00016\u0015\t1D!A\u0004nkR\u000c\'\r\\3\n\u0005a*$a\u0002\"vS2$WM\u001d\t\u0003+i\"QaO\u0018C\u0002\u0011\u0012\u0011!\u0011\t\u0004+YI\u0004\"\u0002 \u0001\t\u0003y\u0014!B3naRLXC\u0001!D+\u0005\t\u0005cA\u000b\u0017\u0005B\u0011Qc\u0011\u0003\u0006wu\u0012\r\u0001\n\u0005\u0006\u000b\u0002!\tAR\u0001\u0006CB\u0004H._\u000b\u0003\u000f*#\"\u0001S&\u0011\u0007U1\u0012\n\u0005\u0002\u0016\u0015\u0012)1\u0008\u0012b\u0001I!)A\n\u0012a\u0001\u001b\u0006)Q\r\\3ngB\u0019ABT%\n\u0005=3!A\u0003\u001fsKB,\u0017\r^3e}\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Lscala/collection/Seq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->empty()Lscala/collection/GenTraversable;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 50
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/GenTraversable;

    :goto_0
    return-object p1
.end method

.method public empty()Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()TCC;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversable;

    return-object v0
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation
.end method
