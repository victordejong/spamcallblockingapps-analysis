.class public final Lscala/collection/mutable/ListBuffer;
.super Lscala/collection/mutable/AbstractBuffer;
.source "ListBuffer.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/generic/SeqForwarder;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractBuffer<",
        "TA;>;",
        "Lscala/collection/mutable/Builder<",
        "TA;",
        "Lscala/collection/immutable/List<",
        "TA;>;>;",
        "Lscala/collection/generic/SeqForwarder<",
        "TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t-d\u0001B\u0001\u0003\u0005%\u0011!\u0002T5ti\n+hMZ3s\u0015\t\u0019A!A\u0004nkR\u000c\'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2\u0003\u0003\u0001\u000c7y)\u0013FM\u001b\u0011\u00071iq\"D\u0001\u0003\u0013\tq!A\u0001\u0008BEN$(/Y2u\u0005V4g-\u001a:\u0011\u0005A\tB\u0002\u0001\u0003\u0006%\u0001\u0011\ra\u0005\u0002\u0002\u0003F\u0011A\u0003\u0007\t\u0003+Yi\u0011AB\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00163%\u0011!D\u0002\u0002\u0004\u0003:L\u0008c\u0001\u0007\u001d\u001f%\u0011QD\u0001\u0002\u0007\u0005V4g-\u001a:\u0011\t}\u0011s\u0002J\u0007\u0002A)\u0011\u0011\u0005B\u0001\u0008O\u0016tWM]5d\u0013\t\u0019\u0003E\u0001\u000eHK:,\'/[2Ue\u00064XM]:bE2,G+Z7qY\u0006$X\r\u0005\u0002\r\u0001A!ABJ\u0008)\u0013\t9#A\u0001\u0006Ck\u001a4WM\u001d\'jW\u0016\u00042\u0001\u0004\u0001\u0010!\u0011a!f\u0004\u0017\n\u0005-\u0012!a\u0002\"vS2$WM\u001d\t\u0004[AzQ\"\u0001\u0018\u000b\u0005=\"\u0011!C5n[V$\u0018M\u00197f\u0013\t\tdF\u0001\u0003MSN$\u0008cA\u00104\u001f%\u0011A\u0007\t\u0002\r\'\u0016\u000chi\u001c:xCJ$WM\u001d\t\u0003mmj\u0011a\u000e\u0006\u0003qe\n!![8\u000b\u0003i\nAA[1wC&\u0011Ah\u000e\u0002\r\'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\u0006}\u0001!\taP\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003!BQ!\u0011\u0001\u0005B\t\u000b\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003\r\u00032a\u0008#%\u0013\t)\u0005E\u0001\tHK:,\'/[2D_6\u0004\u0018M\\5p]\"9q\t\u0001a\u0001\n\u0013A\u0015!B:uCJ$X#\u0001\u0017\t\u000f)\u0003\u0001\u0019!C\u0005\u0017\u0006I1\u000f^1si~#S-\u001d\u000b\u0003\u0019>\u0003\"!F\'\n\u000593!\u0001B+oSRDq\u0001U%\u0002\u0002\u0003\u0007A&A\u0002yIEBaA\u0015\u0001!B\u0013a\u0013AB:uCJ$\u0008\u0005C\u0005U\u0001\u0001\u0007\t\u0019!C\u0005+\u0006)A.Y:uaU\ta\u000bE\u0002./>I!\u0001\u0017\u0018\u0003\u0019\u0011\u001aw\u000e\\8oI\r|Gn\u001c8\t\u0013i\u0003\u0001\u0019!a\u0001\n\u0013Y\u0016!\u00037bgR\u0004t\u000cJ3r)\taE\u000cC\u0004Q3\u0006\u0005\t\u0019\u0001,\t\ry\u0003\u0001\u0015)\u0003W\u0003\u0019a\u0017m\u001d;1A!9\u0001\r\u0001a\u0001\n\u0013\t\u0017\u0001C3ya>\u0014H/\u001a3\u0016\u0003\t\u0004\"!F2\n\u0005\u00114!a\u0002\"p_2,\u0017M\u001c\u0005\u0008M\u0002\u0001\r\u0011\"\u0003h\u00031)\u0007\u0010]8si\u0016$w\u000cJ3r)\ta\u0005\u000eC\u0004QK\u0006\u0005\t\u0019\u00012\t\r)\u0004\u0001\u0015)\u0003c\u0003%)\u0007\u0010]8si\u0016$\u0007\u0005C\u0004m\u0001\u0001\u0007I\u0011B7\u0002\u00071,g.F\u0001o!\t)r.\u0003\u0002q\r\t\u0019\u0011J\u001c;\t\u000fI\u0004\u0001\u0019!C\u0005g\u00069A.\u001a8`I\u0015\u000cHC\u0001\'u\u0011\u001d\u0001\u0016/!AA\u00029DaA\u001e\u0001!B\u0013q\u0017\u0001\u00027f]\u0002BQ\u0001\u001f\u0001\u0005\u0012!\u000b!\"\u001e8eKJd\u00170\u001b8h\u0011\u0015Q\u0008\u0001\"\u0003|\u0003-9(/\u001b;f\u001f\nTWm\u0019;\u0015\u00051c\u0008\"B?z\u0001\u0004q\u0018aA8viB\u0011ag`\u0005\u0004\u0003\u00039$AE(cU\u0016\u001cGoT;uaV$8\u000b\u001e:fC6Dq!!\u0002\u0001\t\u0013\t9!\u0001\u0006sK\u0006$wJ\u00196fGR$2\u0001TA\u0005\u0011!\tY!a\u0001A\u0002\u00055\u0011AA5o!\r1\u0014qB\u0005\u0004\u0003#9$!E(cU\u0016\u001cG/\u00138qkR\u001cFO]3b[\"1\u0011Q\u0003\u0001\u0005B5\u000ca\u0001\\3oORD\u0007BBA\r\u0001\u0011\u0005S.\u0001\u0003tSj,\u0007bBA\u000f\u0001\u0011\u0005\u0013qD\u0001\u0006CB\u0004H.\u001f\u000b\u0004\u001f\u0005\u0005\u0002bBA\u0012\u00037\u0001\rA\\\u0001\u0002]\"9\u0011q\u0005\u0001\u0005\u0002\u0005%\u0012AB;qI\u0006$X\rF\u0003M\u0003W\ti\u0003C\u0004\u0002$\u0005\u0015\u0002\u0019\u00018\t\u000f\u0005=\u0012Q\u0005a\u0001\u001f\u0005\t\u0001\u0010C\u0004\u00024\u0001!\t!!\u000e\u0002\u0011\u0011\u0002H.^:%KF$B!a\u000e\u0002:5\t\u0001\u0001C\u0004\u00020\u0005E\u0002\u0019A\u0008\t\u000f\u0005u\u0002\u0001\"\u0011\u0002@\u0005iA\u0005\u001d7vg\u0012\u0002H.^:%KF$B!a\u000e\u0002B!A\u00111IA\u001e\u0001\u0004\t)%\u0001\u0002ygB)\u0011qIA%\u001f5\tA!C\u0002\u0002L\u0011\u0011q\u0002\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0005\u0008\u0003\u001f\u0002A\u0011IA)\u0003M!\u0003\u000f\\;tIAdWo\u001d\u0013fc\u0012\u001aw\u000e\\8o)\u0011\t9$a\u0015\t\u0011\u0005\r\u0013Q\na\u0001\u0003\u000bBq!a\u0016\u0001\t\u0003\tI&A\u0003dY\u0016\u000c\'\u000fF\u0001M\u0011\u001d\ti\u0006\u0001C\u0001\u0003?\na\u0002\n9mkN$S-\u001d\u0013d_2|g\u000e\u0006\u0003\u00028\u0005\u0005\u0004bBA\u0018\u00037\u0002\ra\u0004\u0005\u0008\u0003K\u0002A\u0011AA4\u0003%Ign]3si\u0006cG\u000eF\u0003M\u0003S\nY\u0007C\u0004\u0002$\u0005\r\u0004\u0019\u00018\t\u0011\u00055\u00141\ra\u0001\u0003_\n1a]3r!\u0015\t9%!\u001d\u0010\u0013\r\t\u0019\u0008\u0002\u0002\u000c)J\u000cg/\u001a:tC\ndW\rC\u0004\u0002x\u0001!I!!\u001f\u0002\u001dI,G-^2f\u0019\u0016tw\r\u001e5CsR\u0019A*a\u001f\t\u000f\u0005u\u0014Q\u000fa\u0001]\u0006\u0019a.^7\t\u000f\u0005\u0005\u0005\u0001\"\u0011\u0002\u0004\u00061!/Z7pm\u0016$R\u0001TAC\u0003\u000fCq!a\t\u0002\u0000\u0001\u0007a\u000eC\u0004\u0002\n\u0006}\u0004\u0019\u00018\u0002\u000b\r|WO\u001c;)\u0011\u0005}\u0014QRAM\u0003;\u0003B!a$\u0002\u00166\u0011\u0011\u0011\u0013\u0006\u0004\u0003\'3\u0011AC1o]>$\u0018\r^5p]&!\u0011qSAI\u0005%i\u0017n\u001a:bi&|g.\t\u0002\u0002\u001c\u0006I\u0014J\u001c<bY&$\u0007%\u001b8qkR\u0004c/\u00197vKN\u0004s/\u001b7mA\t,\u0007E]3kK\u000e$X\r\u001a\u0011j]\u00022W\u000f^;sK\u0002\u0012X\r\\3bg\u0016\u001ch&\t\u0002\u0002 \u0006!!GL\u00192\u0011\u001d\t\u0019\u000b\u0001C\u0001\u0003K\u000baA]3tk2$H#\u0001\u0017\t\r\u0005%\u0006\u0001\"\u0011I\u0003\u0019!x\u000eT5ti\"9\u0011Q\u0016\u0001\u0005\u0002\u0005=\u0016!\u00049sKB,g\u000e\u001a+p\u0019&\u001cH\u000fF\u0002-\u0003cCq!a\u0011\u0002,\u0002\u0007A\u0006C\u0004\u0002\u0002\u0002!\t!!.\u0015\u0007=\t9\u000cC\u0004\u0002$\u0005M\u0006\u0019\u00018\t\u000f\u0005m\u0006\u0001\"\u0011\u0002>\u0006IA%\\5okN$S-\u001d\u000b\u0005\u0003o\ty\u000cC\u0004\u0002B\u0006e\u0006\u0019A\u0008\u0002\t\u0015dW-\u001c\u0005\u0008\u0003\u000b\u0004A\u0011IAd\u0003!IG/\u001a:bi>\u0014XCAAe!\u0015\t9%a3\u0010\u0013\r\ti\r\u0002\u0002\t\u0013R,\'/\u0019;pe\"1\u0011\u0011\u001b\u0001\u0005B!\u000b\u0001B]3bI>sG.\u001f\u0015\t\u0003\u001f\u000c).a7\u0002`B\u0019Q#a6\n\u0007\u0005egA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c#!!8\u0002CRCW\r\t:fgVdG\u000fI8gAQD\u0017n\u001d\u0011nKRDw\u000e\u001a\u0011xS2d\u0007e\u00195b]\u001e,\u0007%\u00197p]\u001e\u0004s/\u001b;iAQD\u0017n\u001d\u0011ck\u001a4WM\u001d\u0017!o\"L7\r\u001b\u0011jg\u0002zg\r^3oA9|G\u000fI<iCR<3\u000fI3ya\u0016\u001cG/\u001a3/C\t\t\t/\u0001\u00043]E\nd\u0006\r\u0005\u0008\u0003K\u0004A\u0011BA-\u0003\u0011\u0019w\u000e]=\t\u000f\u0005%\u0008\u0001\"\u0011\u0002l\u00061Q-];bYN$2AYAw\u0011\u001d\ty/a:A\u0002a\tA\u0001\u001e5bi\"1\u00111\u001f\u0001\u0005B}\nQa\u00197p]\u0016Dq!a>\u0001\t\u0003\nI0\u0001\u0007tiJLgn\u001a)sK\u001aL\u00070\u0006\u0002\u0002|B!\u0011Q B\u0002\u001d\r)\u0012q`\u0005\u0004\u0005\u00031\u0011A\u0002)sK\u0012,g-\u0003\u0003\u0003\u0006\t\u001d!AB*ue&twMC\u0002\u0003\u0002\u0019As\u0001\u0001B\u0006\u0005#\u0011\u0019\u0002E\u0002\u0016\u0005\u001bI1Aa\u0004\u0007\u0005A\u0019VM]5bYZ+\'o]5p]VKE)A\u0003wC2,XM\u0008\u00050eRx\t;37G\u0010\u001d\u00119B\u0001E\u0001\u00053\t!\u0002T5ti\n+hMZ3s!\ra!1\u0004\u0004\u0007\u0003\tA\tA!\u0008\u0014\r\tm!q\u0004B\u0013!\u0011y\"\u0011\u0005\u0013\n\u0007\t\r\u0002E\u0001\u0006TKF4\u0015m\u0019;pef\u00042!\u0006B\u0014\u0013\tad\u0001C\u0004?\u00057!\tAa\u000b\u0015\u0005\te\u0001\u0002\u0003B\u0018\u00057!\u0019A!\r\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\t\tM\"QI\u000b\u0003\u0005k\u0001\u0012b\u0008B\u001c\u0005w\u0011\u0019Ea\u0012\n\u0007\te\u0002E\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0005\u0003\u0003>\t}RB\u0001B\u000e\u0013\r\u0011\t\u0005\u0012\u0002\u0005\u0007>dG\u000eE\u0002\u0011\u0005\u000b\"aA\u0005B\u0017\u0005\u0004\u0019\u0002\u0003\u0002\u0007\u0001\u0005\u0007B\u0001Ba\u0013\u0003\u001c\u0011\u0005!QJ\u0001\u000b]\u0016<()^5mI\u0016\u0014X\u0003\u0002B(\u0005+*\"A!\u0015\u0011\r1Q#1\u000bB,!\r\u0001\"Q\u000b\u0003\u0007%\t%#\u0019A\n\u0011\t1\u0001!1\u000b\u0005\u000b\u00057\u0012Y\"!A\u0005\n\tu\u0013a\u0003:fC\u0012\u0014Vm]8mm\u0016$\"Aa\u0018\u0011\t\t\u0005$qM\u0007\u0003\u0005GR1A!\u001a:\u0003\u0011a\u0017M\\4\n\t\t%$1\r\u0002\u0007\u001f\nTWm\u0019;"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2f72f48ed0c96cc6L


