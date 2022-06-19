.class public abstract Lscala/text/Document;
.super Ljava/lang/Object;
.source "Document.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001)4Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0001\u0002R8dk6,g\u000e\u001e\u0006\u0003\u0007\u0011\tA\u0001^3yi*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0005\u0001A\u0001CA\u0005\u000b\u001b\u0005!\u0011BA\u0006\u0005\u0005\u0019\te.\u001f*fM\")Q\u0002\u0001C\u0001\u001d\u00051A(\u001b8jiz\"\u0012a\u0004\t\u0003!\u0001i\u0011A\u0001\u0005\u0006%\u0001!\taE\u0001\rI\r|Gn\u001c8%G>dwN\u001c\u000b\u0003\u001fQAQ!F\tA\u0002=\t!\u0001\u001b3\t\u000bI\u0001A\u0011A\u000c\u0015\u0005=A\u0002\"B\u000b\u0017\u0001\u0004I\u0002C\u0001\u000e\u001e\u001d\tI1$\u0003\u0002\u001d\t\u00051\u0001K]3eK\u001aL!AH\u0010\u0003\rM#(/\u001b8h\u0015\taB\u0001C\u0003\"\u0001\u0011\u0005!%\u0001\t%G>dwN\u001c\u0013eSZ$3m\u001c7p]R\u0011qb\t\u0005\u0006+\u0001\u0002\ra\u0004\u0005\u0006C\u0001!\t!\n\u000b\u0003\u001f\u0019BQ!\u0006\u0013A\u0002eAQ\u0001\u000b\u0001\u0005\u0002%\naAZ8s[\u0006$Hc\u0001\u0016.eA\u0011\u0011bK\u0005\u0003Y\u0011\u0011A!\u00168ji\")af\na\u0001_\u0005)q/\u001b3uQB\u0011\u0011\u0002M\u0005\u0003c\u0011\u00111!\u00138u\u0011\u0015\u0019t\u00051\u00015\u0003\u00199(/\u001b;feB\u0011QGO\u0007\u0002m)\u0011q\u0007O\u0001\u0003S>T\u0011!O\u0001\u0005U\u00064\u0018-\u0003\u0002<m\t1qK]5uKJDC\u0001A\u001fA\u0005B\u0011\u0011BP\u0005\u0003\u007f\u0011\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005\t\u0015a\u0007+iSN\u00043\r\\1tg\u0002:\u0018\u000e\u001c7!E\u0016\u0004#/Z7pm\u0016$g&I\u0001D\u0003\u0019\u0011d&M\u0019/a\u001d)QI\u0001E\u0001\r\u0006AAi\\2v[\u0016tG\u000f\u0005\u0002\u0011\u000f\u001a)\u0011A\u0001E\u0001\u0011N\u0011q\t\u0003\u0005\u0006\u001b\u001d#\tA\u0013\u000b\u0002\r\")Aj\u0012C\u0001\u001b\u0006)Q-\u001c9usV\taJ\u0004\u0002\u0011\u001f&\u0011\u0001KA\u0001\u0007\t>\u001cg*\u001b7\t\u000bI;E\u0011A*\u0002\u000b\t\u0014X-Y6\u0016\u0003Qs!\u0001E+\n\u0005Y\u0013\u0011\u0001\u0003#pG\n\u0013X-Y6\t\u000b\r9E\u0011\u0001-\u0015\u0005=I\u0006\"\u0002.X\u0001\u0004I\u0012!A:\t\u000bq;E\u0011A/\u0002\u000b\u001d\u0014x.\u001e9\u0015\u0005=q\u0006\"B0\\\u0001\u0004y\u0011!\u00013\t\u000b\u0005<E\u0011\u00012\u0002\t9,7\u000f\u001e\u000b\u0004\u001f\r,\u0007\"\u00023a\u0001\u0004y\u0013!A5\t\u000b}\u0003\u0007\u0019A\u0008)\t\u001dktMQ\u0011\u0002Q\u0006aB\u000b[5tA=\u0014\'.Z2uA]LG\u000e\u001c\u0011cK\u0002\u0012X-\\8wK\u0012t\u0003\u0006\u0002#>O\n\u0003"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break()Lscala/text/DocBreak$;
    .locals 1

    sget-object v0, Lscala/text/Document$;->MODULE$:Lscala/text/Document$;

    invoke-virtual {v0}, Lscala/text/Document$;->break()Lscala/text/DocBreak$;

    move-result-object v0

    return-object v0
