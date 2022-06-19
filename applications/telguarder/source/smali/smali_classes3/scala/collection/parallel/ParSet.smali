.class public interface abstract Lscala/collection/parallel/ParSet;
.super Ljava/lang/Object;
.source "ParSet.scala"

# interfaces
.implements Lscala/collection/GenSet;
.implements Lscala/collection/parallel/ParIterable;
.implements Lscala/collection/parallel/ParSetLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenSet<",
        "TT;>;",
        "Lscala/collection/parallel/ParIterable<",
        "TT;>;",
        "Lscala/collection/parallel/ParSetLike<",
        "TT;",
        "Lscala/collection/parallel/ParSet<",
        "TT;>;",
        "Lscala/collection/Set<",
        "TT;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001M4\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005\u0011\u0002\u000c\u0002\u0007!\u0006\u00148+\u001a;\u000b\u0005\r!\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005))2C\u0002\u0001\u000c\u001fy1\u0013\u0006\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u00042\u0001E\t\u0014\u001b\u0005!\u0011B\u0001\n\u0005\u0005\u00199UM\\*fiB\u0011A#\u0006\u0007\u0001\t\u00151\u0002A1\u0001\u0018\u0005\u0005!\u0016C\u0001\r\u001c!\ta\u0011$\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\u0007\u001d\u0013\tibAA\u0002B]f\u0004Ba\u0008\u0012\u0014I5\t\u0001E\u0003\u0002\"\t\u00059q-\u001a8fe&\u001c\u0017BA\u0012!\u0005I9UM\\3sS\u000e\u0004\u0016M\u001d+f[Bd\u0017\r^3\u0011\u0005\u0015\u0002Q\"\u0001\u0002\u0011\u0007\u0015:3#\u0003\u0002)\u0005\tY\u0001+\u0019:Ji\u0016\u0014\u0018M\u00197f!\u0015)#f\u0005\u0017.\u0013\tY#A\u0001\u0006QCJ\u001cV\r\u001e\'jW\u0016\u00042!\n\u0001\u0014!\r\u0001bfE\u0005\u0003_\u0011\u00111aU3u\u0011\u0015\t\u0004\u0001\"\u00013\u0003\u0019!\u0013N\\5uIQ\t1\u0007\u0005\u0002\ri%\u0011QG\u0002\u0002\u0005+:LG\u000fC\u00038\u0001\u0011\u0005\u0003(A\u0003f[B$\u00180F\u0001-\u0011\u0015Q\u0004\u0001\"\u0011<\u0003%\u0019w.\u001c9b]&|g.F\u0001=%\ritH\u0011\u0004\u0005}\u0001\u0001AH\u0001\u0007=e\u00164\u0017N\\3nK:$h\u0008E\u0002 \u0001\u0012J!!\u0011\u0011\u0003!\u001d+g.\u001a:jG\u000e{W\u000e]1oS>t\u0007cA\u0010DI%\u0011A\t\t\u0002\u0014\u000f\u0016tWM]5d!\u0006\u00148i\\7qC:LwN\u001c\u0005\u0006\r\u0002!\teR\u0001\rgR\u0014\u0018N\\4Qe\u00164\u0017\u000e_\u000b\u0002\u0011B\u0011\u0011JT\u0007\u0002\u0015*\u00111\nT\u0001\u0005Y\u0006twMC\u0001N\u0003\u0011Q\u0017M^1\n\u0005=S%AB*ue&twmB\u0003R\u0005!\u0005!+\u0001\u0004QCJ\u001cV\r\u001e\t\u0003KM3Q!\u0001\u0002\t\u0002Q\u001b\"aU+\u0011\u0007}1F%\u0003\u0002XA\ti\u0001+\u0019:TKR4\u0015m\u0019;pefDQ!W*\u0005\u0002i\u000ba\u0001P5oSRtD#\u0001*\t\u000bq\u001bF\u0011A/\u0002\u00179,woQ8nE&tWM]\u000b\u0003=\u000e,\u0012a\u0018\t\u0005K\u0001\u0014G-\u0003\u0002b\u0005\tA1i\\7cS:,\'\u000f\u0005\u0002\u0015G\u0012)ac\u0017b\u0001/A\u0019Q\u0005\u00012\t\u000b\u0019\u001cF1A4\u0002\u0019\r\u000cgNQ;jY\u00124%o\\7\u0016\u0005!\u000cX#A5\u0011\u000b}QG\u000e\u001d:\n\u0005-\u0004#AD\"b]\u000e{WNY5oK\u001a\u0013x.\u001c\t\u0003[:l\u0011aU\u0005\u0003_\u0002\u0013AaQ8mYB\u0011A#\u001d\u0003\u0006-\u0015\u0014\ra\u0006\t\u0004K\u0001\u0001\u0008"
.end annotation


# virtual methods
.method public abstract companion()Lscala/collection/generic/GenericCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/ParSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract empty()Lscala/collection/parallel/ParSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParSet<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method
