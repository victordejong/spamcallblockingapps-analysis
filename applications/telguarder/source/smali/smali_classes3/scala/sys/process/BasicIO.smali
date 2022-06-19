.class public final Lscala/sys/process/BasicIO;
.super Ljava/lang/Object;
.source "BasicIO.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/sys/process/BasicIO$Streamed;,
        Lscala/sys/process/BasicIO$Streamed$;,
        Lscala/sys/process/BasicIO$Uncloseable;,
        Lscala/sys/process/BasicIO$Uncloseable$;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t\u0005r!B\u0001\u0003\u0011\u0003I\u0011a\u0002\"bg&\u001c\u0017j\u0014\u0006\u0003\u0007\u0011\tq\u0001\u001d:pG\u0016\u001c8O\u0003\u0002\u0006\r\u0005\u00191/_:\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\u000b\u00175\t!AB\u0003\r\u0005!\u0005QBA\u0004CCNL7-S(\u0014\u0005-q\u0001CA\u0008\u0011\u001b\u00051\u0011BA\t\u0007\u0005\u0019\te.\u001f*fM\")1c\u0003C\u0001)\u00051A(\u001b8jiz\"\u0012!\u0003\u0005\u0008--\u0011\r\u0011\"\u0002\u0018\u0003)\u0011UO\u001a4feNK\'0Z\u000b\u00021=\t\u0011$\u0008\u0002!\u0001!11d\u0003Q\u0001\u000ea\t1BQ;gM\u0016\u00148+\u001b>fA!9Qd\u0003b\u0001\n\u000bq\u0012a\u0002(fo2Lg.Z\u000b\u0002?A\u0011\u0001e\t\u0008\u0003\u001f\u0005J!A\t\u0004\u0002\rA\u0013X\rZ3g\u0013\t!SE\u0001\u0004TiJLgn\u001a\u0006\u0003E\u0019AaaJ\u0006!\u0002\u001by\u0012\u0001\u0003(fo2Lg.\u001a\u0011\u0007\u000b%Z!A\u0001\u0016\u0003\u0011M#(/Z1nK\u0012,\"aK\u001a\u0014\u0005!r\u0001\u0002C\u0002)\u0005\u000b\u0007I\u0011A\u0017\u0016\u00039\u0002BaD\u00182y%\u0011\u0001G\u0002\u0002\n\rVt7\r^5p]F\u0002\"AM\u001a\r\u0001\u0011)A\u0007\u000bb\u0001k\t\tA+\u0005\u00027sA\u0011qbN\u0005\u0003q\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u0010u%\u00111H\u0002\u0002\u0004\u0003:L\u0008CA\u0008>\u0013\tqdA\u0001\u0003V]&$\u0008\u0002\u0003!)\u0005\u0003\u0005\u000b\u0011\u0002\u0018\u0002\u0011A\u0014xnY3tg\u0002B\u0001B\u0011\u0015\u0003\u0006\u0004%\taQ\u0001\u0005I>tW-F\u0001E!\u0011yq&\u0012\u001f\u0011\u0005=1\u0015BA$\u0007\u0005\rIe\u000e\u001e\u0005\t\u0013\"\u0012\t\u0011)A\u0005\t\u0006)Am\u001c8fA!A1\n\u000bBC\u0002\u0013\u0005A*\u0001\u0004tiJ,\u0017-\\\u000b\u0002\u001bB\u0019qB\u0014)\n\u0005=3!!\u0003$v]\u000e$\u0018n\u001c81!\r\tf+M\u0007\u0002%*\u00111\u000bV\u0001\nS6lW\u000f^1cY\u0016T!!\u0016\u0004\u0002\u0015\r|G\u000e\\3di&|g.\u0003\u0002X%\n11\u000b\u001e:fC6D\u0001\"\u0017\u0015\u0003\u0002\u0003\u0006I!T\u0001\u0008gR\u0014X-Y7!\u0011\u0015\u0019\u0002\u0006\"\u0001\\)\u0011afl\u00181\u0011\u0007uC\u0013\'D\u0001\u000c\u0011\u0015\u0019!\u000c1\u0001/\u0011\u0015\u0011%\u000c1\u0001E\u0011\u0015Y%\u000c1\u0001N\u000f\u0019\u00117\u0002#\u0001\u0003G\u0006A1\u000b\u001e:fC6,G\r\u0005\u0002^I\u001a1\u0011f\u0003E\u0001\u0005\u0015\u001c\"\u0001\u001a\u0008\t\u000bM!G\u0011A4\u0015\u0003\rDQ!\u001b3\u0005\u0002)\u000cQ!\u00199qYf,\"a\u001b8\u0015\u00051|\u0007cA/)[B\u0011!G\u001c\u0003\u0006i!\u0014\r!\u000e\u0005\u0006a\"\u0004\r!]\u0001\u0011]>t\'0\u001a:p\u000bb\u001cW\r\u001d;j_:\u0004\"a\u0004:\n\u0005M4!a\u0002\"p_2,\u0017M\u001c\u0004\tk.\u0001\n1!\u0001\u0003m\nYQK\\2m_N,\u0017M\u00197f\'\r!xo \t\u0003qvl\u0011!\u001f\u0006\u0003un\u000cA\u0001\\1oO*\tA0\u0001\u0003kCZ\u000c\u0017B\u0001@z\u0005\u0019y%M[3diB!\u0011\u0011AA\u0004\u001d\rQ\u00111A\u0005\u0004\u0003\u000b\u0011\u0011a\u00049s_\u000e,7o]%oi\u0016\u0014h.\u00197\n\t\u0005%\u00111\u0002\u0002\n\u00072|7/Z1cY\u0016T1!!\u0002\u0003\u0011\u001d\ty\u0001\u001eC\u0001\u0003#\ta\u0001J5oSR$C#\u0001\u001f\t\u000f\u0005UA\u000f\"\u0012\u0002\u0012\u0005)1\r\\8tK\u001eA\u0011\u0011D\u0006\t\u0002\t\tY\"A\u0006V]\u000edwn]3bE2,\u0007cA/\u0002\u001e\u00199Qo\u0003E\u0001\u0005\u0005}1cAA\u000f\u001d!91#!\u0008\u0005\u0002\u0005\rBCAA\u000e\u0011\u001dI\u0017Q\u0004C\u0001\u0003O!B!!\u000b\u00020A!\u0011\u0011AA\u0016\u0013\u0011\ti#a\u0003\u0003\u0017%s\u0007/\u001e;TiJ,\u0017-\u001c\u0005\t\u0003c\t)\u00031\u0001\u0002*\u0005\u0011\u0011N\u001c\u0005\u0008S\u0006uA\u0011AA\u001b)\u0011\t9$!\u0010\u0011\t\u0005\u0005\u0011\u0011H\u0005\u0005\u0003w\tYA\u0001\u0007PkR\u0004X\u000f^*ue\u0016\u000cW\u000e\u0003\u0005\u0002@\u0005M\u0002\u0019AA\u001c\u0003\ryW\u000f\u001e\u0005\t\u0003\u0007\ni\u0002\"\u0001\u0002F\u00059\u0001O]8uK\u000e$H\u0003BA\u0015\u0003\u000fB\u0001\"!\r\u0002B\u0001\u0007\u0011\u0011\u0006\u0005\t\u0003\u0007\ni\u0002\"\u0001\u0002LQ!\u0011qGA\'\u0011!\ty$!\u0013A\u0002\u0005]\u0002BB5\u000c\t\u0003\t\t\u0006\u0006\u0005\u0002T\u0005e\u0013QLA2!\rQ\u0011QK\u0005\u0004\u0003/\u0012!!\u0003)s_\u000e,7o]%P\u0011\u001d\tY&a\u0014A\u0002E\u000caa^5uQ&s\u0007\u0002CA0\u0003\u001f\u0002\r!!\u0019\u0002\r=,H\u000f];u!\u0011yqf\u0008\u001f\t\u0011\u0005\u0015\u0014q\na\u0001\u0003O\n1\u0001\\8h!\u0015y\u0011\u0011NA7\u0013\r\tYG\u0002\u0002\u0007\u001fB$\u0018n\u001c8\u0011\u0007)\ty\'C\u0002\u0002r\t\u0011Q\u0002\u0015:pG\u0016\u001c8\u000fT8hO\u0016\u0014\u0008BB5\u000c\t\u0003\t)\u0008\u0006\u0005\u0002T\u0005]\u0014\u0011PAB\u0011\u001d\tY&a\u001dA\u0002ED\u0001\"a\u001f\u0002t\u0001\u0007\u0011QP\u0001\u0007EV4g-\u001a:\u0011\u0007a\u000cy(C\u0002\u0002\u0002f\u0014Ab\u0015;sS:<\')\u001e4gKJD\u0001\"!\u001a\u0002t\u0001\u0007\u0011q\r\u0005\u0007S.!\t!a\"\u0015\r\u0005M\u0013\u0011RAF\u0011\u001d\tY&!\"A\u0002ED\u0001\"!\u001a\u0002\u0006\u0002\u0007\u0011Q\u000e\u0005\u0008\u0003\u001f[A\u0011AAI\u0003\u00199W\r^#seR!\u00111SAK!\u0015yq&!\u000b=\u0011!\t)\'!$A\u0002\u0005\u001d\u0004bBAM\u0017\u0011%\u00111T\u0001\u0010aJ|7-Z:t\u000bJ\u0014h)\u001e7msR!\u00111SAO\u0011!\t)\'a&A\u0002\u00055\u0004bBAQ\u0017\u0011%\u00111U\u0001\u0010aJ|7-Z:t\u001fV$h)\u001e7msR!\u00111SAS\u0011!\t)\'a(A\u0002\u00055\u0004bBA\u000b\u0017\u0011\u0005\u0011\u0011\u0016\u000b\u0004y\u0005-\u0006bBAW\u0003O\u0003\ra`\u0001\u0002G\"9\u0011\u0011W\u0006\u0005\u0002\u0005M\u0016\u0001\u00049s_\u000e,7o\u001d$vY2LH\u0003BAJ\u0003kC\u0001\"a\u001f\u00020\u0002\u0007\u0011q\u0017\t\u0004q\u0006e\u0016bAA^s\nQ\u0011\t\u001d9f]\u0012\u000c\'\r\\3\t\u000f\u0005E6\u0002\"\u0001\u0002@R!\u00111SAa\u0011!\t\u0019-!0A\u0002\u0005\u0005\u0014a\u00039s_\u000e,7o\u001d\'j]\u0016Dq!a2\u000c\t\u0003\tI-A\tqe>\u001cWm]:MS:,7OR;mYf$B!a3\u0002TR\u0019A(!4\t\u0011\u0005=\u0017Q\u0019a\u0001\u0003#\u000c\u0001B]3bI2Kg.\u001a\t\u0004\u001f9{\u0002\u0002CAb\u0003\u000b\u0004\r!!\u0019\t\u000f\u0005]7\u0002\"\u0001\u0002Z\u0006Y1m\u001c8oK\u000e$Hk\\%o)\ra\u00141\u001c\u0005\t\u0003;\u000c)\u000e1\u0001\u00028\u0005\tq\u000eC\u0004\u0002b.!\t!a9\u0002\u000b%t\u0007/\u001e;\u0015\t\u0005\u0015\u0018q\u001d\t\u0006\u001f=\n9\u0004\u0010\u0005\u0008\u0003S\u000cy\u000e1\u0001r\u0003\u001d\u0019wN\u001c8fGRDq!!<\u000c\t\u0003\ty/\u0001\u0005ti\u0006tG-\u0019:e)\u0011\t\u0019&!=\t\u000f\u0005M\u00181\u001ea\u0001c\u0006a1m\u001c8oK\u000e$\u0018J\u001c9vi\"9\u0011Q^\u0006\u0005\u0002\u0005]H\u0003BA*\u0003sD\u0001\"!\r\u0002v\u0002\u0007\u0011Q\u001d\u0005\u0008\u0003{\\A\u0011AA\u0000\u0003!!xn\u0015;e\u000bJ\u0014XCAAJ\u0011\u001d\u0011\u0019a\u0003C\u0001\u0003\u007f\u000c\u0001\u0002^8Ti\u0012|U\u000f\u001e\u0005\u0008\u0005\u000fYA\u0011\u0001B\u0005\u00035!(/\u00198tM\u0016\u0014h)\u001e7msR)AHa\u0003\u0003\u000e!A\u0011\u0011\u0007B\u0003\u0001\u0004\tI\u0003\u0003\u0005\u0002@\t\u0015\u0001\u0019AA\u001c\u0011!\u0011\tb\u0003Q\u0005\n\tM\u0011AC1qa\u0016tG\rT5oKR!\u0011\u0011\rB\u000b\u0011!\tYHa\u0004A\u0002\u0005]\u0006\u0002\u0003B\r\u0017\u0001&IAa\u0007\u0002#Q\u0014\u0018M\\:gKJ4U\u000f\u001c7z\u00136\u0004H\u000eF\u0003=\u0005;\u0011y\u0002\u0003\u0005\u00022\t]\u0001\u0019AA\u0015\u0011!\tyDa\u0006A\u0002\u0005]\u0002"
