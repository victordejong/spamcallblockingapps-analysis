.class public abstract Lscala/Unit;
.super Ljava/lang/Object;
.source "Unit.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t3Q!\u0001\u0002\u0002\u0006\u0015\u0011A!\u00168ji*\t1!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0005\u00011\u0001CA\u0004\t\u001b\u0005\u0011\u0011BA\u0005\u0003\u0005\u0019\te.\u001f,bY\")1\u0002\u0001C\u0001\u0019\u00051A(\u001b8jiz\"\u0012!\u0004\t\u0003\u000f\u0001AQa\u0004\u0001\u0005BA\t\u0001bZ3u\u00072\u000c7o\u001d\u000b\u0002#A\u0019!#F\u0007\u000f\u0005\u001d\u0019\u0012B\u0001\u000b\u0003\u0003\u0019\u0001&/\u001a3fM&\u0011ac\u0006\u0002\u0006\u00072\u000c7o\u001d\u0006\u0003)\t9Q!\u0007\u0002\t\u0002i\tA!\u00168jiB\u0011qa\u0007\u0004\u0006\u0003\tA\t\u0001H\n\u00047u\u0001\u0003CA\u0004\u001f\u0013\ty\"A\u0001\u0004B]f\u0014VM\u001a\t\u0003\u000f\u0005J!A\t\u0002\u0003\u001f\u0005s\u0017PV1m\u0007>l\u0007/\u00198j_:DQaC\u000e\u0005\u0002\u0011\"\u0012A\u0007\u0005\u0006Mm!\taJ\u0001\u0004E>DHC\u0001\u0015/!\tIC&D\u0001+\u0015\tY#!A\u0004sk:$\u0018.\\3\n\u00055R#!\u0003\"pq\u0016$WK\\5u\u0011\u0015yS\u00051\u0001\u000e\u0003\u0005A\u0008\"B\u0019\u001c\t\u0003\u0011\u0014!B;oE>DHCA\u00074\u0011\u0015y\u0003\u00071\u00015!\t)$(D\u00017\u0015\t9\u0004(\u0001\u0003mC:<\'\"A\u001d\u0002\t)\u000cg/Y\u0005\u0003wY\u0012aa\u00142kK\u000e$\u0008\"B\u001f\u001c\t\u0003r\u0014\u0001\u0003;p\'R\u0014\u0018N\\4\u0015\u0003}\u0002\"!\u000e!\n\u0005\u00053$AB*ue&tw\r"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static box(Lscala/runtime/BoxedUnit;)Lscala/runtime/BoxedUnit;
    .locals 1

    sget-object v0, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    invoke-virtual {v0, p0}, Lscala/Unit$;->box(Lscala/runtime/BoxedUnit;)Lscala/runtime/BoxedUnit;

    move-result-object p0

    return-object p0
.end method

.method public static toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    invoke-virtual {v0}, Lscala/Unit$;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unbox(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    invoke-virtual {v0, p0}, Lscala/Unit$;->unbox(Ljava/lang/Object;)V

    return-void
.end method
