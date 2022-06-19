.class public Lscala/collection/concurrent/TrieMapIterator;
.super Ljava/lang/Object;
.source "TrieMap.scala"

# interfaces
.implements Lscala/collection/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/Iterator<",
        "Lscala/Tuple2<",
        "TK;TV;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005ud!B\u0001\u0003\u0001\u0011A!a\u0004+sS\u0016l\u0015\r]%uKJ\u000cGo\u001c:\u000b\u0005\r!\u0011AC2p]\u000e,(O]3oi*\u0011QAB\u0001\u000bG>dG.Z2uS>t\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0016\u0007%9\"eE\u0002\u0001\u00159\u0001\"a\u0003\u0007\u000e\u0003\u0019I!!\u0004\u0004\u0003\r\u0005s\u0017PU3g!\ry\u0001CE\u0007\u0002\t%\u0011\u0011\u0003\u0002\u0002\t\u0013R,\'/\u0019;peB!1bE\u000b\"\u0013\t!bA\u0001\u0004UkBdWM\r\t\u0003-]a\u0001\u0001B\u0003\u0019\u0001\t\u0007!DA\u0001L\u0007\u0001\t\"a\u0007\u0010\u0011\u0005-a\u0012BA\u000f\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"aC\u0010\n\u0005\u00012!aA!osB\u0011aC\t\u0003\u0006G\u0001\u0011\rA\u0007\u0002\u0002-\"AQ\u0005\u0001BA\u0002\u0013\u0005a%A\u0003mKZ,G.F\u0001(!\tY\u0001&\u0003\u0002*\r\t\u0019\u0011J\u001c;\t\u0011-\u0002!\u00111A\u0005\u00021\n\u0011\u0002\\3wK2|F%Z9\u0015\u00055\u0002\u0004CA\u0006/\u0013\tycA\u0001\u0003V]&$\u0008bB\u0019+\u0003\u0003\u0005\raJ\u0001\u0004q\u0012\n\u0004\u0002C\u001a\u0001\u0005\u0003\u0005\u000b\u0015B\u0014\u0002\r1,g/\u001a7!\u0011!)\u0004A!a\u0001\n\u00131\u0014AA2u+\u00059\u0004\u0003\u0002\u001d:+\u0005j\u0011AA\u0005\u0003u\t\u0011q\u0001\u0016:jK6\u000b\u0007\u000f\u0003\u0005=\u0001\t\u0005\r\u0011\"\u0003>\u0003\u0019\u0019Go\u0018\u0013fcR\u0011QF\u0010\u0005\u0008cm\n\t\u00111\u00018\u0011!\u0001\u0005A!A!B\u00139\u0014aA2uA!A!\t\u0001B\u0001B\u0003%1)\u0001\u0005nkN$\u0018J\\5u!\tYA)\u0003\u0002F\r\t9!i\\8mK\u0006t\u0007\"B$\u0001\t\u0003A\u0015A\u0002\u001fj]&$h\u0008\u0006\u0003J\u0015.c\u0005\u0003\u0002\u001d\u0001+\u0005BQ!\n$A\u0002\u001dBQ!\u000e$A\u0002]BqA\u0011$\u0011\u0002\u0003\u00071\tC\u0004O\u0001\t\u0007I\u0011B(\u0002\u000bM$\u0018mY6\u0016\u0003A\u00032aC)T\u0013\t\u0011fAA\u0003BeJ\u000c\u0017\u0010E\u0002\u000c#R\u0003\"\u0001O+\n\u0005Y\u0013!!\u0003\"bg&\u001cgj\u001c3f\u0011\u0019A\u0006\u0001)A\u0005!\u000611\u000f^1dW\u0002BqA\u0017\u0001C\u0002\u0013%1,\u0001\u0005ti\u0006\u001c7\u000e]8t+\u0005a\u0006cA\u0006RO!1a\u000c\u0001Q\u0001\nq\u000b\u0011b\u001d;bG.\u0004xn\u001d\u0011\t\u000f\u0001\u0004\u0001\u0019!C\u0005M\u0005)A-\u001a9uQ\"9!\r\u0001a\u0001\n\u0013\u0019\u0017!\u00033faRDw\u000cJ3r)\tiC\rC\u00042C\u0006\u0005\t\u0019A\u0014\t\r\u0019\u0004\u0001\u0015)\u0003(\u0003\u0019!W\r\u001d;iA!9\u0001\u000e\u0001a\u0001\n\u0013I\u0017aB:vE&$XM]\u000b\u0002\u001d!91\u000e\u0001a\u0001\n\u0013a\u0017aC:vE&$XM]0%KF$\"!L7\t\u000fER\u0017\u0011!a\u0001\u001d!1q\u000e\u0001Q!\n9\t\u0001b];cSR,\'\u000f\t\u0005\u0008c\u0002\u0001\r\u0011\"\u0003s\u0003\u001d\u0019WO\u001d:f]R,\u0012a\u001d\t\u0005qQ,\u0012%\u0003\u0002v\u0005\t11J\u0016(pI\u0016Dqa\u001e\u0001A\u0002\u0013%\u00010A\u0006dkJ\u0014XM\u001c;`I\u0015\u000cHCA\u0017z\u0011\u001d\td/!AA\u0002MDaa\u001f\u0001!B\u0013\u0019\u0018\u0001C2veJ,g\u000e\u001e\u0011\t\u000bu\u0004A\u0011\u0001@\u0002\u000f!\u000c7OT3yiV\t1\tC\u0004\u0002\u0002\u0001!\t!a\u0001\u0002\t9,\u0007\u0010\u001e\u000b\u0002%!9\u0011q\u0001\u0001\u0005\n\u0005%\u0011A\u0002:fC\u0012Lg\u000eF\u0002.\u0003\u0017A\u0001\"!\u0004\u0002\u0006\u0001\u0007\u0011qB\u0001\u0003S:\u0004R\u0001OA\t+\u0005J1!a\u0005\u0003\u0005\u0015Iej\u001c3f\u0011\u001d\t9\u0002\u0001C\u0005\u00033\tAb\u00195fG.\u001cVOY5uKJ$\u0012!\u000c\u0005\u0008\u0003;\u0001A\u0011BA\r\u0003)Ig.\u001b;jC2L\'0\u001a\u0005\u0008\u0003C\u0001A\u0011AA\r\u0003\u001d\tGM^1oG\u0016Dq!!\n\u0001\t#\t9#A\u0006oK^LE/\u001a:bi>\u0014HcB%\u0002*\u00055\u0012\u0011\u0007\u0005\u0008\u0003W\t\u0019\u00031\u0001(\u0003\u0011yF.\u001a<\t\u000f\u0005=\u00121\u0005a\u0001o\u0005\u0019ql\u0019;\t\u000f\u0005M\u00121\u0005a\u0001\u0007\u0006Iq,\\;ti&s\u0017\u000e\u001e\u0005\u0008\u0003o\u0001A\u0011CA\u001d\u0003\u0015!W\u000f\u001d+p)\ri\u00131\u0008\u0005\u0008\u0003{\t)\u00041\u0001J\u0003\tIG\u000fC\u0004\u0002B\u0001!\t\"a\u0011\u0002\u0013M,(\rZ5wS\u0012,GCAA#!\u0011y\u0011q\t\u0008\n\u0007\u0005%CAA\u0002TKFDq!!\u0014\u0001\t\u0003\tI\"\u0001\u0006qe&tG\u000fR3ck\u001e<!\"!\u0015\u0003\u0003\u0003E\t\u0001BA*\u0003=!&/[3NCBLE/\u001a:bi>\u0014\u0008c\u0001\u001d\u0002V\u0019I\u0011AAA\u0001\u0012\u0003!\u0011qK\n\u0004\u0003+R\u0001bB$\u0002V\u0011\u0005\u00111\u000c\u000b\u0003\u0003\'B!\"a\u0018\u0002VE\u0005I\u0011AA1\u0003m!C.Z:tS:LG\u000fJ4sK\u0006$XM\u001d\u0013eK\u001a\u000cW\u000f\u001c;%gU1\u00111MA=\u0003w*\"!!\u001a+\u0007\r\u000b9g\u000b\u0002\u0002jA!\u00111NA;\u001b\t\tiG\u0003\u0003\u0002p\u0005E\u0014!C;oG\",7m[3e\u0015\r\t\u0019HB\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002BA<\u0003[\u0012\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\t\u0019A\u0012Q\u000cb\u00015\u001111%!\u0018C\u0002i\u0001"
