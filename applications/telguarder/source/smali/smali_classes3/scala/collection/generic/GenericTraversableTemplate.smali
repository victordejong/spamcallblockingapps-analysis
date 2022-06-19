.class public interface abstract Lscala/collection/generic/GenericTraversableTemplate;
.super Ljava/lang/Object;
.source "GenericTraversableTemplate.scala"

# interfaces
.implements Lscala/collection/generic/HasNewBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "CC::",
        "Lscala/collection/GenTraversable<",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/HasNewBuilder<",
        "TA;TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005EdaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u001b\u000f\u0016tWM]5d)J\u000cg/\u001a:tC\ndW\rV3na2\u000cG/\u001a\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b+\u0001\u001a2\u0001A\u0006\u0010!\taQ\"D\u0001\u0007\u0013\tqaA\u0001\u0004B]f\u0014VM\u001a\t\u0005!E\u0019b$D\u0001\u0003\u0013\t\u0011\"AA\u0007ICNtUm\u001e\"vS2$WM\u001d\t\u0003)Ua\u0001\u0001\u0002\u0004\u0017\u0001\u0011\u0015\ra\u0006\u0002\u0002\u0003F\u0011\u0001d\u0007\t\u0003\u0019eI!A\u0007\u0004\u0003\u000f9{G\u000f[5oOB\u0011A\u0002H\u0005\u0003;\u0019\u00111!\u00118zU\ty2\u0006E\u0002\u0015AM!a!\t\u0001\u0005\u0006\u0004\u0011#AA\"D+\t\u0019\u0013&\u0005\u0002\u0019IA\u0019QE\n\u0015\u000e\u0003\u0011I!a\n\u0003\u0003\u001d\u001d+g\u000e\u0016:bm\u0016\u00148/\u00192mKB\u0011A#\u000b\u0003\u0006U\u0001\u0012\ra\u0006\u0002\u00021.\nA\u0006\u0005\u0002.e5\taF\u0003\u00020a\u0005IQO\\2iK\u000e\\W\r\u001a\u0006\u0003c\u0019\t!\"\u00198o_R\u000cG/[8o\u0013\t\u0019dFA\tv]\u000eDWmY6fIZ\u000b\'/[1oG\u0016DQ!\u000e\u0001\u0005\u0002Y\na\u0001J5oSR$C#A\u001c\u0011\u00051A\u0014BA\u001d\u0007\u0005\u0011)f.\u001b;\t\u000bm\u0002a\u0011\u0001\u001f\u0002\u000f\u0019|\'/Z1dQV\u0011Q\u0008\u0012\u000b\u0003oyBQa\u0010\u001eA\u0002\u0001\u000b\u0011A\u001a\t\u0005\u0019\u0005\u001b2)\u0003\u0002C\r\tIa)\u001e8di&|g.\r\t\u0003)\u0011#Q!\u0012\u001eC\u0002]\u0011\u0011!\u0016\u0005\u0006\u000f\u00021\t\u0001S\u0001\u0005Q\u0016\u000cG-F\u0001\u0014\u0011\u0015Q\u0005A\"\u0001L\u0003\u001dI7/R7qif,\u0012\u0001\u0014\t\u0003\u00195K!A\u0014\u0004\u0003\u000f\t{w\u000e\\3b]\")\u0001\u000b\u0001D\u0001#\u0006I1m\\7qC:LwN\\\u000b\u0002%B\u0019\u0001cU+\n\u0005Q\u0013!\u0001E$f]\u0016\u0014\u0018nY\"p[B\u000cg.[8o!\t!\u0002\u0005\u0003\u0004X\u0001\u0001&\t\u0002W\u0001\u000b]\u0016<()^5mI\u0016\u0014X#A-\u0011\tik6cH\u0007\u00027*\u0011A\u000cB\u0001\u0008[V$\u0018M\u00197f\u0013\tq6LA\u0004Ck&dG-\u001a:\t\u000b\u0001\u0004A\u0011A1\u0002\u001d\u001d,g.\u001a:jG\n+\u0018\u000e\u001c3feV\u0011!-Z\u000b\u0002GB!!,\u00183h!\t!R\rB\u0003g?\n\u0007qCA\u0001C!\r!\u0002\u0005\u001a\u0005\u0006S\u0002!IA[\u0001\u000bg\u0016\u000cX/\u001a8uS\u0006dW#A6\u0011\u0007\u0015b7#\u0003\u0002n\t\tyAK]1wKJ\u001c\u0018M\u00197f\u001f:\u001cW\rC\u0003p\u0001\u0011\u0005\u0001/A\u0003v]jL\u0007/F\u0002ron$\"A]?\u0011\t1\u0019X/_\u0005\u0003i\u001a\u0011a\u0001V;qY\u0016\u0014\u0004c\u0001\u000b!mB\u0011Ac\u001e\u0003\u0006q:\u0014\ra\u0006\u0002\u0003\u0003F\u00022\u0001\u0006\u0011{!\t!2\u0010B\u0003}]\n\u0007qC\u0001\u0002Be!)aP\u001ca\u0002\u007f\u00061\u0011m\u001d)bSJ\u0004R\u0001D!\u0014\u0003\u0003\u0001B\u0001D:wu\"9\u0011Q\u0001\u0001\u0005\u0002\u0005\u001d\u0011AB;ou&\u00048\'\u0006\u0005\u0002\n\u0005U\u00111DA\u0011)\u0011\tY!!\n\u0011\u00131\ti!!\u0005\u0002\u0018\u0005u\u0011bAA\u0008\r\t1A+\u001e9mKN\u0002B\u0001\u0006\u0011\u0002\u0014A\u0019A#!\u0006\u0005\ra\u000c\u0019A1\u0001\u0018!\u0011!\u0002%!\u0007\u0011\u0007Q\tY\u0002\u0002\u0004}\u0003\u0007\u0011\ra\u0006\t\u0005)\u0001\ny\u0002E\u0002\u0015\u0003C!q!a\t\u0002\u0004\t\u0007qC\u0001\u0002Bg!A\u0011qEA\u0002\u0001\u0008\tI#\u0001\u0005bgR\u0013\u0018\u000e\u001d7f!\u0015a\u0011iEA\u0016!%a\u0011QBA\n\u00033\ty\u0002C\u0004\u00020\u0001!\t!!\r\u0002\u000f\u0019d\u0017\r\u001e;f]V!\u00111GA\u001d)\u0011\t)$a\u000f\u0011\tQ\u0001\u0013q\u0007\t\u0004)\u0005eBA\u00024\u0002.\t\u0007q\u0003\u0003\u0005\u0002>\u00055\u00029AA \u00035\t7\u000f\u0016:bm\u0016\u00148/\u00192mKB)A\"Q\n\u0002BA)Q%a\u0011\u00028%\u0019\u0011Q\t\u0003\u0003%\u001d+g\u000e\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0005\u0008\u0003\u0013\u0002A\u0011AA&\u0003%!(/\u00198ta>\u001cX-\u0006\u0003\u0002N\u0005]C\u0003BA(\u00033\u0002B\u0001\u0006\u0011\u0002R)\u001a\u00111K\u0016\u0011\tQ\u0001\u0013Q\u000b\t\u0004)\u0005]CA\u00024\u0002H\t\u0007q\u0003\u0003\u0005\u0002>\u0005\u001d\u00039AA.!\u0015a\u0011iEA/!\u0015)\u00131IA+Q!\t9%!\u0019\u0002j\u00055\u0004\u0003BA2\u0003Kj\u0011\u0001M\u0005\u0004\u0003O\u0002$!C7jOJ\u000cG/[8oC\t\tY\'\u0001-aiJ\u000cgn\u001d9pg\u0016\u0004\u0007\u0005\u001e5s_^\u001c\u0008%\u00198!A&cG.Z4bY\u0006\u0013x-^7f]R,\u0005pY3qi&|g\u000e\u0019\u0011jM\u0002\u001aw\u000e\u001c7fGRLwN\\:!CJ,\u0007E\\8uAUt\u0017NZ8s[2L\u0008e]5{K\u0012t\u0013EAA8\u0003\u0015\u0011d&\u000f\u00181\u0001"
.end annotation


# virtual methods
.method public abstract companion()Lscala/collection/generic/GenericCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "TCC;>;"
        }
    .end annotation
.end method

.method public abstract flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)TCC;"
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

.method public abstract genericBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder<",
            "TB;TCC;>;"
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

.method public abstract isEmpty()Z
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TA;TCC;>;"
        }
    .end annotation
.end method

.method public abstract transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/collection/GenTraversableOnce<",
            "TB;>;>;)TCC;"
        }
    .end annotation
.end method

.method public abstract unzip(Lscala/Function1;)Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Tuple2<",
            "TA1;TA2;>;>;)",
            "Lscala/Tuple2<",
            "TCC;TCC;>;"
        }
    .end annotation
.end method

.method public abstract unzip3(Lscala/Function1;)Lscala/Tuple3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "A3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Tuple3<",
            "TA1;TA2;TA3;>;>;)",
            "Lscala/Tuple3<",
            "TCC;TCC;TCC;>;"
        }
    .end annotation
.end method
