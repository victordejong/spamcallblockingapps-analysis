.class public interface abstract Lorg/bluecabin/textoo/impl/LinksHandlingImpl;
.super Ljava/lang/Object;
.source "LinksHandlingImpl.scala"

# interfaces
.implements Lorg/bluecabin/textoo/impl/ConfiguratorImpl;
.implements Lorg/bluecabin/textoo/LinksHandling;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Lorg/bluecabin/textoo/Configurator<",
        "TT;>;:",
        "Lorg/bluecabin/textoo/LinksHandling<",
        "TT;TC;>;>",
        "Ljava/lang/Object;",
        "Lorg/bluecabin/textoo/impl/ConfiguratorImpl<",
        "TT;TC;>;",
        "Lorg/bluecabin/textoo/LinksHandling<",
        "TT;TC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001%4q!\u0001\u0002\u0011\u0002\u0007%1BA\tMS:\\7\u000fS1oI2LgnZ%na2T!a\u0001\u0003\u0002\t%l\u0007\u000f\u001c\u0006\u0003\u000b\u0019\ta\u0001^3yi>|\'BA\u0004\t\u0003%\u0011G.^3dC\nLgNC\u0001\n\u0003\ry\'oZ\u0002\u0001+\ra1\u0003J\n\u0005\u00015y\"\u0006E\u0002\u000f\u001fEi\u0011\u0001B\u0005\u0003!\u0011\u0011AbQ8oM&<WO]1u_J\u0004\"AE\n\r\u0001\u0011)A\u0003\u0001b\u0001+\t\tA+\u0005\u0002\u00179A\u0011qCG\u0007\u00021)\t\u0011$A\u0003tG\u0006d\u0017-\u0003\u0002\u001c1\t9aj\u001c;iS:<\u0007CA\u000c\u001e\u0013\tq\u0002DA\u0002B]f\u0004B\u0001I\u0011\u0012G5\t!!\u0003\u0002#\u0005\t\u00012i\u001c8gS\u001e,(/\u0019;pe&k\u0007\u000f\u001c\t\u0003%\u0011\"Q!\n\u0001C\u0002\u0019\u0012\u0011aQ\t\u0003-\u001d\u00122\u0001K\u0007+\r\u0011I\u0003\u0001A\u0014\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\t9Y\u0013cI\u0005\u0003Y\u0011\u0011Q\u0002T5oWND\u0015M\u001c3mS:<\u0007\"\u0002\u0018\u0001\t\u0003y\u0013A\u0002\u0013j]&$H\u0005F\u00011!\t9\u0012\'\u0003\u000231\t!QK\\5u\u0011\u001d!\u0004A1A\u0007\u0012U\n\u0001\u0002[1oI2,\'o]\u000b\u0002mA\u0019q\u0007\u0010 \u000e\u0003aR!!\u000f\u001e\u0002\u0013%lW.\u001e;bE2,\'BA\u001e\u0019\u0003)\u0019w\u000e\u001c7fGRLwN\\\u0005\u0003{a\u0012Q!U;fk\u0016\u0004\"AD \n\u0005\u0001#!\u0001\u0004\'j].\u001c\u0008*\u00198eY\u0016\u0014\u0008\"\u0002\"\u0001\r#\u0019\u0015AD;qI\u0006$X\rS1oI2,\'o\u001d\u000b\u0003G\u0011CQ!R!A\u0002Y\n1B\\3x\u0011\u0006tG\r\\3sg\")q\t\u0001C#\u0011\u0006y\u0011\r\u001a3MS:\\7\u000fS1oI2,\'\u000f\u0006\u0002$\u0013\")!J\u0012a\u0001}\u00059\u0001.\u00198eY\u0016\u0014\u0008\"\u0002\'\u0001\r#i\u0015\u0001F4fiN\u0003\u0018M\u001c8fI\u001a\u0013x.\u001c*fgVdG\u000f\u0006\u0002O3B\u0019qcT)\n\u0005AC\"AB(qi&|g\u000e\u0005\u0002S/6\t1K\u0003\u0002U+\u0006!A/\u001a=u\u0015\u00051\u0016aB1oIJ|\u0017\u000eZ\u0005\u00031N\u0013qa\u00159b]:,G\rC\u0003U\u0017\u0002\u0007\u0011\u0003C\u0003\\\u0001\u0019EA,\u0001\ntKR\u001c\u0006/\u00198oK\u0012$vNU3tk2$HcA\t^?\")aL\u0017a\u0001#\u000691\u000f]1o]\u0016$\u0007\"\u0002+[\u0001\u0004\t\u0002\"B1\u0001\t#\u0012\u0017\u0001\u0003;p%\u0016\u001cX\u000f\u001c;\u0015\u0005E\u0019\u0007\"\u0002+a\u0001\u0004\t\u0002bC3\u0001!\u0003\r\t\u0011!C\u0005M\"\u000cab];qKJ$Co\u001c*fgVdG\u000f\u0006\u0002\u0012O\")A\u000b\u001aa\u0001#%\u0011\u0011-\t"
.end annotation


# virtual methods
.method public abstract addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/LinksHandler;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract getSpannedFromResult(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/Option<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handlers()Lscala/collection/immutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/LinksHandler;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic org$bluecabin$textoo$impl$LinksHandlingImpl$$super$toResult(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setSpannedToResult(Landroid/text/Spanned;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public abstract toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract updateHandlers(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/LinksHandler;",
            ">;)TC;"
        }
    .end annotation
.end method
