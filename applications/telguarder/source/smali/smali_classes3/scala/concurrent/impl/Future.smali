.class public final Lscala/concurrent/impl/Future;
.super Ljava/lang/Object;
.source "Future.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/impl/Future$PromiseCompletingRunnable;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001q;a!\u0001\u0002\t\u0002\u0011A\u0011A\u0002$viV\u0014XM\u0003\u0002\u0004\t\u0005!\u0011.\u001c9m\u0015\t)a!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011aB\u0001\u0006g\u000e\u000cG.\u0019\t\u0003\u0013)i\u0011A\u0001\u0004\u0007\u0017\tA\t\u0001\u0002\u0007\u0003\r\u0019+H/\u001e:f\'\tQQ\u0002\u0005\u0002\u000f\u001f5\ta!\u0003\u0002\u0011\r\t1\u0011I\\=SK\u001aDQA\u0005\u0006\u0005\u0002Q\ta\u0001P5oSRt4\u0001\u0001\u000b\u0002\u0011\u0019!aC\u0003\u0001\u0018\u0005e\u0001&o\\7jg\u0016\u001cu.\u001c9mKRLgn\u001a*v]:\u000c\'\r\\3\u0016\u0005aY3cA\u000b\u001aCA\u0011!dH\u0007\u00027)\u0011A$H\u0001\u0005Y\u0006twMC\u0001\u001f\u0003\u0011Q\u0017M^1\n\u0005\u0001Z\"AB(cU\u0016\u001cG\u000f\u0005\u0002\u001bE%\u00111e\u0007\u0002\t%Vtg.\u00192mK\"AQ%\u0006B\u0001J\u0003%a%\u0001\u0003c_\u0012L\u0008c\u0001\u0008(S%\u0011\u0001F\u0002\u0002\ty\tLh.Y7f}A\u0011!f\u000b\u0007\u0001\t\u0015aSC1\u0001.\u0005\u0005!\u0016C\u0001\u00182!\tqq&\u0003\u00021\r\t9aj\u001c;iS:<\u0007C\u0001\u00083\u0013\t\u0019dAA\u0002B]fDQAE\u000b\u0005\u0002U\"\"A\u000e\u001d\u0011\u0007]*\u0012&D\u0001\u000b\u0011\u0019)C\u0007\"a\u0001M!9!(\u0006b\u0001\n\u0003Y\u0014a\u00029s_6L7/Z\u000b\u0002yA\u0019Q\u0008Q\u0015\u000f\u0005%q\u0014BA \u0003\u0003\u001d\u0001&o\\7jg\u0016L!!\u0011\"\u0003\u001d\u0011+g-Y;miB\u0013x.\\5tK*\u0011qH\u0001\u0005\u0007\tV\u0001\u000b\u0011\u0002\u001f\u0002\u0011A\u0014x.\\5tK\u0002BQAR\u000b\u0005B\u001d\u000b1A];o)\u0005A\u0005C\u0001\u0008J\u0013\tQeA\u0001\u0003V]&$\u0008\"\u0002\'\u000b\t\u0003i\u0015!B1qa2LXC\u0001(U)\ty%\u000c\u0006\u0002Q+B\u0019\u0011KU*\u000e\u0003\u0011I!a\u0003\u0003\u0011\u0005)\"F!\u0002\u0017L\u0005\u0004i\u0003\"\u0002,L\u0001\u00089\u0016\u0001C3yK\u000e,Ho\u001c:\u0011\u0005EC\u0016BA-\u0005\u0005A)\u00050Z2vi&|gnQ8oi\u0016DH\u000f\u0003\u0004&\u0017\u0012\u0005\ra\u0017\t\u0004\u001d\u001d\u001a\u0006"
.end annotation


# direct methods
.method public static apply(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")",
            "Lscala/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lscala/concurrent/impl/Future$;->MODULE$:Lscala/concurrent/impl/Future$;

    invoke-virtual {v0, p0, p1}, Lscala/concurrent/impl/Future$;->apply(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