.end annotation


# direct methods
.method public static BufferSize()I
    .locals 1

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0}, Lscala/sys/process/BasicIO$;->BufferSize()I

    move-result v0

    return v0
.end method

.method public static Newline()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0}, Lscala/sys/process/BasicIO$;->Newline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apply(ZLjava/lang/StringBuffer;Lscala/Option;)Lscala/sys/process/ProcessIO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/StringBuffer;",
            "Lscala/Option<",
            "Lscala/sys/process/ProcessLogger;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/sys/process/BasicIO$;->apply(ZLjava/lang/StringBuffer;Lscala/Option;)Lscala/sys/process/ProcessIO;

    move-result-object p0

    return-object p0
.end method

.method public static apply(ZLscala/Function1;Lscala/Option;)Lscala/sys/process/ProcessIO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Option<",
            "Lscala/sys/process/ProcessLogger;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/sys/process/BasicIO$;->apply(ZLscala/Function1;Lscala/Option;)Lscala/sys/process/ProcessIO;

    move-result-object p0

    return-object p0
.end method

.method public static apply(ZLscala/sys/process/ProcessLogger;)Lscala/sys/process/ProcessIO;
    .locals 1

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0, p1}, Lscala/sys/process/BasicIO$;->apply(ZLscala/sys/process/ProcessLogger;)Lscala/sys/process/ProcessIO;

    move-result-object p0

    return-object p0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0}, Lscala/sys/process/BasicIO$;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public static connectToIn(Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0}, Lscala/sys/process/BasicIO$;->connectToIn(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static getErr(Lscala/Option;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/sys/process/ProcessLogger;",
            ">;)",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0}, Lscala/sys/process/BasicIO$;->getErr(Lscala/Option;)Lscala/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static input(Z)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0}, Lscala/sys/process/BasicIO$;->input(Z)Lscala/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static processFully(Ljava/lang/Appendable;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            ")",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0}, Lscala/sys/process/BasicIO$;->processFully(Ljava/lang/Appendable;)Lscala/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static processFully(Lscala/Function1;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0}, Lscala/sys/process/BasicIO$;->processFully(Lscala/Function1;)Lscala/Function1;

    move-result-object p0

    return-object p0
.end method

.method public static processLinesFully(Lscala/Function1;Lscala/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0, p1}, Lscala/sys/process/BasicIO$;->processLinesFully(Lscala/Function1;Lscala/Function0;)V

    return-void
.end method

.method public static standard(Lscala/Function1;)Lscala/sys/process/ProcessIO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0}, Lscala/sys/process/BasicIO$;->standard(Lscala/Function1;)Lscala/sys/process/ProcessIO;

    move-result-object p0

    return-object p0
.end method

.method public static standard(Z)Lscala/sys/process/ProcessIO;
    .locals 1

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0}, Lscala/sys/process/BasicIO$;->standard(Z)Lscala/sys/process/ProcessIO;

    move-result-object p0

    return-object p0
.end method

.method public static toStdErr()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0}, Lscala/sys/process/BasicIO$;->toStdErr()Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static toStdOut()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0}, Lscala/sys/process/BasicIO$;->toStdOut()Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static transferFully(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p0, p1}, Lscala/sys/process/BasicIO$;->transferFully(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
