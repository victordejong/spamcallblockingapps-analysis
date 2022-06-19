.class public Lscala/collection/immutable/ListSet;
.super Lscala/collection/AbstractSet;
.source "ListSet.scala"

# interfaces
.implements Lscala/collection/immutable/Set;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/ListSet$Node;,
        Lscala/collection/immutable/ListSet$EmptyListSet$;,
        Lscala/collection/immutable/ListSet$ListSetBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSet<",
        "TA;>;",
        "Lscala/collection/immutable/Set<",
        "TA;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\u001ds!B\u0001\u0003\u0011\u0003I\u0011a\u0002\'jgR\u001cV\r\u001e\u0006\u0003\u0007\u0011\t\u0011\"[7nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0011\u0005)YQ\"\u0001\u0002\u0007\u000b1\u0011\u0001\u0012A\u0007\u0003\u000f1K7\u000f^*fiN\u00191B\u0004\u001a\u0011\u0007=\u0011B#D\u0001\u0011\u0015\t\tB!A\u0004hK:,\'/[2\n\u0005M\u0001\"aE%n[V$\u0018M\u00197f\'\u0016$h)Y2u_JL\u0008C\u0001\u0006\u0016\r\u0015a!\u0001\u0001\u000c2+\t9bd\u0005\u0004\u00161!ZcF\r\t\u00043iaR\"\u0001\u0003\n\u0005m!!aC!cgR\u0014\u0018m\u0019;TKR\u0004\"!\u0008\u0010\r\u0001\u0011)q$\u0006b\u0001A\t\t\u0011)\u0005\u0002\"KA\u0011!eI\u0007\u0002\r%\u0011AE\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t\u0011c%\u0003\u0002(\r\t\u0019\u0011I\\=\u0011\u0007)IC$\u0003\u0002+\u0005\t\u00191+\u001a;\u0011\t=aC\u0004F\u0005\u0003[A\u0011!cR3oKJL7mU3u)\u0016l\u0007\u000f\\1uKB!\u0011d\u000c\u000f2\u0013\t\u0001DAA\u0004TKRd\u0015n[3\u0011\u0007))B\u0004\u0005\u0002#g%\u0011AG\u0002\u0002\r\'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\u0006mU!\taN\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003EBQ!O\u000b\u0005Bi\n\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003m\u00022a\u0004\u001f\u0015\u0013\ti\u0004C\u0001\tHK:,\'/[2D_6\u0004\u0018M\\5p]\")q(\u0006C!\u0001\u0006!1/\u001b>f+\u0005\t\u0005C\u0001\u0012C\u0013\t\u0019eAA\u0002J]RDQ!R\u000b\u0005B\u0019\u000bq![:F[B$\u00180F\u0001H!\t\u0011\u0003*\u0003\u0002J\r\t9!i\\8mK\u0006t\u0007\"B&\u0016\t\u0003a\u0015\u0001C2p]R\u000c\u0017N\\:\u0015\u0005\u001dk\u0005\"\u0002(K\u0001\u0004a\u0012\u0001B3mK6DQ\u0001U\u000b\u0005\u0002E\u000bQ\u0001\n9mkN$\"!\r*\t\u000b9{\u0005\u0019\u0001\u000f\t\u000bQ+B\u0011A+\u0002\r\u0011j\u0017N\\;t)\t\td\u000bC\u0003O\'\u0002\u0007A\u0004C\u0003Y+\u0011\u0005\u0013,\u0001\u0006%a2,8\u000f\n9mkN$\"!\r.\t\u000bm;\u0006\u0019\u0001/\u0002\u0005a\u001c\u0008cA\r^9%\u0011a\u000c\u0002\u0002\u0013\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003a+\u0011\u0005\u0011-\u0001\u0005ji\u0016\u0014\u0018\r^8s+\u0005\u0011\u0007cA\rd9%\u0011A\r\u0002\u0002\t\u0013R,\'/\u0019;pe\")a-\u0006C!O\u0006!\u0001.Z1e+\u0005a\u0002\"B5\u0016\t\u0003R\u0017\u0001\u0002;bS2,\u0012!\r\u0005\u0006YV!\t%\\\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0002]B\u0011q\u000e^\u0007\u0002a*\u0011\u0011O]\u0001\u0005Y\u0006twMC\u0001t\u0003\u0011Q\u0017M^1\n\u0005U\u0004(AB*ue&tw\rC\u0003x+\u0011\u0005\u00030A\u0003u_N+G/\u0006\u0002zyV\t!\u0010E\u0002\u000bSm\u0004\"!\u0008?\u0005\u000bu4(\u0019\u0001@\u0003\u0003\t\u000b\"\u0001H\u0013)\u000fY\u000c\t!a\u0002\u0002\u000cA\u0019!%a\u0001\n\u0007\u0005\u0015aA\u0001\u000beKB\u0014XmY1uK\u0012|e/\u001a:sS\u0012LgnZ\u0011\u0003\u0003\u0013\ta*S7nkR\u000c\'\r\\3!g\u0016$8\u000fI:i_VdG\r\t3pA9|G\u000f[5oO\u0002zg\u000e\t;p\'\u0016$\u0008EY;uAI,G/\u001e:oAQDW-\\:fYZ,7\u000fI2bgR\u0004\u0013m\u001d\u0011bAM+GOL\u0011\u0003\u0003\u001b\taA\r\u00182c9\u0002dABA\t+!\t\u0019B\u0001\u0003O_\u0012,7\u0003BA\u0008cIB\u0011BZA\u0008\u0005\u000b\u0007I\u0011I4\t\u0015\u0005e\u0011q\u0002B\u0001B\u0003%A$A\u0003iK\u0006$\u0007\u0005C\u00047\u0003\u001f!\t!!\u0008\u0015\t\u0005}\u00111\u0005\t\u0005\u0003C\ty!D\u0001\u0016\u0011\u00191\u00171\u0004a\u00019!1q(a\u0004\u0005B\u0001C\u0001\"!\u000b\u0002\u0010\u0011%\u00111F\u0001\rg&TX-\u00138uKJt\u0017\r\u001c\u000b\u0006\u0003\u00065\u0012\u0011\u0007\u0005\u0008\u0003_\t9\u00031\u00012\u0003\u0005q\u0007bBA\u001a\u0003O\u0001\r!Q\u0001\u0004C\u000e\u001c\u0007\u0006BA\u0014\u0003o\u0001B!!\u000f\u0002@5\u0011\u00111\u0008\u0006\u0004\u0003{1\u0011AC1o]>$\u0018\r^5p]&!\u0011\u0011IA\u001e\u0005\u001d!\u0018-\u001b7sK\u000eDa!RA\u0008\t\u00032\u0005bB&\u0002\u0010\u0011\u0005\u0013q\t\u000b\u0004\u000f\u0006%\u0003bBA&\u0003\u000b\u0002\r\u0001H\u0001\u0002K\"A\u0011qJA\u0008\t\u0013\t\t&\u0001\td_:$\u0018-\u001b8t\u0013:$XM\u001d8bYR)q)a\u0015\u0002V!9\u0011qFA\'\u0001\u0004\t\u0004bBA&\u0003\u001b\u0002\r\u0001\u0008\u0015\u0005\u0003\u001b\n9\u0004C\u0004Q\u0003\u001f!\t%a\u0017\u0015\u0007E\ni\u0006C\u0004\u0002L\u0005e\u0003\u0019\u0001\u000f\t\u000fQ\u000by\u0001\"\u0011\u0002bQ\u0019\u0011\'a\u0019\t\u000f\u0005-\u0013q\u000ca\u00019!1\u0011.a\u0004\u0005B)DA\"!\u001b\u0002\u0010\t\u0005\t\u0011!C!+)\u000c1g]2bY\u0006$3m\u001c7mK\u000e$\u0018n\u001c8%S6lW\u000f^1cY\u0016$C*[:u\'\u0016$H\u0005J;oG\",7m[3e?>,H/\u001a:\t\u0019\u00055TC!A\u0001\u0002\u0013\u0005Q#a\u001c\u0002gM\u001c\u0017\r\\1%G>dG.Z2uS>tG%[7nkR\u000c\'\r\\3%\u0019&\u001cHoU3uI\u0011*hn\u00195fG.,Gm\u0018\u0013qYV\u001cHcA\u0019\u0002r!9\u00111JA6\u0001\u0004a\u0002bCA5+\t\u0005\t\u0011!C\u0001+)Ds!FA<\u0003{\nY\u0001E\u0002#\u0003sJ1!a\u001f\u0007\u0005U!W\r\u001d:fG\u0006$X\rZ%oQ\u0016\u0014\u0018\u000e^1oG\u0016\u000c#!a \u0002#RCW\rI:f[\u0006tG/[2tA=4\u0007%[7nkR\u000c\'\r\\3!G>dG.Z2uS>t7\u000fI7bW\u0016\u001c\u0008%\u001b8iKJLG/\u001b8hA\u0019\u0014x.\u001c\u0011MSN$8+\u001a;!KJ\u0014xN]\u0017qe>tWM\u000c\u0005\u0007m-!\t!a!\u0015\u0003%Aq!a\"\u000c\t\u0007\tI)\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0003\u0002\u000c\u0006uUCAAG!%y\u0011qRAJ\u00037\u000by*C\u0002\u0002\u0012B\u0011AbQ1o\u0005VLG\u000e\u001a$s_6\u0004B!!&\u0002\u00186\t1\"C\u0002\u0002\u001ar\u0012AaQ8mYB\u0019Q$!(\u0005\r}\t)I1\u0001!!\u0011QQ#a\'\t\u000f\u0005\r6\u0002\"\u0011\u0002&\u0006Qa.Z<Ck&dG-\u001a:\u0016\t\u0005\u001d\u0016qW\u000b\u0003\u0003S\u0003\u0002\"a+\u00022\u0006U\u0016\u0011X\u0007\u0003\u0003[S1!a,\u0005\u0003\u001diW\u000f^1cY\u0016LA!a-\u0002.\n9!)^5mI\u0016\u0014\u0008cA\u000f\u00028\u00121q$!)C\u0002\u0001\u0002BAC\u000b\u00026\u001e9\u0011QX\u0006\t\n\u0005}\u0016\u0001D#naRLH*[:u\'\u0016$\u0008\u0003BAK\u0003\u00034q!a1\u000c\u0011\u0013\t)M\u0001\u0007F[B$\u0018\u0010T5tiN+Go\u0005\u0003\u0002B\u0006\u001d\u0007c\u0001\u0006\u0016K!9a\'!1\u0005\u0002\u0005-GCAA`\u0011)\ty-!1\u0002\u0002\u0013%\u0011\u0011[\u0001\u000ce\u0016\u000cGMU3t_24X\r\u0006\u0002\u0002TB\u0019q.!6\n\u0007\u0005]\u0007O\u0001\u0004PE*,7\r\u001e\u0005\t\u00037\\A\u0011\u0001\u0003\u0002^\u0006iQ-\u001c9us&s7\u000f^1oG\u0016,\"!a2\u0007\r\u0005\u00058\u0002AAr\u00059a\u0015n\u001d;TKR\u0014U/\u001b7eKJ,B!!:\u0002rN1\u0011q\\At\u0003[\u00042AIAu\u0013\r\tYO\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0011\u0005-\u0016\u0011WAx\u0003k\u00042!HAy\t\u001d\t\u00190a8C\u0002\u0001\u0012A!\u00127f[B!!\"FAx\u0011-\tI0a8\u0003\u0002\u0003\u0006I!!>\u0002\u000f%t\u0017\u000e^5bY\"9a\'a8\u0005\u0002\u0005uH\u0003BA\u0000\u0005\u0003\u0001b!!&\u0002`\u0006=\u0008\u0002CA}\u0003w\u0004\r!!>\t\u000fY\ny\u000e\"\u0001\u0003\u0006Q\u0011\u0011q \u0005\u000b\u0005\u0013\tyN1A\u0005\u0012\t-\u0011!B3mK6\u001cXC\u0001B\u0007!\u0019\tYKa\u0004\u0002p&!!\u0011CAW\u0005)a\u0015n\u001d;Ck\u001a4WM\u001d\u0005\n\u0005+\ty\u000e)A\u0005\u0005\u001b\ta!\u001a7f[N\u0004\u0003B\u0003B\r\u0003?\u0014\r\u0011\"\u0005\u0003\u001c\u0005!1/Z3o+\t\u0011i\u0002\u0005\u0004\u0002,\n}\u0011q^\u0005\u0005\u0005C\tiKA\u0004ICND7+\u001a;\t\u0013\t\u0015\u0012q\u001cQ\u0001\n\tu\u0011!B:fK:\u0004\u0003\u0002\u0003B\u0015\u0003?$\tAa\u000b\u0002\u0011\u0011\u0002H.^:%KF$BA!\u000c\u000305\u0011\u0011q\u001c\u0005\t\u0005c\u00119\u00031\u0001\u0002p\u0006\t\u0001\u0010\u0003\u0005\u00036\u0005}G\u0011\u0001B\u001c\u0003\u0015\u0019G.Z1s)\t\u0011I\u0004E\u0002#\u0005wI1A!\u0010\u0007\u0005\u0011)f.\u001b;\t\u0011\t\u0005\u0013q\u001cC\u0001\u0005\u0007\naA]3tk2$HCAA{\u0011%\tymCA\u0001\n\u0013\t\t\u000e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    return-void
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/immutable/ListSet<",
            "*>;TA;",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet$;->setCanBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lscala/collection/immutable/ListSet$Node;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/ListSet$Node;-><init>(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lscala/collection/immutable/ListSet$ListSetBuilder;

    invoke-direct {v0, p0}, Lscala/collection/immutable/ListSet$ListSetBuilder;-><init>(Lscala/collection/immutable/ListSet;)V

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListSet$ListSetBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/ListSet$ListSetBuilder;

    invoke-virtual {p1}, Lscala/collection/immutable/ListSet$ListSetBuilder;->result()Lscala/collection/immutable/ListSet;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/ListSet;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public head()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Set has no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lscala/collection/immutable/ListSet$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/ListSet$$anon$1;-><init>(Lscala/collection/immutable/ListSet;)V

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/immutable/ParSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->parCombiner(Lscala/collection/immutable/Set;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public scala$collection$immutable$ListSet$$unchecked_$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lscala/collection/immutable/ListSet$Node;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/ListSet$Node;-><init>(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method public scala$collection$immutable$ListSet$$unchecked_outer()Lscala/collection/immutable/ListSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Empty ListSet has no outer pointer"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ListSet"

    return-object v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->tail()Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/ListSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Next of an empty set"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListSet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
