.class public interface abstract Lscala/sys/process/ProcessBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.scala"

# interfaces
.implements Lscala/sys/process/ProcessBuilder$Source;
.implements Lscala/sys/process/ProcessBuilder$Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/sys/process/ProcessBuilder$Sink;,
        Lscala/sys/process/ProcessBuilder$Source;,
        Lscala/sys/process/ProcessBuilder$URLBuilder;,
        Lscala/sys/process/ProcessBuilder$FileBuilder;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t=aaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u000f!J|7-Z:t\u0005VLG\u000eZ3s\u0015\t\u0019A!A\u0004qe>\u001cWm]:\u000b\u0005\u00151\u0011aA:zg*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u000b\u0001Qa\"!\u0004\u0011\u0005-aQ\"\u0001\u0004\n\u000551!AB!osJ+g\r\u0005\u0002\u0010C9\u0011\u0001#E\u0007\u0002\u0005\u001d)!C\u0001E\u0001\'\u0005q\u0001K]8dKN\u001c()^5mI\u0016\u0014\u0008C\u0001\t\u0015\r\u0015\t!\u0001#\u0001\u0016\'\r!\"B\u0006\t\u0003!]I!\u0001\u0007\u0002\u0003%A\u0013xnY3tg\n+\u0018\u000e\u001c3fe&k\u0007\u000f\u001c\u0005\u00065Q!\taG\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003M1q!\u0008\u000b\u0011\u0002G\u0005aD\u0001\u0006V%2\u0013U/\u001b7eKJ\u001c2\u0001\u0008\u0006 !\t\u0001\u0013%D\u0001\u0015\r\u001d\u0011C\u0003%A\u0002\u0002\r\u0012aaU8ve\u000e,7CA\u0011\u000b\u0011\u0015)\u0013\u0005\"\u0001\'\u0003\u0019!\u0013N\\5uIQ\tq\u0005\u0005\u0002\u000cQ%\u0011\u0011F\u0002\u0002\u0005+:LG\u000fC\u0003,C\u0019EA&\u0001\u0005u_N{WO]2f+\u0005i\u0003C\u0001\t\u0001\u0011\u0015y\u0013\u0005\"\u00011\u00035!\u0003.Y:iI\u001d\u0014X-\u0019;feR\u0011Q&\r\u0005\u0006e9\u0002\raM\u0001\u0002MB\u0011Ag\u000e\u0008\u0003!UJ!A\u000e\u0002\u0002\u001fA\u0014xnY3tg&sG/\u001a:oC2L!\u0001O\u001d\u0003\t\u0019KG.\u001a\u0006\u0003m\tAQaO\u0011\u0005\u0002q\nQ\u0003\n5bg\"$sM]3bi\u0016\u0014He\u001a:fCR,\'\u000f\u0006\u0002.{!)!G\u000fa\u0001g!)q&\tC\u0001\u007fQ\u0011Q\u0006\u0011\u0005\u0007\u0003z\"\t\u0019\u0001\"\u0002\u0007=,H\u000fE\u0002\u000c\u0007\u0016K!\u0001\u0012\u0004\u0003\u0011q\u0012\u0017P\\1nKz\u0002\"\u0001\u000e$\n\u0005\u001dK$\u0001D(viB,Ho\u0015;sK\u0006l\u0007\"B\u0018\"\t\u0003IECA\u0017K\u0011\u0015Y\u0005\n1\u0001.\u0003\u0005\u0011\u0007\"B\'\"\t\u0003a\u0013aA2bi\")q*\tC\u0005!\u00061Ao\u001c$jY\u0016$2!L)S\u0011\u0015\u0011d\n1\u00014\u0011\u0015\u0019f\n1\u0001U\u0003\u0019\t\u0007\u000f]3oIB\u00111\"V\u0005\u0003-\u001a\u0011qAQ8pY\u0016\u000cgNB\u0004Y)A\u0005\u0019\u0013A-\u0003\u0017\u0019KG.\u001a\"vS2$WM]\n\u0005/*Qv\u0004\u0005\u0002!7\u001a9A\u000c\u0006I\u0001\u0004\u0003i&\u0001B*j].\u001c\"a\u0017\u0006\t\u000b\u0015ZF\u0011\u0001\u0014\t\u000b\u0001\\f\u0011\u0003\u0017\u0002\rQ|7+\u001b8l\u0011\u0015\u00117\u000c\"\u0001d\u0003)!\u0003.Y:iI1,7o\u001d\u000b\u0003[\u0011DQAM1A\u0002MBQAY.\u0005\u0002\u0019$\"!L4\t\u000bI*\u0007\u0019\u00015\u0011\u0005QJ\u0017B\u00016:\u0005\r)&\u000b\u0014\u0005\u0006En#\t\u0001\u001c\u000b\u0003[5DaA\\6\u0005\u0002\u0004y\u0017AA5o!\rY1\t\u001d\t\u0003iEL!A]\u001d\u0003\u0017%s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\u0006En#\t\u0001\u001e\u000b\u0003[UDQaS:A\u00025BQa^,\u0007\u0002a\u000cq\u0002\n5bg\"$C.Z:tI1,7o\u001d\u000b\u0003[eDQA\r<A\u0002MBQa^,\u0007\u0002m$\"!\u000c?\t\u000buT\u0008\u0019\u00015\u0002\u0003UDQa^,\u0007\u0002}$2!LA\u0001\u0011\u001d\t\u0019A CA\u0002=\u000c\u0011!\u001b\u0005\u0007o^3\t!a\u0002\u0015\u00075\nI\u0001C\u0004\u0002\u000c\u0005\u0015\u0001\u0019A\u0017\u0002\u0003A\u0004\"aD.\t\u000b\u0015\u0002A\u0011\u0001\u0014\t\u000f\u0005M\u0001A\"\u0001\u0002\u0016\u0005QAEY1oO\u0012\u0012\u0017M\\4\u0016\u0005\u0005]\u0001\u0003BA\r\u0003?q1aCA\u000e\u0013\r\tiBB\u0001\u0007!J,G-\u001a4\n\t\u0005\u0005\u00121\u0005\u0002\u0007\'R\u0014\u0018N\\4\u000b\u0007\u0005ua\u0001C\u0004\u0002\u0014\u00011\t!a\n\u0015\t\u0005]\u0011\u0011\u0006\u0005\t\u0003W\t)\u00031\u0001\u0002.\u0005\u0019An\\4\u0011\u0007A\ty#C\u0002\u00022\t\u0011Q\u0002\u0015:pG\u0016\u001c8\u000fT8hO\u0016\u0014\u0008bBA\u001b\u0001\u0019\u0005\u0011QC\u0001\u0010I\t\u000cgn\u001a\u0013cC:<G\u0005\\3tg\"9\u0011Q\u0007\u0001\u0007\u0002\u0005eB\u0003BA\u000c\u0003wA\u0001\"a\u000b\u00028\u0001\u0007\u0011Q\u0006\u0005\u0008\u0003\u007f\u0001a\u0011AA!\u0003)a\u0017N\\3TiJ,\u0017-\\\u000b\u0003\u0003\u0007\u0002b!!\u0012\u0002L\u0005]abA\u0006\u0002H%\u0019\u0011\u0011\n\u0004\u0002\u000fA\u000c7m[1hK&!\u0011QJA(\u0005\u0019\u0019FO]3b[*\u0019\u0011\u0011\n\u0004\t\u000f\u0005M\u0003\u0001\"\u0001\u0002B\u0005)A.\u001b8fg\"B\u0011\u0011KA,\u0003;\n\t\u0007E\u0002\u000c\u00033J1!a\u0017\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0003\u0003?\nq#V:fA1Lg.Z*ue\u0016\u000cW\u000eI5ogR,\u0017\r\u001a\u0018\"\u0005\u0005\r\u0014A\u0002\u001a/cEr\u0003\u0007C\u0004\u0002@\u00011\t!a\u001a\u0015\t\u0005\r\u0013\u0011\u000e\u0005\t\u0003W\t)\u00071\u0001\u0002.!9\u00111\u000b\u0001\u0005\u0002\u00055D\u0003BA\"\u0003_B\u0001\"a\u000b\u0002l\u0001\u0007\u0011Q\u0006\u0015\t\u0003W\n9&a\u001d\u0002b\u0005\u0012\u0011QO\u0001\u0014+N,\u0007e\u001d;sK\u0006l\u0007%\u001b8ti\u0016\u000cGM\u000c\u0005\u0008\u0003s\u0002a\u0011AA!\u0003Aa\u0017N\\3TiJ,\u0017-\\0%E\u0006tw\rC\u0004\u0002~\u0001!\t!!\u0011\u0002\u00171Lg.Z:`I\t\u000cgn\u001a\u0015\t\u0003w\n9&!!\u0002b\u0005\u0012\u00111Q\u0001\u001a+N,\u0007\u0005\\5oKN#(/Z1n?\u0006\u0002\u0013N\\:uK\u0006$g\u0006C\u0004\u0002z\u00011\t!a\"\u0015\t\u0005\r\u0013\u0011\u0012\u0005\t\u0003W\t)\t1\u0001\u0002.!9\u0011Q\u0010\u0001\u0005\u0002\u00055E\u0003BA\"\u0003\u001fC\u0001\"a\u000b\u0002\u000c\u0002\u0007\u0011Q\u0006\u0015\t\u0003\u0017\u000b9&a%\u0002b\u0005\u0012\u0011QS\u0001\u0016+N,\u0007e\u001d;sK\u0006lw,\t\u0011j]N$X-\u00193/\u0011\u001d\tI\n\u0001D\u0001\u00037\u000bQ\u0001\n2b]\u001e,\"!!(\u0011\u0007-\ty*C\u0002\u0002\"\u001a\u00111!\u00138u\u0011\u001d\tI\n\u0001D\u0001\u0003K#B!!(\u0002(\"A\u00111FAR\u0001\u0004\ti\u0003C\u0004\u0002,\u00021\t!a\'\u0002\u0015\u0011\u0012\u0017M\\4%Y\u0016\u001c8\u000fC\u0004\u0002,\u00021\t!a,\u0015\t\u0005u\u0015\u0011\u0017\u0005\t\u0003W\ti\u000b1\u0001\u0002.!9\u0011Q\u0017\u0001\u0007\u0002\u0005]\u0016a\u0001:v]R\u0011\u0011\u0011\u0018\t\u0004!\u0005m\u0016bAA_\u0005\t9\u0001K]8dKN\u001c\u0008bBA[\u0001\u0019\u0005\u0011\u0011\u0019\u000b\u0005\u0003s\u000b\u0019\r\u0003\u0005\u0002,\u0005}\u0006\u0019AA\u0017\u0011\u001d\t)\u000c\u0001D\u0001\u0003\u000f$B!!/\u0002J\"A\u00111ZAc\u0001\u0004\ti-\u0001\u0002j_B\u0019\u0001#a4\n\u0007\u0005E\'AA\u0005Qe>\u001cWm]:J\u001f\"9\u0011Q\u0017\u0001\u0007\u0002\u0005UG\u0003BA]\u0003/Dq!!7\u0002T\u0002\u0007A+\u0001\u0007d_:tWm\u0019;J]B,H\u000fC\u0004\u00026\u00021\t!!8\u0015\r\u0005e\u0016q\\Aq\u0011!\tY#a7A\u0002\u00055\u0002bBAm\u00037\u0004\r\u0001\u0016\u0005\u0008\u0003K\u0004a\u0011AAt\u00035!\u0003.Y:iI\u0005l\u0007\u000fJ1naR\u0019Q&!;\t\u000f\u0005-\u00181\u001da\u0001[\u0005)q\u000e\u001e5fe\"9\u0011q\u001e\u0001\u0007\u0002\u0005E\u0018!\u0004\u0013iCNDGEY1sI\t\u000c\'\u000fF\u0002.\u0003gDq!a;\u0002n\u0002\u0007Q\u0006C\u0004\u0002x\u00021\t!!?\u0002\u0013\u0011B\u0017m\u001d5%E\u0006\u0014HcA\u0017\u0002|\"9\u00111^A{\u0001\u0004i\u0003bBA\u0000\u0001\u0019\u0005!\u0011A\u0001\u0010I!\u000c7\u000f\u001b\u0013iCNDG\u0005[1tQR\u0019QFa\u0001\t\u000f\u0005-\u0018Q a\u0001[!9!q\u0001\u0001\u0007\u0002\t%\u0011!C2b]BK\u0007/\u001a+p+\u0005!\u0006b\u0002B\u0007\u0001\u0019\u0005!\u0011B\u0001\rQ\u0006\u001cX\t_5u-\u0006dW/\u001a"
