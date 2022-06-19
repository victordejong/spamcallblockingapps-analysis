.class public Lscala/collection/concurrent/RDCSS_Descriptor;
.super Ljava/lang/Object;
.source "TrieMap.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00055f!B\u0001\u0003\u0001\nA!\u0001\u0005*E\u0007N\u001bv\u000cR3tGJL\u0007\u000f^8s\u0015\t\u0019A!\u0001\u0006d_:\u001cWO\u001d:f]RT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b+\rIa\u0004K\n\u0005\u0001)q\u0011\u0003\u0005\u0002\u000c\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001a\u0004\"aC\u0008\n\u0005A1!a\u0002)s_\u0012,8\r\u001e\t\u0003\u0017II!a\u0005\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u0011U\u0001!Q3A\u0005\u0002]\t1a\u001c7e\u0007\u0001)\u0012\u0001\u0007\t\u00053iar%D\u0001\u0003\u0013\tY\"AA\u0003J\u001d>$W\r\u0005\u0002\u001e=1\u0001A!B\u0010\u0001\u0005\u0004\u0001#!A&\u0012\u0005\u0005\"\u0003CA\u0006#\u0013\t\u0019cAA\u0004O_RD\u0017N\\4\u0011\u0005-)\u0013B\u0001\u0014\u0007\u0005\r\te.\u001f\t\u0003;!\"Q!\u000b\u0001C\u0002\u0001\u0012\u0011A\u0016\u0005\tW\u0001\u0011\t\u0012)A\u00051\u0005!q\u000e\u001c3!\u0011!i\u0003A!f\u0001\n\u0003q\u0013\u0001D3ya\u0016\u001cG/\u001a3nC&tW#A\u0018\u0011\te\u0001DdJ\u0005\u0003c\t\u0011\u0001\"T1j]:{G-\u001a\u0005\tg\u0001\u0011\t\u0012)A\u0005_\u0005iQ\r\u001f9fGR,G-\\1j]\u0002B\u0001\"\u000e\u0001\u0003\u0016\u0004%\taF\u0001\u0003]ZD\u0001b\u000e\u0001\u0003\u0012\u0003\u0006I\u0001G\u0001\u0004]Z\u0004\u0003\"B\u001d\u0001\t\u0003Q\u0014A\u0002\u001fj]&$h\u0008\u0006\u0003<yur\u0004\u0003B\r\u00019\u001dBQ!\u0006\u001dA\u0002aAQ!\u000c\u001dA\u0002=BQ!\u000e\u001dA\u0002aAq\u0001\u0011\u0001A\u0002\u0013\u0005\u0011)A\u0005d_6l\u0017\u000e\u001e;fIV\t!\t\u0005\u0002\u000c\u0007&\u0011AI\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u001d1\u0005\u00011A\u0005\u0002\u001d\u000bQbY8n[&$H/\u001a3`I\u0015\u000cHC\u0001%L!\tY\u0011*\u0003\u0002K\r\t!QK\\5u\u0011\u001daU)!AA\u0002\t\u000b1\u0001\u001f\u00132\u0011\u0019q\u0005\u0001)Q\u0005\u0005\u0006Q1m\\7nSR$X\r\u001a\u0011)\u00055\u0003\u0006CA\u0006R\u0013\t\u0011fA\u0001\u0005w_2\u000cG/\u001b7f\u0011\u001d!\u0006!!A\u0005\u0002U\u000bAaY8qsV\u0019a+W.\u0015\t]cf\u000c\u0019\t\u00053\u0001A&\u000c\u0005\u0002\u001e3\u0012)qd\u0015b\u0001AA\u0011Qd\u0017\u0003\u0006SM\u0013\r\u0001\t\u0005\u0008+M\u0003\n\u00111\u0001^!\u0011I\"\u0004\u0017.\t\u000f5\u001a\u0006\u0013!a\u0001?B!\u0011\u0004\r-[\u0011\u001d)4\u000b%AA\u0002uCqA\u0019\u0001\u0012\u0002\u0013\u00051-\u0001\u0008d_BLH\u0005Z3gCVdG\u000fJ\u0019\u0016\u0007\u0011|\u0007/F\u0001fU\tAbmK\u0001h!\tAW.D\u0001j\u0015\tQ7.A\u0005v]\u000eDWmY6fI*\u0011ANB\u0001\u000bC:tw\u000e^1uS>t\u0017B\u00018j\u0005E)hn\u00195fG.,GMV1sS\u0006t7-\u001a\u0003\u0006?\u0005\u0014\r\u0001\t\u0003\u0006S\u0005\u0014\r\u0001\t\u0005\u0008e\u0002\t\n\u0011\"\u0001t\u00039\u0019w\u000e]=%I\u00164\u0017-\u001e7uII*2\u0001\u001e<x+\u0005)(FA\u0018g\t\u0015y\u0012O1\u0001!\t\u0015I\u0013O1\u0001!\u0011\u001dI\u0008!%A\u0005\u0002i\u000cabY8qs\u0012\"WMZ1vYR$3\'F\u0002ewr$Qa\u0008=C\u0002\u0001\"Q!\u000b=C\u0002\u0001BqA \u0001\u0002\u0002\u0013\u0005s0A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u0003\u0003\u0003\u0001B!a\u0001\u0002\u000e5\u0011\u0011Q\u0001\u0006\u0005\u0003\u000f\tI!\u0001\u0003mC:<\'BAA\u0006\u0003\u0011Q\u0017M^1\n\t\u0005=\u0011Q\u0001\u0002\u0007\'R\u0014\u0018N\\4\t\u0013\u0005M\u0001!!A\u0005\u0002\u0005U\u0011\u0001\u00049s_\u0012,8\r^!sSRLXCAA\u000c!\rY\u0011\u0011D\u0005\u0004\u000371!aA%oi\"I\u0011q\u0004\u0001\u0002\u0002\u0013\u0005\u0011\u0011E\u0001\u000faJ|G-^2u\u000b2,W.\u001a8u)\r!\u00131\u0005\u0005\n\u0019\u0006u\u0011\u0011!a\u0001\u0003/A\u0011\"a\n\u0001\u0003\u0003%\t%!\u000b\u0002\u001fA\u0014x\u000eZ;di&#XM]1u_J,\"!a\u000b\u0011\u000b\u00055\u0012q\u0006\u0013\u000e\u0003\u0011I1!!\r\u0005\u0005!IE/\u001a:bi>\u0014\u0008\"CA\u001b\u0001\u0005\u0005I\u0011AA\u001c\u0003!\u0019\u0017M\\#rk\u0006dGc\u0001\"\u0002:!AA*a\r\u0002\u0002\u0003\u0007A\u0005C\u0005\u0002>\u0001\t\t\u0011\"\u0011\u0002@\u0005A\u0001.Y:i\u0007>$W\r\u0006\u0002\u0002\u0018!I\u00111\t\u0001\u0002\u0002\u0013\u0005\u0013QI\u0001\ti>\u001cFO]5oOR\u0011\u0011\u0011\u0001\u0005\n\u0003\u0013\u0002\u0011\u0011!C!\u0003\u0017\na!Z9vC2\u001cHc\u0001\"\u0002N!AA*a\u0012\u0002\u0002\u0003\u0007Ae\u0002\u0006\u0002R\t\t\t\u0011#\u0001\u0003\u0003\'\n\u0001C\u0015#D\'N{F)Z:de&\u0004Ho\u001c:\u0011\u0007e\t)FB\u0005\u0002\u0005\u0005\u0005\t\u0012\u0001\u0002\u0002XM!\u0011Q\u000b\u0006\u0012\u0011\u001dI\u0014Q\u000bC\u0001\u00037\"\"!a\u0015\t\u0015\u0005\r\u0013QKA\u0001\n\u000b\n)\u0005\u0003\u0006\u0002b\u0005U\u0013\u0011!CA\u0003G\nQ!\u00199qYf,b!!\u001a\u0002l\u0005=D\u0003CA4\u0003c\n)(!\u001f\u0011\re\u0001\u0011\u0011NA7!\ri\u00121\u000e\u0003\u0007?\u0005}#\u0019\u0001\u0011\u0011\u0007u\ty\u0007\u0002\u0004*\u0003?\u0012\r\u0001\t\u0005\u0008+\u0005}\u0003\u0019AA:!\u0019I\"$!\u001b\u0002n!9Q&a\u0018A\u0002\u0005]\u0004CB\r1\u0003S\ni\u0007C\u00046\u0003?\u0002\r!a\u001d\t\u0015\u0005u\u0014QKA\u0001\n\u0003\u000by(A\u0004v]\u0006\u0004\u0008\u000f\\=\u0016\r\u0005\u0005\u00151SAL)\u0011\t\u0019)a\'\u0011\u000b-\t))!#\n\u0007\u0005\u001deA\u0001\u0004PaRLwN\u001c\t\n\u0017\u0005-\u0015qRAM\u0003\u001fK1!!$\u0007\u0005\u0019!V\u000f\u001d7fgA1\u0011DGAI\u0003+\u00032!HAJ\t\u0019y\u00121\u0010b\u0001AA\u0019Q$a&\u0005\r%\nYH1\u0001!!\u0019I\u0002\'!%\u0002\u0016\"Q\u0011QTA>\u0003\u0003\u0005\r!a(\u0002\u0007a$\u0003\u0007\u0005\u0004\u001a\u0001\u0005E\u0015Q\u0013\u0005\u000b\u0003G\u000b)&!A\u0005\n\u0005\u0015\u0016a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"!a*\u0011\t\u0005\r\u0011\u0011V\u0005\u0005\u0003W\u000b)A\u0001\u0004PE*,7\r\u001e"
.end annotation


