.class public interface abstract Lscala/collection/GenTraversableLike;
.super Ljava/lang/Object;
.source "GenTraversableLike.scala"

# interfaces
.implements Lscala/collection/GenTraversableOnce;
.implements Lscala/collection/Parallelizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenTraversableOnce<",
        "TA;>;",
        "Lscala/collection/Parallelizable<",
        "TA;",
        "Lscala/collection/parallel/ParIterable<",
        "TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\tUbaB\u0001\u0003!\u0003\r\na\u0002\u0002\u0013\u000f\u0016tGK]1wKJ\u001c\u0018M\u00197f\u0019&\\WM\u0003\u0002\u0004\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!F\u0002\t\'\u0019\u001aB\u0001A\u0005\u000e3A\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0004\u0003:L\u0008c\u0001\u0008\u0010#5\t!!\u0003\u0002\u0011\u0005\t\u0011r)\u001a8Ue\u00064XM]:bE2,wJ\\2f!\t\u00112\u0003\u0004\u0001\u0005\rQ\u0001AQ1\u0001\u0016\u0005\u0005\t\u0015C\u0001\u000c\n!\tQq#\u0003\u0002\u0019\t\t9aj\u001c;iS:<\u0007\u0003\u0002\u0008\u001b#qI!a\u0007\u0002\u0003\u001dA\u000b\'/\u00197mK2L\'0\u00192mKB\u0019Q\u0004I\t\u000e\u0003yQ!a\u0008\u0002\u0002\u0011A\u000c\'/\u00197mK2L!!\t\u0010\u0003\u0017A\u000b\'/\u0013;fe\u0006\u0014G.\u001a\u0005\u0006G\u00011\t\u0001J\u0001\u0005e\u0016\u0004(/F\u0001&!\t\u0011b\u0005\u0002\u0004(\u0001\u0011\u0015\r!\u0006\u0002\u0005%\u0016\u0004(\u000fC\u0003*\u0001\u0019\u0005!&\u0001\u0003tSj,W#A\u0016\u0011\u0005)a\u0013BA\u0017\u0005\u0005\rIe\u000e\u001e\u0005\u0006_\u00011\t\u0001M\u0001\u0005Q\u0016\u000cG-F\u0001\u0012\u0011\u0015\u0011\u0004A\"\u00014\u0003)AW-\u00193PaRLwN\\\u000b\u0002iA\u0019!\"N\t\n\u0005Y\"!AB(qi&|g\u000eC\u00039\u0001\u0019\u0005\u0011(\u0001\njgR\u0013\u0018M^3sg\u0006\u0014G.Z!hC&tW#\u0001\u001e\u0011\u0005)Y\u0014B\u0001\u001f\u0005\u0005\u001d\u0011un\u001c7fC:DQA\u0010\u0001\u0007\u0002\u0011\nA\u0001^1jY\")\u0001\t\u0001D\u0001a\u0005!A.Y:u\u0011\u0015\u0011\u0005A\"\u00014\u0003)a\u0017m\u001d;PaRLwN\u001c\u0005\u0006\t\u00021\t\u0001J\u0001\u0005S:LG\u000fC\u0003G\u0001\u0019\u0005q)\u0001\u0003tG\u0006tWc\u0001%X\u0019R\u0011\u0011j\u0018\u000b\u0003\u0015j#\"a\u0013(\u0011\u0005IaE!B\'F\u0005\u0004)\"\u0001\u0002+iCRDQaT#A\u0004A\u000b1a\u00192g!\u0015\tF+\n,L\u001b\u0005\u0011&BA*\u0003\u0003\u001d9WM\\3sS\u000eL!!\u0016*\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\u0011\u0005I9F!\u0002-F\u0005\u0004I&!\u0001\"\u0012\u0005EI\u0001\"B.F\u0001\u0004a\u0016AA8q!\u0015QQL\u0016,W\u0013\tqFAA\u0005Gk:\u001cG/[8oe!)\u0001-\u0012a\u0001-\u0006\t!\u0010C\u0003c\u0001\u0019\u00051-\u0001\u0005tG\u0006tG*\u001a4u+\r!W\u000e\u001b\u000b\u0003KB$\"A\u001a8\u0015\u0005\u001dL\u0007C\u0001\ni\t\u0015i\u0015M1\u0001\u0016\u0011\u0015Q\u0017\rq\u0001l\u0003\t\u0011g\rE\u0003R)\u0016bw\r\u0005\u0002\u0013[\u0012)\u0001,\u0019b\u0001+!)1,\u0019a\u0001_B)!\"\u00187\u0012Y\")\u0001-\u0019a\u0001Y\")!\u000f\u0001D\u0001g\u0006I1oY1o%&<\u0007\u000e^\u000b\u0004irDHCA;\u0000)\t1X\u0010\u0006\u0002xsB\u0011!\u0003\u001f\u0003\u0006\u001bF\u0014\r!\u0006\u0005\u0006UF\u0004\u001dA\u001f\t\u0006#R+3p\u001e\t\u0003%q$Q\u0001W9C\u0002UAQaW9A\u0002y\u0004RAC/\u0012wnDQ\u0001Y9A\u0002mDs!]A\u0002\u0003\u001f\t\u0019\u0002\u0005\u0003\u0002\u0006\u0005-QBAA\u0004\u0015\r\tI\u0001B\u0001\u000bC:tw\u000e^1uS>t\u0017\u0002BA\u0007\u0003\u000f\u0011\u0011\"\\5he\u0006$\u0018n\u001c8\"\u0005\u0005E\u0011\u0001\u001b+iK\u0002\u0012W\r[1wS>\u0014\u0008e\u001c4!AN\u001c\u0017M\u001c*jO\"$\u0008\r\t5bg\u0002\u001a\u0007.\u00198hK\u0012t\u0003\u0005\u00165fAA\u0014XM^5pkN\u0004#-\u001a5bm&|\'\u000fI2b]\u0002\u0012W\r\t:faJ|G-^2fI\u0002:\u0018\u000e\u001e5!g\u000e\u000cgNU5hQRt#/\u001a<feN,g&\t\u0002\u0002\u0016\u0005)!GL\u001d/a!9\u0011\u0011\u0004\u0001\u0007\u0002\u0005m\u0011a\u00024pe\u0016\u000c7\r[\u000b\u0005\u0003;\t\t\u0004\u0006\u0003\u0002 \u0005\u0015\u0002c\u0001\u0006\u0002\"%\u0019\u00111\u0005\u0003\u0003\tUs\u0017\u000e\u001e\u0005\t\u0003O\t9\u00021\u0001\u0002*\u0005\ta\r\u0005\u0004\u000b\u0003W\t\u0012qF\u0005\u0004\u0003[!!!\u0003$v]\u000e$\u0018n\u001c82!\r\u0011\u0012\u0011\u0007\u0003\u0008\u0003g\t9B1\u0001\u0016\u0005\u0005)\u0006bBA\u001c\u0001\u0019\u0005\u0011\u0011H\u0001\u0004[\u0006\u0004XCBA\u001e\u0003\u0013\n\t\u0005\u0006\u0003\u0002>\u0005-C\u0003BA \u0003\u0007\u00022AEA!\t\u0019i\u0015Q\u0007b\u0001+!9!.!\u000eA\u0004\u0005\u0015\u0003cB)UK\u0005\u001d\u0013q\u0008\t\u0004%\u0005%CA\u0002-\u00026\t\u0007Q\u0003\u0003\u0005\u0002(\u0005U\u0002\u0019AA\'!\u0019Q\u00111F\t\u0002H!9\u0011\u0011\u000b\u0001\u0007\u0002\u0005M\u0013aB2pY2,7\r^\u000b\u0007\u0003+\n\u0019\'a\u0017\u0015\t\u0005]\u0013Q\r\u000b\u0005\u00033\ni\u0006E\u0002\u0013\u00037\"a!TA(\u0005\u0004)\u0002b\u00026\u0002P\u0001\u000f\u0011q\u000c\t\u0008#R+\u0013\u0011MA-!\r\u0011\u00121\r\u0003\u00071\u0006=#\u0019A\u000b\t\u0011\u0005\u001d\u0014q\na\u0001\u0003S\n!\u0001\u001d4\u0011\r)\tY\'EA1\u0013\r\ti\u0007\u0002\u0002\u0010!\u0006\u0014H/[1m\rVt7\r^5p]\"9\u0011\u0011\u000f\u0001\u0007\u0002\u0005M\u0014a\u00024mCRl\u0015\r]\u000b\u0007\u0003k\n\u0019)a\u001f\u0015\t\u0005]\u0014Q\u0011\u000b\u0005\u0003s\ni\u0008E\u0002\u0013\u0003w\"a!TA8\u0005\u0004)\u0002b\u00026\u0002p\u0001\u000f\u0011q\u0010\t\u0008#R+\u0013\u0011QA=!\r\u0011\u00121\u0011\u0003\u00071\u0006=$\u0019A\u000b\t\u0011\u0005\u001d\u0012q\u000ea\u0001\u0003\u000f\u0003bACA\u0016#\u0005%\u0005\u0003\u0002\u0008\u0010\u0003\u0003Cq!!$\u0001\r\u0003\ty)\u0001\u0006%a2,8\u000f\n9mkN,b!!%\u0002 \u0006]E\u0003BAJ\u0003C#B!!&\u0002\u001aB\u0019!#a&\u0005\r5\u000bYI1\u0001\u0016\u0011\u001dQ\u00171\u0012a\u0002\u00037\u0003r!\u0015+&\u0003;\u000b)\nE\u0002\u0013\u0003?#a\u0001WAF\u0005\u0004I\u0006\u0002CAR\u0003\u0017\u0003\r!!*\u0002\tQD\u0017\r\u001e\t\u0005\u001d=\ti\nC\u0004\u0002*\u00021\t!a+\u0002\r\u0019LG\u000e^3s)\r)\u0013Q\u0016\u0005\t\u0003_\u000b9\u000b1\u0001\u00022\u0006!\u0001O]3e!\u0015Q\u00111F\t;\u0011\u001d\t)\u000c\u0001D\u0001\u0003o\u000b\u0011BZ5mi\u0016\u0014hj\u001c;\u0015\u0007\u0015\nI\u000c\u0003\u0005\u00020\u0006M\u0006\u0019AAY\u0011\u001d\ti\u000c\u0001D\u0001\u0003\u007f\u000b\u0011\u0002]1si&$\u0018n\u001c8\u0015\t\u0005\u0005\u0017q\u0019\t\u0006\u0015\u0005\rW%J\u0005\u0004\u0003\u000b$!A\u0002+va2,\'\u0007\u0003\u0005\u00020\u0006m\u0006\u0019AAY\u0011\u001d\tY\r\u0001D\u0001\u0003\u001b\u000cqa\u001a:pkB\u0014\u00150\u0006\u0003\u0002P\u0006eG\u0003BAi\u0003;\u0004bADAj\u0003/,\u0013bAAk\u0005\t1q)\u001a8NCB\u00042AEAm\t\u001d\tY.!3C\u0002U\u0011\u0011a\u0013\u0005\t\u0003O\tI\r1\u0001\u0002`B1!\"a\u000b\u0012\u0003/Dq!a9\u0001\r\u0003\t)/\u0001\u0003uC.,GcA\u0013\u0002h\"9\u0011\u0011^Aq\u0001\u0004Y\u0013!\u00018\t\u000f\u00055\u0008A\"\u0001\u0002p\u0006!AM]8q)\r)\u0013\u0011\u001f\u0005\u0008\u0003S\u000cY\u000f1\u0001,\u0011\u001d\t)\u0010\u0001D\u0001\u0003o\u000cQa\u001d7jG\u0016$R!JA}\u0003{Dq!a?\u0002t\u0002\u00071&\u0001\u0005v]\u000e|fM]8n\u0011\u001d\ty0a=A\u0002-\n\u0011\"\u001e8d?VtG/\u001b7\t\u000f\t\r\u0001A\"\u0001\u0003\u0006\u000591\u000f\u001d7ji\u0006#H\u0003BAa\u0005\u000fAq!!;\u0003\u0002\u0001\u00071\u0006C\u0004\u0003\u000c\u00011\tA!\u0004\u0002\u0013Q\u000c7.Z,iS2,GcA\u0013\u0003\u0010!A\u0011q\u0016B\u0005\u0001\u0004\t\t\u000cC\u0004\u0003\u0014\u00011\tA!\u0006\u0002\tM\u0004\u0018M\u001c\u000b\u0005\u0003\u0003\u00149\u0002\u0003\u0005\u00020\nE\u0001\u0019AAY\u0011\u001d\u0011Y\u0002\u0001D\u0001\u0005;\t\u0011\u0002\u001a:pa^C\u0017\u000e\\3\u0015\u0007\u0015\u0012y\u0002\u0003\u0005\u00020\ne\u0001\u0019AAY\u0011\u001d\u0011\u0019\u0003\u0001D\u0001\u0005K\tAb\u001d;sS:<\u0007K]3gSb,\"Aa\n\u0011\t\t%\"q\u0006\u0008\u0004\u0015\t-\u0012b\u0001B\u0017\t\u00051\u0001K]3eK\u001aLAA!\r\u00034\t11\u000b\u001e:j]\u001eT1A!\u000c\u0005\u0001"
.end annotation


# virtual methods
.method public abstract $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract drop(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method

.method public abstract filter(Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method

.method public abstract filterNot(Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method

.method public abstract flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract foreach(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation
.end method

.method public abstract groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TK;>;)",
            "Lscala/collection/GenMap<",
            "TK;TRepr;>;"
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

.method public abstract headOption()Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract init()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract isTraversableAgain()Z
.end method

.method public abstract last()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract lastOption()Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract partition(Lscala/Function1;)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "TRepr;TRepr;>;"
        }
    .end annotation
.end method

.method public abstract repr()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TB;TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2<",
            "TA;TB;TB;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract slice(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TRepr;"
        }
    .end annotation
.end method

.method public abstract span(Lscala/Function1;)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "TRepr;TRepr;>;"
        }
    .end annotation
.end method

.method public abstract splitAt(I)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "TRepr;TRepr;>;"
        }
    .end annotation
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method

.method public abstract tail()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract take(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method
