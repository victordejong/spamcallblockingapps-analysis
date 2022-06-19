.class public interface abstract Lscala/collection/generic/FilterMonadic;
.super Ljava/lang/Object;
.source "FilterMonadic.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001]3q!\u0001\u0002\u0011\u0002G\u0005\u0011BA\u0007GS2$XM]\'p]\u0006$\u0017n\u0019\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b]\r\u001a\"\u0001A\u0006\u0011\u00051iQ\"\u0001\u0004\n\u000591!aA!os\")\u0001\u0003\u0001D\u0001#\u0005\u0019Q.\u00199\u0016\u0007I1c\u0003\u0006\u0002\u0014QQ\u0011A\u0003\u0008\t\u0003+Ya\u0001\u0001B\u0003\u0018\u001f\t\u0007\u0001D\u0001\u0003UQ\u0006$\u0018CA\r\u000c!\ta!$\u0003\u0002\u001c\r\t9aj\u001c;iS:<\u0007\"B\u000f\u0010\u0001\u0008q\u0012A\u00012g!\u0015y\u0002EI\u0013\u0015\u001b\u0005\u0011\u0011BA\u0011\u0003\u00051\u0019\u0015M\u001c\"vS2$gI]8n!\t)2\u0005\u0002\u0004%\u0001\u0011\u0015\r\u0001\u0007\u0002\u0005%\u0016\u0004(\u000f\u0005\u0002\u0016M\u0011)qe\u0004b\u00011\t\t!\tC\u0003*\u001f\u0001\u0007!&A\u0001g!\u0011a1&L\u0013\n\u000512!!\u0003$v]\u000e$\u0018n\u001c82!\t)b\u0006\u0002\u00040\u0001\u0011\u0015\r\u0001\u0007\u0002\u0002\u0003\")\u0011\u0007\u0001D\u0001e\u00059a\r\\1u\u001b\u0006\u0004XcA\u001a;mQ\u0011Ag\u000f\u000b\u0003k]\u0002\"!\u0006\u001c\u0005\u000b]\u0001$\u0019\u0001\r\t\u000bu\u0001\u00049\u0001\u001d\u0011\u000b}\u0001#%O\u001b\u0011\u0005UQD!B\u00141\u0005\u0004A\u0002\"B\u00151\u0001\u0004a\u0004\u0003\u0002\u0007,[u\u00022AP :\u001b\u0005!\u0011B\u0001!\u0005\u0005I9UM\u001c+sCZ,\'o]1cY\u0016|enY3\t\u000b\t\u0003a\u0011A\"\u0002\u000f\u0019|\'/Z1dQV\u0011Ai\u0013\u000b\u0003\u000b\"\u0003\"\u0001\u0004$\n\u0005\u001d3!\u0001B+oSRDQ!K!A\u0002%\u0003B\u0001D\u0016.\u0015B\u0011Qc\u0013\u0003\u0006\u0019\u0006\u0013\r\u0001\u0007\u0002\u0002+\")a\n\u0001D\u0001\u001f\u0006Qq/\u001b;i\r&dG/\u001a:\u0015\u0005A\u000b\u0006\u0003B\u0010\u0001[\tBQAU\'A\u0002M\u000b\u0011\u0001\u001d\t\u0005\u0019-jC\u000b\u0005\u0002\r+&\u0011aK\u0002\u0002\u0008\u0005>|G.Z1o\u0001"
.end annotation


# virtual methods
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

.method public abstract withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/generic/FilterMonadic<",
            "TA;TRepr;>;"
        }
    .end annotation
.end method