.end annotation


# virtual methods
.method public abstract $bang()I
.end method

.method public abstract $bang(Lscala/sys/process/ProcessLogger;)I
.end method

.method public abstract $bang$bang()Ljava/lang/String;
.end method

.method public abstract $bang$bang(Lscala/sys/process/ProcessLogger;)Ljava/lang/String;
.end method

.method public abstract $bang$bang$less()Ljava/lang/String;
.end method

.method public abstract $bang$bang$less(Lscala/sys/process/ProcessLogger;)Ljava/lang/String;
.end method

.method public abstract $bang$less()I
.end method

.method public abstract $bang$less(Lscala/sys/process/ProcessLogger;)I
.end method

.method public abstract $hash$amp$amp(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$bar(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$bar$bar(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$hash$hash(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract canPipeTo()Z
.end method

.method public abstract hasExitValue()Z
.end method

.method public abstract lineStream()Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lineStream(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lineStream_$bang()Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lineStream_$bang(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lines()Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lines(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lines_$bang()Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract lines_$bang(Lscala/sys/process/ProcessLogger;)Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessLogger;",
            ")",
            "Lscala/collection/immutable/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract run()Lscala/sys/process/Process;
.end method

.method public abstract run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;
.end method

.method public abstract run(Lscala/sys/process/ProcessLogger;)Lscala/sys/process/Process;
.end method

.method public abstract run(Lscala/sys/process/ProcessLogger;Z)Lscala/sys/process/Process;
.end method

.method public abstract run(Z)Lscala/sys/process/Process;
.end method
