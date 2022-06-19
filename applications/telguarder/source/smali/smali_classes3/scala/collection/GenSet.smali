.class public interface abstract Lscala/collection/GenSet;
.super Ljava/lang/Object;
.source "GenSet.scala"

# interfaces
.implements Lscala/collection/GenSetLike;
.implements Lscala/collection/GenIterable;
.implements Lscala/collection/generic/GenericSetTemplate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenSetLike<",
        "TA;",
        "Lscala/collection/GenSet<",
        "TA;>;>;",
        "Lscala/collection/GenIterable<",
        "TA;>;",
        "Lscala/collection/generic/GenericSetTemplate<",
        "TA;",
        "Lscala/collection/GenSet;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001}3q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0004HK:\u001cV\r\u001e\u0006\u0003\u0007\u0011\t!bY8mY\u0016\u001cG/[8o\u0015\u0005)\u0011!B:dC2\u000c7\u0001A\u000b\u0003\u0011M\u0019R\u0001A\u0005\u000e;\u0001\u0002\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!\u0011qq\"\u0005\u000f\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u0015\u001d+gnU3u\u0019&\\W\r\u0005\u0002\u0013\'1\u0001A!\u0002\u000b\u0001\u0005\u0004)\"!A!\u0012\u0005YI\u0002C\u0001\u0006\u0018\u0013\tABAA\u0004O_RD\u0017N\\4\u0011\u0005)Q\u0012BA\u000e\u0005\u0005\r\te.\u001f\t\u0004\u001d\u0001\t\u0002c\u0001\u0008\u001f#%\u0011qD\u0001\u0002\u000c\u000f\u0016t\u0017\n^3sC\ndW\r\u0005\u0003\"IE1S\"\u0001\u0012\u000b\u0005\r\u0012\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0003K\t\u0012!cR3oKJL7mU3u)\u0016l\u0007\u000f\\1uKB\u0011a\u0002\u0001\u0005\u0006Q\u0001!\t!K\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003)\u0002\"AC\u0016\n\u00051\"!\u0001B+oSRDQA\u000c\u0001\u0005B=\n\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003A\u00022!I\u0019\'\u0013\t\u0011$E\u0001\tHK:,\'/[2D_6\u0004\u0018M\\5p]\")A\u0007\u0001D\u0001k\u0005\u00191/Z9\u0016\u0003Y\u00022AD\u001c\u0012\u0013\tA$AA\u0002TKR<QA\u000f\u0002\t\u0002m\naaR3o\'\u0016$\u0008C\u0001\u0008=\r\u0015\t!\u0001#\u0001>\'\tad\u0008E\u0002\"\u007f\u0019J!\u0001\u0011\u0012\u0003+\u001d+g\u000e\u0016:bm\u0016\u00148/\u00192mK\u001a\u000b7\r^8ss\")!\t\u0010C\u0001\u0007\u00061A(\u001b8jiz\"\u0012a\u000f\u0005\u0006\u000br\"\u0019AR\u0001\rG\u0006t\')^5mI\u001a\u0013x.\\\u000b\u0003\u000f6+\u0012\u0001\u0013\t\u0004\u0013*cU\"\u0001\u001f\n\u0005-{$aE$f]\u0016\u0014\u0018nY\"b]\n+\u0018\u000e\u001c3Ge>l\u0007C\u0001\nN\t\u0015!BI1\u0001\u0016\u0011\u0015yE\u0008\"\u0001Q\u0003)qWm\u001e\"vS2$WM]\u000b\u0003#f+\u0012A\u0015\t\u0005\'ZC&,D\u0001U\u0015\t)&!A\u0004nkR\u000c\'\r\\3\n\u0005]#&a\u0002\"vS2$WM\u001d\t\u0003%e#Q\u0001\u0006(C\u0002U\u00012a\u00170Y\u001b\u0005a&BA/\u0003\u0003%IW.\\;uC\ndW-\u0003\u000299\u0002"
.end annotation


# virtual methods
.method public abstract companion()Lscala/collection/generic/GenericCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/GenSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract seq()Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation
.end method
