.class public interface abstract Lorg/bluecabin/textoo/impl/ConfiguratorImpl;
.super Ljava/lang/Object;
.source "ConfiguratorImpl.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Lorg/bluecabin/textoo/Configurator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00054q!\u0001\u0002\u0011\u0002\u0007%1B\u0001\tD_:4\u0017nZ;sCR|\'/S7qY*\u00111\u0001B\u0001\u0005S6\u0004HN\u0003\u0002\u0006\r\u00051A/\u001a=u_>T!a\u0002\u0005\u0002\u0013\tdW/Z2bE&t\'\"A\u0005\u0002\u0007=\u0014xm\u0001\u0001\u0016\u00071\u0019Bj\u0005\u0002\u0001\u001bA\u0019abD\t\u000e\u0003\u0011I!\u0001\u0005\u0003\u0003\u0019\r{gNZ5hkJ\u000cGo\u001c:\u0011\u0005I\u0019B\u0002\u0001\u0003\u0006)\u0001\u0011\r!\u0006\u0002\u0002)F\u0011a\u0003\u0008\t\u0003/ii\u0011\u0001\u0007\u0006\u00023\u0005)1oY1mC&\u00111\u0004\u0007\u0002\u0008\u001d>$\u0008.\u001b8h!\t9R$\u0003\u0002\u001f1\t\u0019\u0011I\\=\t\u000b\u0001\u0002A\u0011A\u0011\u0002\r\u0011Jg.\u001b;%)\u0005\u0011\u0003CA\u000c$\u0013\t!\u0003D\u0001\u0003V]&$\u0008b\u0002\u0014\u0001\u0005\u00045\tbJ\u0001\u000ei\u0016DHo\\8D_:$X\r\u001f;\u0016\u0003!\u0002\"AD\u0015\n\u0005)\"!!\u0004+fqR|wnQ8oi\u0016DH\u000fC\u0003-\u0001\u0011]q%A\u000bj[Bd\u0017nY5u)\u0016DHo\\8D_:$X\r\u001f;\t\u000f9\u0002!\u0019!D\t_\u0005I\u0011N\\5u\'R\u000cG/Z\u000b\u0002aA\u0019q#M\t\n\u0005IB\"!\u0003$v]\u000e$\u0018n\u001c81\u0011\u001d!\u0004A1A\u0007\u0012U\nqa\u00195b]\u001e,7/F\u00017!\r9T)\u0005\u0008\u0003q\rs!!\u000f\"\u000f\u0005i\neBA\u001eA\u001d\tat(D\u0001>\u0015\tq$\"\u0001\u0004=e>|GOP\u0005\u0002\u0013%\u0011q\u0001C\u0005\u0003\u000b\u0019I!a\u0001\u0003\n\u0005\u0011\u0013\u0011AB\"iC:<W-\u0003\u0002G\u000f\nY1\t[1oO\u0016\u000cV/Z;f\u0015\t!%\u0001C\u0003J\u0001\u0019E!*A\u0007va\u0012\u000cG/Z\"iC:<Wm\u001d\u000b\u0003\u0017>\u0003\"A\u0005\'\u0005\u000b5\u0003!\u0019\u0001(\u0003\u0003\r\u000b\"AF\u0007\t\u000bQB\u0005\u0019\u0001\u001c\t\u000bE\u0003AQ\u0003*\u0002\u0013\u0005$Gm\u00115b]\u001e,GCA&T\u0011\u0015!\u0006\u000b1\u0001V\u0003\r\u0019\u0007n\u001a\t\u0004-^\u000bR\"\u0001\u0002\n\u0005a\u0013!AB\"iC:<W\rC\u0003[\u0001\u0011E1,\u0001\u0005u_J+7/\u001e7u)\t\tB\u000cC\u0003^3\u0002\u0007\u0011#\u0001\u0003uKb$\u0008\"B0\u0001\t\u000b\u0002\u0017!B1qa2LH#A\t"
.end annotation


# virtual methods
.method public abstract addChange(Lorg/bluecabin/textoo/impl/Change;)Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;)TC;"
        }
    .end annotation
.end method

.method public abstract apply()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract changes()Lscala/collection/immutable/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract implicitTextooContext()Lorg/bluecabin/textoo/TextooContext;
.end method

.method public abstract initState()Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract textooContext()Lorg/bluecabin/textoo/TextooContext;
.end method

.method public abstract toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract updateChanges(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/Configurator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;)TC;"
        }
    .end annotation
.end method
