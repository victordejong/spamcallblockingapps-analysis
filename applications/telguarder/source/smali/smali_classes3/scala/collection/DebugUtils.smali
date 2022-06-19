.class public final Lscala/collection/DebugUtils;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001M;a!\u0001\u0002\t\u0002\t1\u0011A\u0003#fEV<W\u000b^5mg*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0011\u0005\u001dAQ\"\u0001\u0002\u0007\r%\u0011\u0001\u0012\u0001\u0002\u000b\u0005)!UMY;h+RLGn]\n\u0003\u0011-\u0001\"\u0001D\u0007\u000e\u0003\u0011I!A\u0004\u0003\u0003\r\u0005s\u0017PU3g\u0011\u0015\u0001\u0002\u0002\"\u0001\u0013\u0003\u0019a\u0014N\\5u}\r\u0001A#\u0001\u0004\t\u000bQAA\u0011A\u000b\u0002\u0017Ut7/\u001e9q_J$X\r\u001a\u000b\u0003-e\u0001\"\u0001D\u000c\n\u0005a!!a\u0002(pi\"Lgn\u001a\u0005\u00065M\u0001\raG\u0001\u0004[N<\u0007C\u0001\u000f \u001d\taQ$\u0003\u0002\u001f\t\u00051\u0001K]3eK\u001aL!\u0001I\u0011\u0003\rM#(/\u001b8h\u0015\tqB\u0001C\u0003$\u0011\u0011\u0005A%A\u0007o_N+8\r[#mK6,g\u000e\u001e\u000b\u0003-\u0015BQA\u0007\u0012A\u0002mAQa\n\u0005\u0005\u0002!\n\u0001#\u001b8eKb|U\u000f^(g\u0005>,h\u000eZ:\u0015\u0005YI\u0003\"\u0002\u0016\'\u0001\u0004Y\u0013!B5oI\u0016D\u0008C\u0001\u0007-\u0013\tiCAA\u0002J]RDQa\u000c\u0005\u0005\u0002A\nq\"\u001b7mK\u001e\u000cG.\u0011:hk6,g\u000e\u001e\u000b\u0003-EBQA\u0007\u0018A\u0002mAQa\r\u0005\u0005\u0002Q\n1BY;jY\u0012\u001cFO]5oOR\u00111$\u000e\u0005\u0006mI\u0002\raN\u0001\u0008G2|7/\u001e:f!\u0011a\u0001H\u000f \n\u0005e\"!!\u0003$v]\u000e$\u0018n\u001c82!\u0011a\u0001h\u000f \u0011\u00051a\u0014BA\u001f\u0005\u0005\r\te.\u001f\t\u0003\u0019}J!\u0001\u0011\u0003\u0003\tUs\u0017\u000e\u001e\u0005\u0006\u0005\"!\taQ\u0001\u000cCJ\u0014\u0018-_*ue&tw-\u0006\u0002E\u0019R!1$R(R\u0011\u00151\u0015\t1\u0001H\u0003\u0015\t\'O]1z!\ra\u0001JS\u0005\u0003\u0013\u0012\u0011Q!\u0011:sCf\u0004\"a\u0013\'\r\u0001\u0011)Q*\u0011b\u0001\u001d\n\tA+\u0005\u0002\u0017w!)\u0001+\u0011a\u0001W\u0005!aM]8n\u0011\u0015\u0011\u0016\t1\u0001,\u0003\u0015)h\u000e^5m\u0001"
.end annotation


# direct methods
.method public static arrayString(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    invoke-virtual {v0, p0, p1, p2}, Lscala/collection/DebugUtils$;->arrayString(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildString(Lscala/Function1;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    invoke-virtual {v0, p0}, Lscala/collection/DebugUtils$;->buildString(Lscala/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static illegalArgument(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    invoke-virtual {v0, p0}, Lscala/collection/DebugUtils$;->illegalArgument(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    return-object p0
.end method

.method public static indexOutOfBounds(I)Lscala/runtime/Nothing$;
    .locals 1

    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    invoke-virtual {v0, p0}, Lscala/collection/DebugUtils$;->indexOutOfBounds(I)Lscala/runtime/Nothing$;

    move-result-object p0

    return-object p0
.end method

.method public static noSuchElement(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    invoke-virtual {v0, p0}, Lscala/collection/DebugUtils$;->noSuchElement(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    return-object p0
.end method

.method public static unsupported(Ljava/lang/String;)Lscala/runtime/Nothing$;
    .locals 1

    sget-object v0, Lscala/collection/DebugUtils$;->MODULE$:Lscala/collection/DebugUtils$;

    invoke-virtual {v0, p0}, Lscala/collection/DebugUtils$;->unsupported(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p0

    return-object p0
.end method
