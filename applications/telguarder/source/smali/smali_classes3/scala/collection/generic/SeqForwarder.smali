.class public interface abstract Lscala/collection/generic/SeqForwarder;
.super Ljava/lang/Object;
.source "SeqForwarder.scala"

# interfaces
.implements Lscala/collection/Seq;
.implements Lscala/collection/generic/IterableForwarder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/Seq<",
        "TA;>;",
        "Lscala/collection/generic/IterableForwarder<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\rhaB\u0001\u0003!\u0003\r\t!\u0003\u0002\r\'\u0016\u000chi\u001c:xCJ$WM\u001d\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\u000b+M!\u0001aC\u0008\u001f!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0004!E\u0019R\"\u0001\u0003\n\u0005I!!aA*fcB\u0011A#\u0006\u0007\u0001\t\u00191\u0002\u0001\"b\u0001/\t\t\u0011)\u0005\u0002\u00197A\u0011A\"G\u0005\u00035\u0019\u0011qAT8uQ&tw\r\u0005\u0002\r9%\u0011QD\u0002\u0002\u0004\u0003:L\u0008cA\u0010!\'5\t!!\u0003\u0002\"\u0005\t\t\u0012\n^3sC\ndWMR8so\u0006\u0014H-\u001a:\t\u000b\r\u0002A\u0011\u0001\u0013\u0002\r\u0011Jg.\u001b;%)\u0005)\u0003C\u0001\u0007\'\u0013\t9cA\u0001\u0003V]&$\u0008\"B\u0015\u0001\r#R\u0013AC;oI\u0016\u0014H._5oOV\tq\u0002C\u0003-\u0001\u0011\u0005S&\u0001\u0004mK:<G\u000f[\u000b\u0002]A\u0011AbL\u0005\u0003a\u0019\u00111!\u00138u\u0011\u0015\u0011\u0004\u0001\"\u00114\u0003\u0015\t\u0007\u000f\u001d7z)\t\u0019B\u0007C\u00036c\u0001\u0007a&A\u0002jIbDQa\u000e\u0001\u0005Ba\nQ\u0002\\3oORD7i\\7qCJ,GC\u0001\u0018:\u0011\u0015Qd\u00071\u0001/\u0003\raWM\u001c\u0005\u0006y\u0001!\t%P\u0001\u000cSN$UMZ5oK\u0012\u000cE\u000f\u0006\u0002?\u0003B\u0011AbP\u0005\u0003\u0001\u001a\u0011qAQ8pY\u0016\u000cg\u000eC\u0003Cw\u0001\u0007a&A\u0001y\u0011\u0015!\u0005\u0001\"\u0011F\u00035\u0019XmZ7f]RdUM\\4uQR\u0019aFR&\t\u000b\u001d\u001b\u0005\u0019\u0001%\u0002\u0003A\u0004B\u0001D%\u0014}%\u0011!J\u0002\u0002\n\rVt7\r^5p]FBQ\u0001T\"A\u00029\nAA\u001a:p[\")a\n\u0001C!\u001f\u0006a\u0001O]3gSbdUM\\4uQR\u0011a\u0006\u0015\u0005\u0006\u000f6\u0003\r\u0001\u0013\u0005\u0006%\u0002!\teU\u0001\u000bS:$W\r_,iKJ,GC\u0001\u0018U\u0011\u00159\u0015\u000b1\u0001I\u0011\u0015\u0011\u0006\u0001\"\u0011W)\rqs\u000b\u0017\u0005\u0006\u000fV\u0003\r\u0001\u0013\u0005\u0006\u0019V\u0003\rA\u000c\u0005\u00065\u0002!\teW\u0001\u0008S:$W\r_(g+\ta\u0006\r\u0006\u0002/;\")a,\u0017a\u0001?\u0006!Q\r\\3n!\t!\u0002\rB\u0003b3\n\u0007!MA\u0001C#\t\u00192\u0004C\u0003[\u0001\u0011\u0005C-\u0006\u0002fQR\u0019aFZ5\t\u000by\u001b\u0007\u0019A4\u0011\u0005QAG!B1d\u0005\u0004\u0011\u0007\"\u0002\'d\u0001\u0004q\u0003\"B6\u0001\t\u0003b\u0017a\u00037bgRLe\u000eZ3y\u001f\u001a,\"!\u001c9\u0015\u00059r\u0007\"\u00020k\u0001\u0004y\u0007C\u0001\u000bq\t\u0015\t\'N1\u0001c\u0011\u0015Y\u0007\u0001\"\u0011s+\t\u0019h\u000fF\u0002/i^DQAX9A\u0002U\u0004\"\u0001\u0006<\u0005\u000b\u0005\u000c(\u0019\u00012\t\u000ba\u000c\u0008\u0019\u0001\u0018\u0002\u0007\u0015tG\rC\u0003{\u0001\u0011\u000530\u0001\u0008mCN$\u0018J\u001c3fq^CWM]3\u0015\u00059b\u0008\"B$z\u0001\u0004A\u0005\"\u0002>\u0001\t\u0003rH\u0003\u0002\u0018\u0000\u0003\u0003AQaR?A\u0002!CQ\u0001_?A\u00029Bq!!\u0002\u0001\t\u0003\n9!A\u0008sKZ,\'o]3Ji\u0016\u0014\u0018\r^8s+\t\tI\u0001\u0005\u0003\u0011\u0003\u0017\u0019\u0012bAA\u0007\t\tA\u0011\n^3sCR|\'\u000fC\u0004\u0002\u0012\u0001!\t%a\u0005\u0002\u0015M$\u0018M\u001d;t/&$\u0008.\u0006\u0003\u0002\u0016\u0005\rB#\u0002 \u0002\u0018\u0005\u0015\u0002\u0002CA\r\u0003\u001f\u0001\r!a\u0007\u0002\tQD\u0017\r\u001e\t\u0006!\u0005u\u0011\u0011E\u0005\u0004\u0003?!!AB$f]N+\u0017\u000fE\u0002\u0015\u0003G!a!YA\u0008\u0005\u00049\u0002bBA\u0014\u0003\u001f\u0001\rAL\u0001\u0007_\u001a47/\u001a;\t\u000f\u0005E\u0001\u0001\"\u0011\u0002,U!\u0011QFA\u001b)\rq\u0014q\u0006\u0005\t\u00033\tI\u00031\u0001\u00022A)\u0001#!\u0008\u00024A\u0019A#!\u000e\u0005\r\u0005\u000cIC1\u0001\u0018\u0011\u001d\tI\u0004\u0001C!\u0003w\t\u0001\"\u001a8eg^KG\u000f[\u000b\u0005\u0003{\t)\u0005F\u0002?\u0003\u007fA\u0001\"!\u0007\u00028\u0001\u0007\u0011\u0011\t\t\u0006!\u0005u\u00111\t\t\u0004)\u0005\u0015CAB1\u00028\t\u0007q\u0003C\u0004\u0002J\u0001!\t%a\u0013\u0002\u0019%tG-\u001a=PMNc\u0017nY3\u0016\t\u00055\u0013Q\u000b\u000b\u0004]\u0005=\u0003\u0002CA\r\u0003\u000f\u0002\r!!\u0015\u0011\u000bA\ti\"a\u0015\u0011\u0007Q\t)\u0006\u0002\u0004b\u0003\u000f\u0012\rA\u0019\u0005\u0008\u0003\u0013\u0002A\u0011IA-+\u0011\tY&a\u0019\u0015\u000b9\ni&!\u001a\t\u0011\u0005e\u0011q\u000ba\u0001\u0003?\u0002R\u0001EA\u000f\u0003C\u00022\u0001FA2\t\u0019\t\u0017q\u000bb\u0001E\"1A*a\u0016A\u00029Bq!!\u001b\u0001\t\u0003\nY\'\u0001\tmCN$\u0018J\u001c3fq>37\u000b\\5dKV!\u0011QNA;)\rq\u0013q\u000e\u0005\t\u00033\t9\u00071\u0001\u0002rA)\u0001#!\u0008\u0002tA\u0019A#!\u001e\u0005\r\u0005\u000c9G1\u0001c\u0011\u001d\tI\u0007\u0001C!\u0003s*B!a\u001f\u0002\u0004R)a&! \u0002\u0006\"A\u0011\u0011DA<\u0001\u0004\ty\u0008E\u0003\u0011\u0003;\t\t\tE\u0002\u0015\u0003\u0007#a!YA<\u0005\u0004\u0011\u0007B\u0002=\u0002x\u0001\u0007a\u0006C\u0004\u0002\n\u0002!\t%a#\u0002\u001b\r|g\u000e^1j]N\u001cF.[2f+\u0011\ti)!&\u0015\u0007y\ny\t\u0003\u0005\u0002\u001a\u0005\u001d\u0005\u0019AAI!\u0015\u0001\u0012QDAJ!\r!\u0012Q\u0013\u0003\u0007C\u0006\u001d%\u0019A\u000c\t\u000f\u0005e\u0005\u0001\"\u0011\u0002\u001c\u0006A1m\u001c8uC&t7/\u0006\u0003\u0002\u001e\u0006\rFc\u0001 \u0002 \"9a,a&A\u0002\u0005\u0005\u0006c\u0001\u000b\u0002$\u00129\u0011QUAL\u0005\u0004\u0011\'AA!2\u0011\u001d\tI\u000b\u0001C!\u0003W\u000b1bY8se\u0016\u001c\u0008o\u001c8egV!\u0011QVA^)\u0011\ty+!0\u0015\u0007y\n\t\u000cC\u0004H\u0003O\u0003\r!a-\u0011\u000f1\t)lEA]}%\u0019\u0011q\u0017\u0004\u0003\u0013\u0019+hn\u0019;j_:\u0014\u0004c\u0001\u000b\u0002<\u00121\u0011-a*C\u0002]A\u0001\"!\u0007\u0002(\u0002\u0007\u0011q\u0018\t\u0006!\u0005u\u0011\u0011\u0018\u0005\u0008\u0003\u0007\u0004A\u0011IAc\u0003\u001dIg\u000eZ5dKN,\"!a2\u0011\t\u0005%\u0017qZ\u0007\u0003\u0003\u0017T1!!4\u0005\u0003%IW.\\;uC\ndW-\u0003\u0003\u0002R\u0006-\'!\u0002*b]\u001e,\u0007f\u0002\u0001\u0002V\u0006m\u0017q\u001c\t\u0004\u0019\u0005]\u0017bAAm\r\tQA-\u001a9sK\u000e\u000cG/\u001a3\"\u0005\u0005u\u0017a\u0018$pe^\u000c\'\u000fZ5oO\u0002J7\u000fI5oQ\u0016\u0014XM\u001c;ms\u0002*hN]3mS\u0006\u0014G.\u001a\u0011tS:\u001cW\rI5uA%\u001c\u0008E\\8uA\u0005,Ho\\7bi\u0016$\u0007%\u00198eA9,w\u000fI7fi\"|Gm\u001d\u0011dC:\u0004#-\u001a\u0011g_J<w\u000e\u001e;f]:\n#!!9\u0002\rIr\u0013\'\r\u00181\u0001"