# instance fields
.field private volatile committed:Z

.field private final expectedmain:Lscala/collection/concurrent/MainNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final nv:Lscala/collection/concurrent/INode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final old:Lscala/collection/concurrent/INode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->old:Lscala/collection/concurrent/INode;

    iput-object p2, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->expectedmain:Lscala/collection/concurrent/MainNode;

    iput-object p3, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->nv:Lscala/collection/concurrent/INode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    const/4 p1, 0x0

    .line 615
    iput-boolean p1, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->committed:Z

    return-void
.end method

.method public static apply(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)Lscala/collection/concurrent/RDCSS_Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/RDCSS_Descriptor<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/concurrent/RDCSS_Descriptor$;->MODULE$:Lscala/collection/concurrent/RDCSS_Descriptor$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/concurrent/RDCSS_Descriptor$;->apply(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)Lscala/collection/concurrent/RDCSS_Descriptor;

    move-result-object p0

    return-object p0
.end method

.method public static unapply(Lscala/collection/concurrent/RDCSS_Descriptor;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/concurrent/RDCSS_Descriptor<",
            "TK;TV;>;)",
            "Lscala/Option<",
            "Lscala/Tuple3<",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/concurrent/RDCSS_Descriptor$;->MODULE$:Lscala/collection/concurrent/RDCSS_Descriptor$;

    invoke-virtual {v0, p0}, Lscala/collection/concurrent/RDCSS_Descriptor$;->unapply(Lscala/collection/concurrent/RDCSS_Descriptor;)Lscala/Option;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 614
    instance-of p1, p1, Lscala/collection/concurrent/RDCSS_Descriptor;

    return p1
.end method

.method public committed()Z
    .locals 1

    .line 615
    iget-boolean v0, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->committed:Z

    return v0
.end method

.method public committed_$eq(Z)V
    .locals 0

    .line 615
    iput-boolean p1, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->committed:Z

    return-void
.end method

.method public copy(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)Lscala/collection/concurrent/RDCSS_Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;)",
            "Lscala/collection/concurrent/RDCSS_Descriptor<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    new-instance v0, Lscala/collection/concurrent/RDCSS_Descriptor;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/concurrent/RDCSS_Descriptor;-><init>(Lscala/collection/concurrent/INode;Lscala/collection/concurrent/MainNode;Lscala/collection/concurrent/INode;)V

    return-object v0
