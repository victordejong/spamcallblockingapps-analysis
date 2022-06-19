.class public interface abstract Lscala/sys/process/ProcessImplicits;
.super Ljava/lang/Object;
.source "Process.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001E4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\tQe>\u001cWm]:J[Bd\u0017nY5ug*\u00111\u0001B\u0001\u0008aJ|7-Z:t\u0015\t)a!A\u0002tsNT\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001\'\t\u0001!\u0002\u0005\u0002\u000c\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001aDQa\u0004\u0001\u0005\u0002A\ta\u0001J5oSR$C#A\t\u0011\u0005-\u0011\u0012BA\n\u0007\u0005\u0011)f.\u001b;\t\u000bU\u0001A1\u0001\u000c\u0002#\t,\u0018\u000e\u001c3feN$v\u000e\u0015:pG\u0016\u001c8/\u0006\u0002\u0018_Q\u0011\u0001\u0004\u000f\u000b\u00033!\u00022AG\u000f!\u001d\tY1$\u0003\u0002\u001d\r\u00059\u0001/Y2lC\u001e,\u0017B\u0001\u0010 \u0005\r\u0019V-\u001d\u0006\u00039\u0019\u0001\"!I\u0013\u000f\u0005\t\u001aS\"\u0001\u0002\n\u0005\u0011\u0012\u0011A\u0004)s_\u000e,7o\u001d\"vS2$WM]\u0005\u0003M\u001d\u0012aaU8ve\u000e,\'B\u0001\u0013\u0003\u0011\u0015IC\u0003q\u0001+\u0003\u001d\u0019wN\u001c<feR\u0004BaC\u0016.A%\u0011AF\u0002\u0002\n\rVt7\r^5p]F\u0002\"AL\u0018\r\u0001\u0011)\u0001\u0007\u0006b\u0001c\t\tA+\u0005\u00023kA\u00111bM\u0005\u0003i\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u000cm%\u0011qG\u0002\u0002\u0004\u0003:L\u0008\"B\u001d\u0015\u0001\u0004Q\u0014\u0001\u00032vS2$WM]:\u0011\u0007iiR\u0006C\u0003=\u0001\u0011\rQ(\u0001\tck&dG-\u001a:U_B\u0013xnY3tgR\u0011a(\u0011\t\u0003E}J!\u0001\u0011\u0002\u0003\u001dA\u0013xnY3tg\n+\u0018\u000e\u001c3fe\")!i\u000fa\u0001\u0007\u00069!-^5mI\u0016\u0014\u0008C\u0001#H\u001d\t\u0011S)\u0003\u0002G\u0005\u0005y\u0001O]8dKN\u001c\u0018J\u001c;fe:\u000cG.\u0003\u0002I\u0013\ny!\n\u0015:pG\u0016\u001c8OQ;jY\u0012,\'O\u0003\u0002G\u0005!)1\n\u0001C\u0002\u0019\u0006ia-\u001b7f)>\u0004&o\\2fgN$\"!\u0014)\u0011\u0005\u0005r\u0015BA((\u0005-1\u0015\u000e\\3Ck&dG-\u001a:\t\u000bES\u0005\u0019\u0001*\u0002\t\u0019LG.\u001a\t\u0003\tNK!\u0001V%\u0003\t\u0019KG.\u001a\u0005\u0006-\u0002!\u0019aV\u0001\rkJdGk\u001c)s_\u000e,7o\u001d\u000b\u00031n\u0003\"!I-\n\u0005i;#AC+S\u0019\n+\u0018\u000e\u001c3fe\")A,\u0016a\u0001;\u0006\u0019QO\u001d7\u0011\u0005\u0011s\u0016BA0J\u0005\r)&\u000b\u0014\u0005\u0006C\u0002!\u0019AY\u0001\u0010gR\u0014\u0018N\\4U_B\u0013xnY3tgR\u0011ah\u0019\u0005\u0006I\u0002\u0004\r!Z\u0001\u0008G>lW.\u00198e!\t1\u0017N\u0004\u0002\u000cO&\u0011\u0001NB\u0001\u0007!J,G-\u001a4\n\u0005)\\\'AB*ue&twM\u0003\u0002i\r!)Q\u000e\u0001C\u0002]\u0006\u00112\u000f\u001e:j]\u001e\u001cV-\u001d+p!J|7-Z:t)\tqt\u000eC\u0003eY\u0002\u0007\u0001\u000fE\u0002\u001b;\u0015\u0004"
.end annotation


# virtual methods
.method public abstract builderToProcess(Ljava/lang/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract buildersToProcess(Lscala/collection/Seq;Lscala/Function1;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "TT;>;",
            "Lscala/Function1<",
            "TT;",
            "Lscala/sys/process/ProcessBuilder$Source;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/sys/process/ProcessBuilder$Source;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fileToProcess(Ljava/io/File;)Lscala/sys/process/ProcessBuilder$FileBuilder;
.end method

.method public abstract stringSeqToProcess(Lscala/collection/Seq;)Lscala/sys/process/ProcessBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation
.end method

.method public abstract stringToProcess(Ljava/lang/String;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract urlToProcess(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder$URLBuilder;
.end method