.end annotation


# instance fields
.field private ct:Lscala/collection/concurrent/TrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private current:Lscala/collection/concurrent/KVNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/concurrent/KVNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private depth:I

.field private level:I

.field private final stack:[[Lscala/collection/concurrent/BasicNode;

.field private final stackpos:[I

.field private subiter:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static $lessinit$greater$default$3()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    sget-object v0, Lscala/collection/concurrent/TrieMapIterator$;->MODULE$:Lscala/collection/concurrent/TrieMapIterator$;

    invoke-virtual {v0}, Lscala/collection/concurrent/TrieMapIterator$;->$lessinit$greater$default$3()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(ILscala/collection/concurrent/TrieMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 961
    iput p1, p0, Lscala/collection/concurrent/TrieMapIterator;->level:I

    iput-object p2, p0, Lscala/collection/concurrent/TrieMapIterator;->ct:Lscala/collection/concurrent/TrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Iterator$class;->$init$(Lscala/collection/Iterator;)V

    const/4 p1, 0x7

    new-array p2, p1, [[Lscala/collection/concurrent/BasicNode;

    .line 962
    iput-object p2, p0, Lscala/collection/concurrent/TrieMapIterator;->stack:[[Lscala/collection/concurrent/BasicNode;

    new-array p1, p1, [I

    .line 963
    iput-object p1, p0, Lscala/collection/concurrent/TrieMapIterator;->stackpos:[I

    const/4 p1, -0x1

    .line 964
    iput p1, p0, Lscala/collection/concurrent/TrieMapIterator;->depth:I

    const/4 p1, 0x0

    .line 965
    iput-object p1, p0, Lscala/collection/concurrent/TrieMapIterator;->subiter:Lscala/collection/Iterator;

    .line 966
    iput-object p1, p0, Lscala/collection/concurrent/TrieMapIterator;->current:Lscala/collection/concurrent/KVNode;

    if-eqz p3, :cond_0

    .line 968
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->initialize()V

    :cond_0
    return-void
.end method

.method private checkSubiter()V
    .locals 1

    .line 999
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->subiter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1000
    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->subiter_$eq(Lscala/collection/Iterator;)V

    .line 1001
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->advance()V

    :cond_0
    return-void
.end method

.method private ct()Lscala/collection/concurrent/TrieMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Lscala/collection/concurrent/TrieMapIterator;->ct:Lscala/collection/concurrent/TrieMap;

    return-object v0
.end method

.method private ct_$eq(Lscala/collection/concurrent/TrieMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 961
    iput-object p1, p0, Lscala/collection/concurrent/TrieMapIterator;->ct:Lscala/collection/concurrent/TrieMap;

    return-void
.end method

.method private current()Lscala/collection/concurrent/KVNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/concurrent/KVNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lscala/collection/concurrent/TrieMapIterator;->current:Lscala/collection/concurrent/KVNode;

    return-object v0
.end method

.method private current_$eq(Lscala/collection/concurrent/KVNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/KVNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 966
    iput-object p1, p0, Lscala/collection/concurrent/TrieMapIterator;->current:Lscala/collection/concurrent/KVNode;

    return-void
.end method

.method private depth()I
    .locals 1

    .line 964
    iget v0, p0, Lscala/collection/concurrent/TrieMapIterator;->depth:I

    return v0
.end method

.method private depth_$eq(I)V
    .locals 0

    .line 964
    iput p1, p0, Lscala/collection/concurrent/TrieMapIterator;->depth:I

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 1005
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->ct()Lscala/collection/concurrent/TrieMap;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/concurrent/TrieMap;->isReadOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->assert(Z)V

    .line 1007
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->ct()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT$default$1()Z

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/concurrent/TrieMap;->RDCSS_READ_ROOT(Z)Lscala/collection/concurrent/INode;

    move-result-object v0

    .line 1008
    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->readin(Lscala/collection/concurrent/INode;)V

    return-void
.end method

.method private readin(Lscala/collection/concurrent/INode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/INode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 984
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->ct()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/collection/concurrent/INode;->gcasRead(Lscala/collection/concurrent/TrieMap;)Lscala/collection/concurrent/MainNode;

    move-result-object p1

    .line 985
    instance-of v0, p1, Lscala/collection/concurrent/CNode;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/concurrent/CNode;

    .line 986
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->depth_$eq(I)V

    .line 987
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v1

    invoke-virtual {p1}, Lscala/collection/concurrent/CNode;->array()[Lscala/collection/concurrent/BasicNode;

    move-result-object p1

    aput-object p1, v0, v1

    .line 988
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object p1

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v0

    const/4 v1, -0x1

    aput v1, p1, v0

    .line 989
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->advance()V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 990
    :cond_0
    instance-of v0, p1, Lscala/collection/concurrent/TNode;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/collection/concurrent/TNode;

    .line 991
    invoke-direct {p0, p1}, Lscala/collection/concurrent/TrieMapIterator;->current_$eq(Lscala/collection/concurrent/KVNode;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 992
    :cond_1
    instance-of v0, p1, Lscala/collection/concurrent/LNode;

    if-eqz v0, :cond_2

    check-cast p1, Lscala/collection/concurrent/LNode;

    .line 993
    invoke-virtual {p1}, Lscala/collection/concurrent/LNode;->listmap()Lscala/collection/immutable/ListMap;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/immutable/ListMap;->iterator()Lscala/collection/Iterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/collection/concurrent/TrieMapIterator;->subiter_$eq(Lscala/collection/Iterator;)V

    .line 994
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->checkSubiter()V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 996
    invoke-direct {p0, p1}, Lscala/collection/concurrent/TrieMapIterator;->current_$eq(Lscala/collection/concurrent/KVNode;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-void

    .line 984
    :cond_3
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private stack()[[Lscala/collection/concurrent/BasicNode;
    .locals 1

    .line 962
    iget-object v0, p0, Lscala/collection/concurrent/TrieMapIterator;->stack:[[Lscala/collection/concurrent/BasicNode;

    return-object v0
.end method

.method private stackpos()[I
    .locals 1

    .line 963
    iget-object v0, p0, Lscala/collection/concurrent/TrieMapIterator;->stackpos:[I

    return-object v0
.end method

.method private subiter()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lscala/collection/concurrent/TrieMapIterator;->subiter:Lscala/collection/Iterator;

    return-object v0
.end method

.method private subiter_$eq(Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 965
    iput-object p1, p0, Lscala/collection/concurrent/TrieMapIterator;->subiter:Lscala/collection/Iterator;

    return-void
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
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$colon$bslash(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)TB;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/Function0;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->$plus$plus(Lscala/collection/Iterator;Lscala/Function0;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 961
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public advance()V
    .locals 3

    .line 1011
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v0

    if-ltz v0, :cond_3

    .line 1012
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1013
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v2

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1014
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v2

    aput v0, v1, v2

    .line 1015
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    .line 1016
    instance-of v1, v0, Lscala/collection/concurrent/SNode;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/concurrent/SNode;

    .line 1017
    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->current_$eq(Lscala/collection/concurrent/KVNode;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 1018
    :cond_0
    instance-of v1, v0, Lscala/collection/concurrent/INode;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/concurrent/INode;

    .line 1019
    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->readin(Lscala/collection/concurrent/INode;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 1015
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1022
    :cond_2
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->depth_$eq(I)V

    .line 1023
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->advance()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1025
    invoke-direct {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->current_$eq(Lscala/collection/concurrent/KVNode;)V

    :goto_0
    return-void
.end method

.method public aggregate(Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TB;>;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;",
            "Lscala/Function2<",
            "TB;TB;TB;>;)TB;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->aggregate(Lscala/collection/TraversableOnce;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public buffered()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->buffered(Lscala/collection/Iterator;)Lscala/collection/BufferedIterator;

    move-result-object v0

    return-object v0
.end method

.method public collect(Lscala/PartialFunction;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->collect(Lscala/collection/Iterator;Lscala/PartialFunction;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public collectFirst(Lscala/PartialFunction;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->contains(Lscala/collection/Iterator;Ljava/lang/Object;)Z

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

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;)V

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

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V

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

    .line 961
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->copyToArray(Lscala/collection/Iterator;Ljava/lang/Object;II)V

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

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public corresponds(Lscala/collection/GenTraversableOnce;Lscala/Function2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->corresponds(Lscala/collection/Iterator;Lscala/collection/GenTraversableOnce;Lscala/Function2;)Z

    move-result p1

    return p1
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->count(Lscala/collection/TraversableOnce;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public drop(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->drop(Lscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->dropWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public dupTo(Lscala/collection/concurrent/TrieMapIterator;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/TrieMapIterator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->level()I

    move-result v0

    invoke-virtual {p1, v0}, Lscala/collection/concurrent/TrieMapIterator;->level_$eq(I)V

    .line 1031
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->ct()Lscala/collection/concurrent/TrieMap;

    move-result-object v0

    invoke-direct {p1, v0}, Lscala/collection/concurrent/TrieMapIterator;->ct_$eq(Lscala/collection/concurrent/TrieMap;)V

    .line 1032
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v0

    invoke-direct {p1, v0}, Lscala/collection/concurrent/TrieMapIterator;->depth_$eq(I)V

    .line 1033
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->current()Lscala/collection/concurrent/KVNode;

    move-result-object v0

    invoke-direct {p1, v0}, Lscala/collection/concurrent/TrieMapIterator;->current_$eq(Lscala/collection/concurrent/KVNode;)V

    .line 1036
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v2

    invoke-direct {p1}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1037
    sget-object v7, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v8

    invoke-direct {p1}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-virtual/range {v7 .. v12}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1040
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->subiter()Lscala/collection/Iterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lscala/collection/concurrent/TrieMapIterator;->subiter_$eq(Lscala/collection/Iterator;)V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->subiter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Lscala/collection/immutable/List;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lscala/collection/concurrent/TrieMapIterator;->subiter_$eq(Lscala/collection/Iterator;)V

    .line 1044
    invoke-virtual {v0}, Lscala/collection/immutable/List;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-direct {p1, v0}, Lscala/collection/concurrent/TrieMapIterator;->subiter_$eq(Lscala/collection/Iterator;)V

    :goto_0
    return-void
.end method

.method public duplicate()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->duplicate(Lscala/collection/Iterator;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->exists(Lscala/collection/Iterator;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->filterNot(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->find(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->flatMap(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->fold(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)TB;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldLeft(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldRight(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->forall(Lscala/collection/Iterator;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;TU;>;)V"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->foreach(Lscala/collection/Iterator;Lscala/Function1;)V

    return-void
.end method

.method public grouped(I)Lscala/collection/Iterator$GroupedIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->grouped(Lscala/collection/Iterator;I)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->hasDefiniteSize(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 970
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->current()Lscala/collection/concurrent/KVNode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->subiter()Lscala/collection/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexOf(Lscala/collection/Iterator;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->indexWhere(Lscala/collection/Iterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->isEmpty(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public isTraversableAgain()Z
    .locals 1

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->isTraversableAgain(Lscala/collection/Iterator;)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->length(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public level()I
    .locals 1

    .line 961
    iget v0, p0, Lscala/collection/concurrent/TrieMapIterator;->level:I

    return v0
.end method

.method public level_$eq(I)V
    .locals 0

    .line 961
    iput p1, p0, Lscala/collection/concurrent/TrieMapIterator;->level:I

    return-void
.end method

.method public map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->map(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->max(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->maxBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->min(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->minBy(Lscala/collection/TraversableOnce;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 961
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newIterator(ILscala/collection/concurrent/TrieMap;Z)Lscala/collection/concurrent/TrieMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/concurrent/TrieMap<",
            "TK;TV;>;Z)",
            "Lscala/collection/concurrent/TrieMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1027
    new-instance v0, Lscala/collection/concurrent/TrieMapIterator;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/concurrent/TrieMapIterator;-><init>(ILscala/collection/concurrent/TrieMap;Z)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->next()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public next()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "TK;TV;>;"
        }
    .end annotation

    .line 972
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->subiter()Lscala/collection/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 975
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->subiter()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    .line 976
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->checkSubiter()V

    goto :goto_0

    .line 978
    :cond_0
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->current()Lscala/collection/concurrent/KVNode;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/concurrent/KVNode;->kvPair()Lscala/Tuple2;

    move-result-object v0

    .line 979
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->advance()V

    goto :goto_0

    .line 982
    :cond_1
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    :goto_0
    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
.end method

.method public padTo(ILjava/lang/Object;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(ITA1;)",
            "Lscala/collection/Iterator<",
            "TA1;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->padTo(Lscala/collection/Iterator;ILjava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->partition(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public patch(ILscala/collection/Iterator;I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/Iterator<",
            "TB;>;I)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->patch(Lscala/collection/Iterator;ILscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public printDebug()V
    .locals 3

    .line 1087
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v1, "ctrie iterator"

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 1088
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->intArrayOps([I)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    const-string v2, ","

    invoke-interface {v1, v2}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 1089
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "depth: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 1090
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "curr.: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->current()Lscala/collection/concurrent/KVNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 1091
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lscala/collection/mutable/ArrayOps;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    return-void
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

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->product(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)TA1;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduce(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)TB;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

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
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeftOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TA1;TA1;TA1;>;)",
            "Lscala/Option<",
            "TA1;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

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
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)TB;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRight(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

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
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceRightOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reversed()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->reversed(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->sameElements(Lscala/collection/Iterator;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->scanLeft(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;TB;>;)",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->scanRight(Lscala/collection/Iterator;Ljava/lang/Object;Lscala/Function2;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public seq()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->seq()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public slice(II)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->slice(Lscala/collection/Iterator;II)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding(II)Lscala/collection/Iterator$GroupedIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>.GroupedIterator<TB;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2}, Lscala/collection/Iterator$class;->sliding(Lscala/collection/Iterator;II)Lscala/collection/Iterator$GroupedIterator;

    move-result-object p1

    return-object p1
.end method

.method public sliding$default$2()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->sliding$default$2(Lscala/collection/Iterator;)I

    move-result v0

    return v0
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->span(Lscala/collection/Iterator;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public subdivide()Lscala/collection/Seq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;>;"
        }
    .end annotation

    .line 1051
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->subiter()Lscala/collection/Iterator;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->level()I

    move-result v0

    add-int/2addr v0, v4

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->ct()Lscala/collection/concurrent/TrieMap;

    move-result-object v5

    invoke-virtual {p0, v0, v5, v3}, Lscala/collection/concurrent/TrieMapIterator;->newIterator(ILscala/collection/concurrent/TrieMap;Z)Lscala/collection/concurrent/TrieMapIterator;

    move-result-object v0

    .line 1054
    invoke-direct {v0, v2}, Lscala/collection/concurrent/TrieMapIterator;->depth_$eq(I)V

    .line 1055
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->subiter()Lscala/collection/Iterator;

    move-result-object v2

    invoke-direct {v0, v2}, Lscala/collection/concurrent/TrieMapIterator;->subiter_$eq(Lscala/collection/Iterator;)V

    const/4 v2, 0x0

    .line 1056
    invoke-direct {v0, v2}, Lscala/collection/concurrent/TrieMapIterator;->current_$eq(Lscala/collection/concurrent/KVNode;)V

    .line 1057
    invoke-direct {p0, v2}, Lscala/collection/concurrent/TrieMapIterator;->subiter_$eq(Lscala/collection/Iterator;)V

    .line 1058
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->advance()V

    .line 1059
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->level()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lscala/collection/concurrent/TrieMapIterator;->level_$eq(I)V

    .line 1060
    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [Lscala/collection/concurrent/TrieMapIterator;

    aput-object v0, v1, v3

    aput-object p0, v1, v4

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    goto/16 :goto_1

    .line 1061
    :cond_0
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1062
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->level()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->level_$eq(I)V

    .line 1063
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v4, [Lscala/collection/concurrent/TrieMapIterator;

    aput-object p0, v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1066
    :goto_0
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->depth()I

    move-result v5

    if-gt v0, v5, :cond_4

    .line 1067
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v5

    aget-object v5, v5, v0

    array-length v5, v5

    sub-int/2addr v5, v4

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v6

    aget v6, v6, v0

    sub-int/2addr v5, v6

    if-lez v5, :cond_3

    .line 1069
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v8

    aget-object v8, v8, v0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v7

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v8

    aget v8, v8, v0

    add-int/2addr v8, v4

    invoke-interface {v7, v8}, Lscala/collection/mutable/ArrayOps;->drop(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v6

    div-int/2addr v5, v1

    invoke-interface {v6, v5}, Lscala/collection/mutable/ArrayOps;->splitAt(I)Lscala/Tuple2;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v6, Lscala/Tuple2;

    invoke-virtual {v5}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lscala/collection/concurrent/BasicNode;

    invoke-virtual {v6}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lscala/collection/concurrent/BasicNode;

    .line 1070
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v7

    aput-object v5, v7, v0

    .line 1071
    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v5

    aput v2, v5, v0

    .line 1072
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->level()I

    move-result v0

    add-int/2addr v0, v4

    invoke-direct {p0}, Lscala/collection/concurrent/TrieMapIterator;->ct()Lscala/collection/concurrent/TrieMap;

    move-result-object v5

    invoke-virtual {p0, v0, v5, v3}, Lscala/collection/concurrent/TrieMapIterator;->newIterator(ILscala/collection/concurrent/TrieMap;Z)Lscala/collection/concurrent/TrieMapIterator;

    move-result-object v0

    .line 1073
    invoke-direct {v0}, Lscala/collection/concurrent/TrieMapIterator;->stack()[[Lscala/collection/concurrent/BasicNode;

    move-result-object v5

    aput-object v6, v5, v3

    .line 1074
    invoke-direct {v0}, Lscala/collection/concurrent/TrieMapIterator;->stackpos()[I

    move-result-object v5

    aput v2, v5, v3

    .line 1075
    invoke-direct {v0, v3}, Lscala/collection/concurrent/TrieMapIterator;->depth_$eq(I)V

    .line 1076
    invoke-virtual {v0}, Lscala/collection/concurrent/TrieMapIterator;->advance()V

    .line 1077
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->level()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lscala/collection/concurrent/TrieMapIterator;->level_$eq(I)V

    .line 1078
    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [Lscala/collection/concurrent/TrieMapIterator;

    aput-object p0, v1, v3

    aput-object v0, v1, v4

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0

    .line 1069
    :cond_2
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, v5}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1082
    :cond_4
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->level()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lscala/collection/concurrent/TrieMapIterator;->level_$eq(I)V

    .line 1083
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v4, [Lscala/collection/concurrent/TrieMapIterator;

    aput-object p0, v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    :goto_1
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

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->take(Lscala/collection/Iterator;I)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->takeWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            "Lscala/Tuple2<",
            "TK;TV;>;TCol;>;)TCol;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->to(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

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

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIndexedSeq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toIterable(Lscala/collection/TraversableOnce;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->toIterator(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 961
    invoke-virtual {p0, p1}, Lscala/collection/concurrent/TrieMapIterator;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/Tuple2<",
            "TT;TU;>;>;)",
            "Lscala/collection/immutable/Map<",
            "TT;TU;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->toSet()Lscala/collection/immutable/Set;

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

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSet(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->toString(Lscala/collection/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 961
    invoke-virtual {p0}, Lscala/collection/concurrent/TrieMapIterator;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->toTraversable(Lscala/collection/Iterator;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->withFilter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TB;>;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Lscala/Tuple2<",
            "TK;TV;>;TB;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1}, Lscala/collection/Iterator$class;->zip(Lscala/collection/Iterator;Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Iterator<",
            "TB;>;TA1;TB1;)",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "TA1;TB1;>;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0, p1, p2, p3}, Lscala/collection/Iterator$class;->zipAll(Lscala/collection/Iterator;Lscala/collection/Iterator;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Lscala/Tuple2<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 961
    invoke-static {p0}, Lscala/collection/Iterator$class;->zipWithIndex(Lscala/collection/Iterator;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