.end method

.method public static empty()Lscala/text/DocNil$;
    .locals 1

    sget-object v0, Lscala/text/Document$;->MODULE$:Lscala/text/Document$;

    invoke-virtual {v0}, Lscala/text/Document$;->empty()Lscala/text/DocNil$;

    move-result-object v0

    return-object v0
.end method

.method private final fits$1(ILscala/collection/immutable/List;)Z
    .locals 6

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p1, :cond_0

    goto/16 :goto_3

    .line 50
    :cond_0
    sget-object v3, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v3, p2}, Lscala/collection/immutable/List$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object v3

    invoke-virtual {v3}, Lscala/Some;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lscala/Some;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lscala/Some;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/LinearSeqOptimized;

    invoke-interface {v3, v1}, Lscala/collection/LinearSeqOptimized;->lengthCompare(I)I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 52
    :cond_1
    instance-of v3, p2, Lscala/collection/immutable/$colon$colon;

    if-eqz v3, :cond_3

    move-object v0, p2

    check-cast v0, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lscala/text/DocNil$;->MODULE$:Lscala/text/DocNil$;

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 52
    invoke-virtual {v4}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 54
    invoke-virtual {v4}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lscala/text/DocCons;

    if-eqz v4, :cond_4

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 54
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/text/DocCons;

    .line 55
    new-instance v1, Lscala/Tuple3;

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/Tuple3;

    .line 55
    invoke-virtual {v2}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    .line 55
    invoke-virtual {v3}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lscala/text/DocCons;->hd()Lscala/text/Document;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lscala/Tuple3;

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    .line 55
    invoke-virtual {v3}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v3

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 55
    invoke-virtual {v4}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lscala/text/DocCons;->tl()Lscala/text/Document;

    move-result-object p2

    invoke-direct {v2, v3, v4, p2}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2, v2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 56
    invoke-virtual {v4}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lscala/text/DocText;

    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 56
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/text/DocText;

    .line 57
    invoke-virtual {p2}, Lscala/text/DocText;->txt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 58
    invoke-virtual {v4}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lscala/text/DocNest;

    if-eqz v4, :cond_6

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 58
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/text/DocNest;

    .line 59
    new-instance v1, Lscala/Tuple3;

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/Tuple3;

    .line 59
    invoke-virtual {v2}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p2}, Lscala/text/DocNest;->indent()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    .line 59
    invoke-virtual {v3}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lscala/text/DocNest;->doc()Lscala/text/Document;

    move-result-object p2

    invoke-direct {v1, v2, v3, p2}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 60
    invoke-virtual {v4}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lscala/text/DocBreak$;->MODULE$:Lscala/text/DocBreak$;

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscala/Tuple3;

    .line 60
    invoke-virtual {v5}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 p1, p1, -0x1

    .line 61
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 62
    invoke-virtual {v4}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-ne v2, v4, :cond_8

    sget-object v4, Lscala/text/DocBreak$;->MODULE$:Lscala/text/DocBreak$;

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscala/Tuple3;

    .line 62
    invoke-virtual {v5}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_1

    :goto_3
    return v1

    :cond_8
    if-eqz v3, :cond_9

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/Tuple3;

    .line 64
    invoke-virtual {v2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lscala/text/DocGroup;

    if-eqz v2, :cond_9

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 64
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/text/DocGroup;

    .line 65
    new-instance v2, Lscala/Tuple3;

    .line 47
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    .line 65
    invoke-virtual {v3}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2}, Lscala/text/DocGroup;->doc()Lscala/text/Document;

    move-result-object p2

    invoke-direct {v2, v3, v1, p2}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2, v2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    .line 47
    :cond_9
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, p2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private final fmt$1(ILscala/collection/immutable/List;ILjava/io/Writer;)V
    .locals 7

    :goto_0
    const/4 v0, 0x0

    .line 77
    sget-object v1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v1, p2}, Lscala/collection/immutable/List$;->unapplySeq(Lscala/collection/Seq;)Lscala/Some;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Some;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lscala/Some;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lscala/Some;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/LinearSeqOptimized;

    invoke-interface {v1, v3}, Lscala/collection/LinearSeqOptimized;->lengthCompare(I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_2

    .line 79
    :cond_0
    instance-of v1, p2, Lscala/collection/immutable/$colon$colon;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p2, Lscala/text/DocNil$;->MODULE$:Lscala/text/DocNil$;

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple3;

    .line 79
    invoke-virtual {v1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_3

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple3;

    .line 81
    invoke-virtual {v1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/text/DocCons;

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 81
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/text/DocCons;

    .line 82
    new-instance v1, Lscala/Tuple3;

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/Tuple3;

    .line 82
    invoke-virtual {v2}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v2

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    .line 82
    invoke-virtual {v3}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lscala/text/DocCons;->hd()Lscala/text/Document;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lscala/Tuple3;

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    .line 82
    invoke-virtual {v3}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v3

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 82
    invoke-virtual {v4}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lscala/text/DocCons;->tl()Lscala/text/Document;

    move-result-object p2

    invoke-direct {v2, v3, v4, p2}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2, v2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple3;

    .line 83
    invoke-virtual {v1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/text/DocText;

    if-eqz v1, :cond_4

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 83
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/text/DocText;

    .line 84
    invoke-virtual {p2}, Lscala/text/DocText;->txt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lscala/text/DocText;->txt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple3;

    .line 86
    invoke-virtual {v1}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lscala/text/DocNest;

    if-eqz v1, :cond_5

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 86
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/text/DocNest;

    .line 87
    new-instance v1, Lscala/Tuple3;

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/Tuple3;

    .line 87
    invoke-virtual {v2}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p2}, Lscala/text/DocNest;->indent()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Tuple3;

    .line 87
    invoke-virtual {v3}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lscala/text/DocNest;->doc()Lscala/text/Document;

    move-result-object p2

    invoke-direct {v1, v2, v3, p2}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2, v1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple3;

    .line 88
    invoke-virtual {v1}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-ne v2, v1, :cond_6

    sget-object v1, Lscala/text/DocBreak$;->MODULE$:Lscala/text/DocBreak$;

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 88
    invoke-virtual {v4}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "\n"

    .line 89
    invoke-virtual {p4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple3;

    .line 90
    invoke-virtual {p1}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p1, p4}, Lscala/text/Document;->spaces$1(ILjava/io/Writer;)V

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple3;

    .line 91
    invoke-virtual {p1}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple3;

    .line 92
    invoke-virtual {v1}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lscala/text/DocBreak$;->MODULE$:Lscala/text/DocBreak$;

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 92
    invoke-virtual {v4}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p2, " "

    .line 93
    invoke-virtual {p4, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 94
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 95
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lscala/text/DocGroup;

    if-eqz p2, :cond_8

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/Tuple3;

    .line 95
    invoke-virtual {p2}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/text/DocGroup;

    sub-int v1, p3, p1

    .line 96
    new-instance v4, Lscala/Tuple3;

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscala/Tuple3;

    .line 96
    invoke-virtual {v5}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2}, Lscala/text/DocGroup;->doc()Lscala/text/Document;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object v3

    invoke-virtual {v3, v4}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lscala/text/Document;->fits$1(ILscala/collection/immutable/List;)Z

    move-result v1

    .line 97
    new-instance v3, Lscala/Tuple3;

    .line 77
    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple3;

    .line 97
    invoke-virtual {v4}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v4

    xor-int/2addr v1, v2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2}, Lscala/text/DocGroup;->doc()Lscala/text/Document;

    move-result-object p2

    invoke-direct {v3, v4, v1, p2}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lscala/collection/immutable/$colon$colon;->tl$1()Lscala/collection/immutable/List;

    move-result-object p2

    invoke-virtual {p2, v3}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    goto/16 :goto_0

    .line 99
    :cond_8
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 77
    :goto_2
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method public static group(Lscala/text/Document;)Lscala/text/Document;
    .locals 1

    sget-object v0, Lscala/text/Document$;->MODULE$:Lscala/text/Document$;

    invoke-virtual {v0, p0}, Lscala/text/Document$;->group(Lscala/text/Document;)Lscala/text/Document;

    move-result-object p0

    return-object p0
.end method

.method public static nest(ILscala/text/Document;)Lscala/text/Document;
    .locals 1

    sget-object v0, Lscala/text/Document$;->MODULE$:Lscala/text/Document$;

    invoke-virtual {v0, p0, p1}, Lscala/text/Document$;->nest(ILscala/text/Document;)Lscala/text/Document;

    move-result-object p0

    return-object p0
.end method

.method private final spaces$1(ILjava/io/Writer;)V
    .locals 1

    :goto_0
    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    const-string v0, "                "

    .line 70
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const-string v0, "        "

    .line 71
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x8

    :cond_1
    const/4 v0, 0x4

    if-lt p1, v0, :cond_2

    const-string v0, "    "

    .line 72
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x4

    :cond_2
    const/4 v0, 0x2

    if-lt p1, v0, :cond_3

    const-string v0, "  "

    .line 73
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x2

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const-string p1, " "

    .line 74
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static text(Ljava/lang/String;)Lscala/text/Document;
    .locals 1

    sget-object v0, Lscala/text/Document$;->MODULE$:Lscala/text/Document$;

    invoke-virtual {v0, p0}, Lscala/text/Document$;->text(Ljava/lang/String;)Lscala/text/Document;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public $colon$colon(Ljava/lang/String;)Lscala/text/Document;
    .locals 2

    .line 36
    new-instance v0, Lscala/text/DocCons;

    new-instance v1, Lscala/text/DocText;

    invoke-direct {v1, p1}, Lscala/text/DocText;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lscala/text/DocCons;-><init>(Lscala/text/Document;Lscala/text/Document;)V

    return-object v0
.end method

.method public $colon$colon(Lscala/text/Document;)Lscala/text/Document;
    .locals 1

    .line 35
    new-instance v0, Lscala/text/DocCons;

    invoke-direct {v0, p1, p0}, Lscala/text/DocCons;-><init>(Lscala/text/Document;Lscala/text/Document;)V

    return-object v0
.end method

.method public $colon$div$colon(Ljava/lang/String;)Lscala/text/Document;
    .locals 1

    .line 38
    sget-object v0, Lscala/text/DocBreak$;->MODULE$:Lscala/text/DocBreak$;

    invoke-virtual {p0, v0}, Lscala/text/Document;->$colon$colon(Lscala/text/Document;)Lscala/text/Document;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/text/Document;->$colon$colon(Ljava/lang/String;)Lscala/text/Document;

    move-result-object p1

    return-object p1
.end method

.method public $colon$div$colon(Lscala/text/Document;)Lscala/text/Document;
    .locals 1

    .line 37
    sget-object v0, Lscala/text/DocBreak$;->MODULE$:Lscala/text/DocBreak$;

    invoke-virtual {p0, v0}, Lscala/text/Document;->$colon$colon(Lscala/text/Document;)Lscala/text/Document;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/text/Document;->$colon$colon(Lscala/text/Document;)Lscala/text/Document;

    move-result-object p1

    return-object p1
.end method

.method public format(ILjava/io/Writer;)V
    .locals 5

    .line 102
    new-instance v0, Lscala/Tuple3;

    const/4 v1, 0x0

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lscala/text/DocGroup;

    invoke-direct {v4, p0}, Lscala/text/DocGroup;-><init>(Lscala/text/Document;)V

    invoke-direct {v0, v2, v3, v4}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v2, v0}, Lscala/collection/immutable/Nil$;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1, p2}, Lscala/text/Document;->fmt$1(ILscala/collection/immutable/List;ILjava/io/Writer;)V

    return-void
.end method