.end method

.method public copy$default$1()Lscala/collection/concurrent/INode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->old()Lscala/collection/concurrent/INode;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2()Lscala/collection/concurrent/MainNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->expectedmain()Lscala/collection/concurrent/MainNode;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$3()Lscala/collection/concurrent/INode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->nv()Lscala/collection/concurrent/INode;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_7

    .line 614
    instance-of v2, p1, Lscala/collection/concurrent/RDCSS_Descriptor;

    if-eqz v2, :cond_8

    check-cast p1, Lscala/collection/concurrent/RDCSS_Descriptor;

    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->old()Lscala/collection/concurrent/INode;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/concurrent/RDCSS_Descriptor;->old()Lscala/collection/concurrent/INode;

    move-result-object v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->expectedmain()Lscala/collection/concurrent/MainNode;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/concurrent/RDCSS_Descriptor;->expectedmain()Lscala/collection/concurrent/MainNode;

    move-result-object v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->nv()Lscala/collection/concurrent/INode;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/concurrent/RDCSS_Descriptor;->nv()Lscala/collection/concurrent/INode;

    move-result-object v3

    if-nez v2, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p1, p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public expectedmain()Lscala/collection/concurrent/MainNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/MainNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->expectedmain:Lscala/collection/concurrent/MainNode;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 614
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_hashCode(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public nv()Lscala/collection/concurrent/INode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->nv:Lscala/collection/concurrent/INode;

    return-object v0
.end method

.method public old()Lscala/collection/concurrent/INode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lscala/collection/concurrent/RDCSS_Descriptor;->old:Lscala/collection/concurrent/INode;

    return-object v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->nv()Lscala/collection/concurrent/INode;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->expectedmain()Lscala/collection/concurrent/MainNode;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lscala/collection/concurrent/RDCSS_Descriptor;->old()Lscala/collection/concurrent/INode;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 614
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "RDCSS_Descriptor"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 614
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