# instance fields
.field private exported:Z

.field private last0:Lscala/collection/immutable/$colon$colon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/$colon$colon<",
            "TA;>;"
        }
    .end annotation
.end field

.field private len:I

.field private scala$collection$mutable$ListBuffer$$start:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lscala/collection/mutable/AbstractBuffer;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->$init$(Lscala/collection/generic/TraversableForwarder;)V

    invoke-static {p0}, Lscala/collection/generic/IterableForwarder$class;->$init$(Lscala/collection/generic/IterableForwarder;)V

    invoke-static {p0}, Lscala/collection/generic/SeqForwarder$class;->$init$(Lscala/collection/generic/SeqForwarder;)V

    .line 65
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    iput-object v0, p0, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start:Lscala/collection/immutable/List;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lscala/collection/mutable/ListBuffer;->exported:Z

    .line 68
    iput v0, p0, Lscala/collection/mutable/ListBuffer;->len:I

    return-void
.end method

.method public static ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenTraversableFactory<",
            "Lscala/collection/mutable/ListBuffer;",
            ">.GenericCanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/mutable/ListBuffer<",
            "*>;TA;",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;>;"
        }
    .end annotation

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ListBuffer$;->concat(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method private copy()V
    .locals 3

    .line 418
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    .line 420
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/$colon$colon;->tail()Lscala/collection/immutable/List;

    move-result-object v1

    .line 421
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->clear()V

    :goto_0
    if-eq v0, v1, :cond_1

    .line 423
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    .line 424
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static empty()Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer$;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method private exported()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lscala/collection/mutable/ListBuffer;->exported:Z

    return v0
.end method

.method private exported_$eq(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lscala/collection/mutable/ListBuffer;->exported:Z

    return-void
.end method

.method public static fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/ListBuffer$;->fill(IIIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/ListBuffer$;->fill(IIIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IIILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ListBuffer$;->fill(IIILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(IILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ListBuffer$;->fill(IILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static fill(ILscala/Function0;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/ListBuffer$;->fill(ILscala/Function0;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ListBuffer$;->iterate(Ljava/lang/Object;ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method private last0()Lscala/collection/immutable/$colon$colon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/$colon$colon<",
            "TA;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lscala/collection/mutable/ListBuffer;->last0:Lscala/collection/immutable/$colon$colon;

    return-object v0
.end method

.method private last0_$eq(Lscala/collection/immutable/$colon$colon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/$colon$colon<",
            "TA;>;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lscala/collection/mutable/ListBuffer;->last0:Lscala/collection/immutable/$colon$colon;

    return-void
.end method

.method private len()I
    .locals 1

    .line 68
    iget v0, p0, Lscala/collection/mutable/ListBuffer;->len:I

    return v0
.end method

.method private len_$eq(I)V
    .locals 0

    .line 68
    iput p1, p0, Lscala/collection/mutable/ListBuffer;->len:I

    return-void
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ListBuffer$;->range(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ListBuffer$;->range(Ljava/lang/Object;Ljava/lang/Object;Lscala/math/Integral;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .line 89
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 90
    sget-object v1, Lscala/collection/immutable/ListSerializeEnd$;->MODULE$:Lscala/collection/immutable/ListSerializeEnd$;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 90
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 94
    :cond_1
    :goto_0
    new-instance v1, Lscala/collection/immutable/$colon$colon;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v1, v0, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 95
    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 96
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 97
    :goto_1
    sget-object v2, Lscala/collection/immutable/ListSerializeEnd$;->MODULE$:Lscala/collection/immutable/ListSerializeEnd$;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 104
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    .line 108
    :goto_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->exported_$eq(Z)V

    .line 111
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    return-void

    .line 98
    :cond_3
    :goto_3
    new-instance v2, Lscala/collection/immutable/$colon$colon;

    sget-object v3, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v2, v0, v3}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 99
    invoke-virtual {v1, v2}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 101
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v2

    goto :goto_1
.end method

.method private reduceLengthBy(I)V
    .locals 1

    .line 255
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    .line 256
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 257
    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    :cond_0
    return-void
.end method

.method private scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start:Lscala/collection/immutable/List;

    return-void
.end method

.method public static tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;
    .locals 7

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/mutable/ListBuffer$;->tabulate(IIIIILscala/Function5;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;
    .locals 6

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/mutable/ListBuffer$;->tabulate(IIIILscala/Function4;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1, p2, p3}, Lscala/collection/mutable/ListBuffer$;->tabulate(IIILscala/Function3;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/mutable/ListBuffer$;->tabulate(IILscala/Function2;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0, p1}, Lscala/collection/mutable/ListBuffer$;->tabulate(ILscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p0

    return-object p0
.end method

.method public static unapplySeq(Lscala/collection/Seq;)Lscala/Some;
    .locals 1

    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ListBuffer$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object p0

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sget-object v0, Lscala/collection/immutable/ListSerializeEnd$;->MODULE$:Lscala/collection/immutable/ListSerializeEnd$;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 84
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0
.end method


# virtual methods
.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->$colon$bslash(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->$div$colon(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/ListBuffer;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 364
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 365
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v3, v0, Ljava/lang/Character;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    .line 366
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 367
    invoke-direct {p0, v2}, Lscala/collection/mutable/ListBuffer;->reduceLengthBy(I)V

    goto/16 :goto_5

    .line 370
    :cond_5
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    .line 371
    :goto_1
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/SeqLike;

    invoke-interface {v3}, Lscala/collection/SeqLike;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/IterableLike;

    invoke-interface {v3}, Lscala/collection/IterableLike;->head()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_8

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_8
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_9

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_9
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_a

    goto :goto_3

    .line 372
    :cond_a
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_1

    .line 374
    :cond_b
    :goto_3
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/SeqLike;

    invoke-interface {p1}, Lscala/collection/SeqLike;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 375
    move-object p1, v0

    check-cast p1, Lscala/collection/immutable/$colon$colon;

    .line 376
    invoke-virtual {p1}, Lscala/collection/immutable/$colon$colon;->tl()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v3

    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 377
    :cond_d
    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 378
    :cond_e
    :goto_4
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    invoke-interface {v0}, Lscala/collection/TraversableLike;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    invoke-virtual {p1, v0}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 379
    invoke-direct {p0, v2}, Lscala/collection/mutable/ListBuffer;->reduceLengthBy(I)V

    :cond_f
    :goto_5
    return-object p0
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, p1, v1}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 171
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v0

    .line 174
    new-instance v1, Lscala/collection/immutable/$colon$colon;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v1, p1, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 175
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 177
    :goto_0
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq$colon(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 207
    :cond_0
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 208
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 209
    :cond_1
    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 210
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    return-object p0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 181
    :goto_0
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->take(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/ListBuffer;

    return-object p1
.end method

.method public bridge synthetic $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    :goto_0
    if-ne p1, p0, :cond_0

    .line 188
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->take(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableOnce;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$plus$plus$eq$colon(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/ListBuffer;

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->addString(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->addString(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/generic/TraversableForwarder$class;->addString(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 127
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->apply(Lscala/collection/generic/SeqForwarder;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 193
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->exported_$eq(Z)V

    .line 196
    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->clone()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Buffer;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->clone()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ListBuffer<",
            "TA;>;"
        }
    .end annotation

    .line 437
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/ListBuffer;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object v0, Lscala/collection/mutable/ListBuffer$;->MODULE$:Lscala/collection/mutable/ListBuffer$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->contains(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsSlice(Lscala/collection/GenSeq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->containsSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public copyToArray(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/TraversableForwarder$class;->copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;)V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->copyToBuffer(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->corresponds(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->count(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public endsWith(Lscala/collection/GenSeq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->endsWith(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 428
    instance-of v0, p1, Lscala/collection/mutable/ListBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/ListBuffer;

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->readOnly()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/mutable/ListBuffer;->readOnly()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->exists(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->find(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->foldLeft(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/TraversableForwarder$class;->foldRight(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->forall(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->foreach(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->hasDefiniteSize(Lscala/collection/generic/TraversableForwarder;)Z

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->head(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->headOption(Lscala/collection/generic/TraversableForwarder;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->indexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->indexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public indexOfSlice(Lscala/collection/GenSeq;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->indexOfSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)I

    move-result p1

    return p1
.end method

.method public indexOfSlice(Lscala/collection/GenSeq;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->indexOfSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;I)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->indexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->indexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public indices()Lscala/collection/immutable/Range;
    .locals 1

    .line 45
    invoke-static {p0}, Lscala/collection/generic/SeqForwarder$class;->indices(Lscala/collection/generic/SeqForwarder;)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public insertAll(ILscala/collection/Traversable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable<",
            "TA;>;)V"
        }
    .end annotation

    if-ltz p1, :cond_7

    .line 224
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    if-gt p1, v0, :cond_7

    .line 225
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 226
    :cond_0
    invoke-interface {p2}, Lscala/collection/Traversable;->toList()Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object p2

    .line 227
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    invoke-virtual {p2}, Lscala/collection/immutable/List;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->len_$eq(I)V

    if-nez p1, :cond_2

    .line 229
    :goto_0
    invoke-virtual {p2}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 230
    new-instance p1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p2}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 231
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 232
    :cond_1
    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    .line 233
    invoke-virtual {p2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lscala/collection/immutable/List;

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    const/4 v1, 0x1

    :goto_1
    if-ge v1, p1, :cond_3

    .line 239
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return-void

    .line 243
    :cond_5
    new-instance p1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p2}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    invoke-direct {p1, v1, v2}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 244
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/SeqLike;

    invoke-interface {v1}, Lscala/collection/SeqLike;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 245
    :cond_6
    move-object v1, v0

    check-cast v1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v1, p1}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 246
    invoke-virtual {p2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lscala/collection/immutable/List;

    goto :goto_2

    .line 224
    :cond_7
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isDefinedAt(I)Z
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->isDefinedAt(Lscala/collection/generic/SeqForwarder;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->isDefinedAt(I)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->isEmpty(Lscala/collection/generic/TraversableForwarder;)Z

    move-result v0

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

    .line 391
    new-instance v0, Lscala/collection/mutable/ListBuffer$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/ListBuffer$$anon$1;-><init>(Lscala/collection/mutable/ListBuffer;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->last(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->lastIndexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->lastIndexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOfSlice(Lscala/collection/GenSeq;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->lastIndexOfSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)I

    move-result p1

    return p1
.end method

.method public lastIndexOfSlice(Lscala/collection/GenSeq;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->lastIndexOfSlice(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;I)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->lastIndexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->lastIndexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->lastOption(Lscala/collection/generic/TraversableForwarder;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 118
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->lengthCompare(Lscala/collection/generic/SeqForwarder;I)I

    move-result p1

    return p1
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/immutable/List<",
            "TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "TA;TNewTo;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)TA;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->max(Lscala/collection/generic/TraversableForwarder;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TB;>;)TA;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->min(Lscala/collection/generic/TraversableForwarder;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->mkString(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->mkString(Lscala/collection/generic/TraversableForwarder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/TraversableForwarder$class;->mkString(Lscala/collection/generic/TraversableForwarder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public nonEmpty()Z
    .locals 1

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->nonEmpty(Lscala/collection/generic/TraversableForwarder;)Z

    move-result v0

    return v0
.end method

.method public prefixLength(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->prefixLength(Lscala/collection/generic/SeqForwarder;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public prependToList(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 320
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 321
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->product(Lscala/collection/generic/TraversableForwarder;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readOnly()Lscala/collection/Seq;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->readOnly()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public readOnly()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TA;TB;>;)TB;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->reduceLeft(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;TA;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->reduceLeftOption(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)TB;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->reduceRight(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRightOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->reduceRightOption(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 336
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 337
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    .line 338
    :cond_0
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 340
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/List;

    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    goto :goto_1

    .line 342
    :cond_1
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 345
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/IterableLike;

    invoke-interface {p1}, Lscala/collection/IterableLike;->head()Ljava/lang/Object;

    move-result-object p1

    .line 349
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    move-object v2, v0

    check-cast v2, Lscala/collection/immutable/$colon$colon;

    invoke-direct {p0, v2}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 350
    :cond_3
    move-object v2, v0

    check-cast v2, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    invoke-interface {v0}, Lscala/collection/TraversableLike;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    invoke-virtual {v2, v0}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    move-object v0, p1

    .line 352
    :goto_1
    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->reduceLengthBy(I)V

    return-object v0

    .line 336
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(II)V
    .locals 6

    .line 268
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_6

    .line 272
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    :cond_1
    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 273
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, p1, v0}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result p1

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 274
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v0, p2, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result p2

    if-nez p1, :cond_2

    move p1, p2

    :goto_0
    if-lez p1, :cond_5

    .line 278
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 285
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move p1, p2

    :goto_2
    if-lez p1, :cond_5

    .line 290
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object v1

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4

    move-object v1, v0

    check-cast v1, Lscala/collection/immutable/$colon$colon;

    invoke-direct {p0, v1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 291
    :cond_4
    move-object v1, v0

    check-cast v1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableLike;

    invoke-interface {v2}, Lscala/collection/TraversableLike;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    invoke-virtual {v1, v2}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 295
    :cond_5
    invoke-direct {p0, p2}, Lscala/collection/mutable/ListBuffer;->reduceLengthBy(I)V

    return-void

    .line 271
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lscala/StringContext;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v4, "removing negative number ("

    const-string v5, ") of elements"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {v3, v1}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p2

    invoke-virtual {v2, p2}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->result()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/SeqForwarder$class;->reverseIterator(Lscala/collection/generic/SeqForwarder;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TB;>;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/IterableForwarder$class;->sameElements(Lscala/collection/generic/IterableForwarder;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start:Lscala/collection/immutable/List;

    return-object v0
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->segmentLength(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 121
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->length()I

    move-result v0

    return v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;I)V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public startsWith(Lscala/collection/GenSeq;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/SeqForwarder$class;->startsWith(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;)Z

    move-result p1

    return p1
.end method

.method public startsWith(Lscala/collection/GenSeq;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)Z"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lscala/collection/generic/SeqForwarder$class;->startsWith(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;I)Z

    move-result p1

    return p1
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ListBuffer"

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->sum(Lscala/collection/generic/TraversableForwarder;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->toArray(Lscala/collection/generic/TraversableForwarder;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TB;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toBuffer(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toIndexedSeq(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toIterable(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ListBuffer;->exported_$eq(Z)V

    .line 307
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ListBuffer;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "TA;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lscala/collection/generic/TraversableForwarder$class;->toMap(Lscala/collection/generic/TraversableForwarder;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toSeq(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toSet(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lscala/collection/generic/TraversableForwarder$class;->toStream(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Lscala/collection/Iterable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->underlying()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Lscala/collection/Seq;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->underlying()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Lscala/collection/Traversable;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->underlying()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TA;>;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    if-ltz p1, :cond_5

    .line 139
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->len()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 140
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->exported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->copy()V

    :cond_0
    if-nez p1, :cond_2

    .line 142
    new-instance p1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    invoke-direct {p1, p2, v0}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 143
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object p2

    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 144
    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start_$eq(Lscala/collection/immutable/List;)V

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->scala$collection$mutable$ListBuffer$$start()Lscala/collection/immutable/List;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_3

    .line 151
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_3
    new-instance p1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableLike;

    invoke-interface {v1}, Lscala/collection/TraversableLike;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    invoke-direct {p1, p2, v1}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 155
    invoke-direct {p0}, Lscala/collection/mutable/ListBuffer;->last0()Lscala/collection/immutable/$colon$colon;

    move-result-object p2

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_4

    .line 156
    invoke-direct {p0, p1}, Lscala/collection/mutable/ListBuffer;->last0_$eq(Lscala/collection/immutable/$colon$colon;)V

    .line 158
    :cond_4
    check-cast v0, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    :goto_1
    return-void

    .line 139
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public bridge synthetic view()Lscala/collection/IterableView;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/IterableView;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ListBuffer;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lscala/collection/mutable/ListBuffer;->view()Lscala/collection/SeqView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/ListBuffer;->view(II)Lscala/collection/SeqView;

    move-result-object p1

    return-object p1
.end method