.end annotation


# virtual methods
.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation
.end method

.method public abstract containsSlice(Lscala/collection/GenSeq;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation
.end method

.method public abstract corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
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
.end method

.method public abstract endsWith(Lscala/collection/GenSeq;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation
.end method

.method public abstract indexOf(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation
.end method

.method public abstract indexOf(Ljava/lang/Object;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation
.end method

.method public abstract indexOfSlice(Lscala/collection/GenSeq;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation
.end method

.method public abstract indexOfSlice(Lscala/collection/GenSeq;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation
.end method

.method public abstract indexWhere(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract indexWhere(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract indices()Lscala/collection/immutable/Range;
.end method

.method public abstract isDefinedAt(I)Z
.end method

.method public abstract lastIndexOf(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation
.end method

.method public abstract lastIndexOf(Ljava/lang/Object;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation
.end method

.method public abstract lastIndexOfSlice(Lscala/collection/GenSeq;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)I"
        }
    .end annotation
.end method

.method public abstract lastIndexOfSlice(Lscala/collection/GenSeq;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)I"
        }
    .end annotation
.end method

.method public abstract lastIndexWhere(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract lastIndexWhere(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract length()I
.end method

.method public abstract lengthCompare(I)I
.end method

.method public abstract prefixLength(Lscala/Function1;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract reverseIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract segmentLength(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract startsWith(Lscala/collection/GenSeq;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;)Z"
        }
    .end annotation
.end method

.method public abstract startsWith(Lscala/collection/GenSeq;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq<",
            "TB;>;I)Z"
        }
    .end annotation
.end method

.method public abstract underlying()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation
.end method
