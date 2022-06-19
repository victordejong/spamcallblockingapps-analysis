.class public interface abstract Lscala/collection/mutable/LinkedListLike;
.super Ljava/lang/Object;
.source "LinkedListLike.scala"

# interfaces
.implements Lscala/collection/mutable/SeqLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/mutable/Seq<",
        "TA;>;:",
        "Lscala/collection/mutable/LinkedListLike<",
        "TA;TThis;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/SeqLike<",
        "TA;TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005=c\u0001C\u0001\u0003!\u0003\r\t!\u0003\u0015\u0003\u001d1Kgn[3e\u0019&\u001cH\u000fT5lK*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\rQQcH\n\u0004\u0001-y\u0001C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\u0008\u0007\u0005\u0019\te.\u001f*fMB!\u0001#E\n\u001f\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\u001d\u0019V-\u001d\'jW\u0016\u0004\"\u0001F\u000b\r\u0001\u0011)a\u0003\u0001b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\u0008C\u0001\u000b \t\u0015\u0001\u0003A1\u0001\"\u0005\u0011!\u0006.[:\u0012\u0005a\u0011#cA\u0012&Q\u0019!A\u0005\u0001\u0001#\u00051a$/\u001a4j]\u0016lWM\u001c;?!\r\u0001beE\u0005\u0003O\t\u00111aU3r!\u0011\u0001\u0002a\u0005\u0010\t\u000b)\u0002A\u0011A\u0016\u0002\r\u0011Jg.\u001b;%)\u0005a\u0003C\u0001\u0007.\u0013\tqcA\u0001\u0003V]&$\u0008\"\u0003\u0019\u0001\u0001\u0004\u0005\r\u0011\"\u00012\u0003\u0011)G.Z7\u0016\u0003MA\u0011b\r\u0001A\u0002\u0003\u0007I\u0011\u0001\u001b\u0002\u0011\u0015dW-\\0%KF$\"\u0001L\u001b\t\u000fY\u0012\u0014\u0011!a\u0001\'\u0005\u0019\u0001\u0010J\u0019\t\ra\u0002\u0001\u0015)\u0003\u0014\u0003\u0015)G.Z7!\u0011%Q\u0004\u00011AA\u0002\u0013\u00051(\u0001\u0003oKb$X#\u0001\u0010\t\u0013u\u0002\u0001\u0019!a\u0001\n\u0003q\u0014\u0001\u00038fqR|F%Z9\u0015\u00051z\u0004b\u0002\u001c=\u0003\u0003\u0005\rA\u0008\u0005\u0007\u0003\u0002\u0001\u000b\u0015\u0002\u0010\u0002\u000b9,\u0007\u0010\u001e\u0011\t\u000b\r\u0003A\u0011\t#\u0002\u000f%\u001cX)\u001c9usV\tQ\t\u0005\u0002\r\r&\u0011qI\u0002\u0002\u0008\u0005>|G.Z1o\u0011\u0015I\u0005\u0001\"\u0011K\u0003\u0019aWM\\4uQV\t1\n\u0005\u0002\r\u0019&\u0011QJ\u0002\u0002\u0004\u0013:$\u0008\"B(\u0001\t\u0013\u0001\u0016a\u00027f]\u001e$\u0008\u000e\r\u000b\u0004\u0017F\u0013\u0006\"\u0002\u0019O\u0001\u0004q\u0002\"B*O\u0001\u0004Y\u0015aA1dG\"\u0012a*\u0016\t\u0003-fk\u0011a\u0016\u0006\u00031\u001a\t!\"\u00198o_R\u000cG/[8o\u0013\tQvKA\u0004uC&d\'/Z2\t\u000bq\u0003A\u0011I\u0019\u0002\t!,\u0017\r\u001a\u0005\u0006=\u0002!\teO\u0001\u0005i\u0006LG\u000eC\u0003a\u0001\u0011\u0005\u0011-\u0001\u0004baB,g\u000e\u001a\u000b\u0003=\tDQaY0A\u0002y\tA\u0001\u001e5bi\")Q\r\u0001C\u0001M\u00061\u0011N\\:feR$\"\u0001L4\t\u000b\r$\u0007\u0019\u0001\u0010\t\u000b%\u0004A\u0011\t6\u0002\t\u0011\u0014x\u000e\u001d\u000b\u0003=-DQ\u0001\u001c5A\u0002-\u000b\u0011A\u001c\u0005\u0006]\u0002!Ia\\\u0001\u000bCRdunY1uS>tWC\u00019t)\t\t(\u0010\u0006\u0002skB\u0011Ac\u001d\u0003\u0006i6\u0014\ra\u0006\u0002\u0002)\")a/\u001ca\u0001o\u0006\ta\r\u0005\u0003\rqz\u0011\u0018BA=\u0007\u0005%1UO\\2uS>t\u0017\u0007C\u0003m[\u0002\u00071\nC\u0003}\u0001\u0011\u0005S0A\u0003baBd\u0017\u0010\u0006\u0002\u0014}\")An\u001fa\u0001\u0017\"9\u0011\u0011\u0001\u0001\u0005\u0002\u0005\r\u0011AB;qI\u0006$X\rF\u0003-\u0003\u000b\t9\u0001C\u0003m\u007f\u0002\u00071\n\u0003\u0004\u0002\n}\u0004\raE\u0001\u0002q\"9\u0011Q\u0002\u0001\u0005\u0002\u0005=\u0011aA4fiR!\u0011\u0011CA\u000c!\u0011a\u00111C\n\n\u0007\u0005UaA\u0001\u0004PaRLwN\u001c\u0005\u0007Y\u0006-\u0001\u0019A&\t\u000f\u0005m\u0001\u0001\"\u0011\u0002\u001e\u0005A\u0011\u000e^3sCR|\'/\u0006\u0002\u0002 A)\u0011\u0011EA\u0012\'5\tA!C\u0002\u0002&\u0011\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\u0008\u0003S\u0001A\u0011IA\u0016\u0003\u001d1wN]3bG\",B!!\u000c\u00026Q\u0019A&a\u000c\t\u000fY\u000c9\u00031\u0001\u00022A)A\u0002_\n\u00024A\u0019A#!\u000e\u0005\u000f\u0005]\u0012q\u0005b\u0001/\t\t!\tC\u0004\u0002<\u0001!\t%!\u0010\u0002\u000b\rdwN\\3\u0015\u0003yAs\u0001AA!\u0003\u000f\nY\u0005E\u0002\r\u0003\u0007J1!!\u0012\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0003\u0003\u0013\n\u0011\rT8x[1,g/\u001a7!Y&t7.\u001a3!Y&\u001cHo\u001d\u0011be\u0016\u0004C-\u001a9sK\u000e\u000cG/\u001a3!IV,\u0007\u0005^8!S\u0012Lwn]=oGJ\u000c7/[3tA%t\u0007%\u001b8uKJ4\u0017mY3!C:$\u0007%\u001b8d_6\u0004H.\u001a;fA\u0019,\u0017\r^;sKNt\u0013EAA\'\u0003\u0019\u0011d&M\u0019/a\u0001"
.end annotation


# virtual methods
.method public abstract append(Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;)TThis;"
        }
    .end annotation
.end method

.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract clone()Lscala/collection/mutable/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract drop(I)Lscala/collection/mutable/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TThis;"
        }
    .end annotation
.end method

.method public abstract elem()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract elem_$eq(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract foreach(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;)V"
        }
    .end annotation
.end method

.method public abstract get(I)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract insert(Lscala/collection/mutable/Seq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;)V"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract next()Lscala/collection/mutable/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract next_$eq(Lscala/collection/mutable/Seq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation
.end method

.method public abstract tail()Lscala/collection/mutable/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation
.end method
