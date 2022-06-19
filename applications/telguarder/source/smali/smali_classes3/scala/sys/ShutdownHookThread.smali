.class public Lscala/sys/ShutdownHookThread;
.super Ljava/lang/Thread;
.source "ShutdownHookThread.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001-3A!\u0001\u0002\u0001\u000f\t\u00112\u000b[;uI><h\u000eS8pWRC\'/Z1e\u0015\t\u0019A!A\u0002tsNT\u0011!B\u0001\u0006g\u000e\u000cG.Y\u0002\u0001\'\t\u0001\u0001\u0002\u0005\u0002\n\u001d5\t!B\u0003\u0002\u000c\u0019\u0005!A.\u00198h\u0015\u0005i\u0011\u0001\u00026bm\u0006L!a\u0004\u0006\u0003\rQC\'/Z1e\u0011!\t\u0002A!A!\u0002\u0013\u0011\u0012\u0001\u00028b[\u0016\u0004\"aE\u000c\u000f\u0005Q)R\"\u0001\u0003\n\u0005Y!\u0011A\u0002)sK\u0012,g-\u0003\u0002\u00193\t11\u000b\u001e:j]\u001eT!A\u0006\u0003\t\u000bm\u0001A\u0011\u0002\u000f\u0002\rqJg.\u001b;?)\tir\u0004\u0005\u0002\u001f\u00015\t!\u0001C\u0003\u00125\u0001\u0007!\u0003C\u0003\"\u0001\u0011\u0005!%\u0001\u0004sK6|g/\u001a\u000b\u0002GA\u0011A\u0003J\u0005\u0003K\u0011\u0011qAQ8pY\u0016\u000cgnB\u0003(\u0005!\u0005\u0001&\u0001\nTQV$Hm\\<o\u0011>|7\u000e\u00165sK\u0006$\u0007C\u0001\u0010*\r\u0015\t!\u0001#\u0001+\'\tI3\u0006\u0005\u0002\u0015Y%\u0011Q\u0006\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bmIC\u0011A\u0018\u0015\u0003!Bq!M\u0015A\u0002\u0013%!\'A\u0007i_>\\g*Y7f\u0007>,h\u000e^\u000b\u0002gA\u0011A\u0003N\u0005\u0003k\u0011\u00111!\u00138u\u0011\u001d9\u0014\u00061A\u0005\na\n\u0011\u0003[8pW:\u000bW.Z\"pk:$x\u000cJ3r)\tID\u0008\u0005\u0002\u0015u%\u00111\u0008\u0002\u0002\u0005+:LG\u000fC\u0004>m\u0005\u0005\t\u0019A\u001a\u0002\u0007a$\u0013\u0007\u0003\u0004@S\u0001\u0006KaM\u0001\u000fQ>|7NT1nK\u000e{WO\u001c;!\u0011\u0015\t\u0015\u0006\"\u0003C\u0003!Awn\\6OC6,G#\u0001\n\t\u000b\u0011KC\u0011A#\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0015\u0005u1\u0005BB$D\t\u0003\u0007\u0001*\u0001\u0003c_\u0012L\u0008c\u0001\u000bJs%\u0011!\n\u0002\u0002\ty\tLh.Y7f}\u0001"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static apply(Lscala/Function0;)Lscala/sys/ShutdownHookThread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/ShutdownHookThread;"
        }
    .end annotation

    sget-object v0, Lscala/sys/ShutdownHookThread$;->MODULE$:Lscala/sys/ShutdownHookThread$;

    invoke-virtual {v0, p0}, Lscala/sys/ShutdownHookThread$;->apply(Lscala/Function0;)Lscala/sys/ShutdownHookThread;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public remove()Z
    .locals 1

    .line 20
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {v0}, Lscala/sys/package$;->runtime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method
