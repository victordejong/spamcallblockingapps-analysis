.class public interface abstract Lscala/Function3;
.super Ljava/lang/Object;
.source "Function3.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001E3\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005Q\u0001\u0015\u0002\n\rVt7\r^5p]NR\u0011aA\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\u00151!e\n\u0017\u0017\'\t\u0001q\u0001\u0005\u0002\t\u00135\t!!\u0003\u0002\u000b\u0005\t1\u0011I\\=SK\u001aDQ\u0001\u0004\u0001\u0005\u00025\ta\u0001J5oSR$C#\u0001\u0008\u0011\u0005!y\u0011B\u0001\t\u0003\u0005\u0011)f.\u001b;\t\u000bI\u0001a\u0011A\n\u0002\u000b\u0005\u0004\u0008\u000f\\=\u0015\tQyB%\u000b\t\u0003+Ya\u0001\u0001\u0002\u0004\u0018\u0001\u0011\u0015\r\u0001\u0007\u0002\u0002%F\u0011\u0011\u0004\u0008\t\u0003\u0011iI!a\u0007\u0002\u0003\u000f9{G\u000f[5oOB\u0011\u0001\"H\u0005\u0003=\t\u00111!\u00118z\u0011\u0015\u0001\u0013\u00031\u0001\"\u0003\t1\u0018\u0007\u0005\u0002\u0016E\u001111\u0005\u0001EC\u0002a\u0011!\u0001V\u0019\t\u000b\u0015\n\u0002\u0019\u0001\u0014\u0002\u0005Y\u0014\u0004CA\u000b(\t\u0019A\u0003\u0001#b\u00011\t\u0011AK\r\u0005\u0006UE\u0001\raK\u0001\u0003mN\u0002\"!\u0006\u0017\u0005\r5\u0002\u0001R1\u0001\u0019\u0005\t!6\u0007C\u00030\u0001\u0011\u0005\u0001\'A\u0004dkJ\u0014\u0018.\u001a3\u0016\u0003E\u0002B\u0001\u0003\u001a\"i%\u00111G\u0001\u0002\n\rVt7\r^5p]F\u0002B\u0001\u0003\u001a\'kA!\u0001BM\u0016\u0015Q\tqs\u0007\u0005\u00029w5\t\u0011H\u0003\u0002;\u0005\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005qJ$!D;ogB,7-[1mSj,G\rC\u0003?\u0001\u0011\u0005q(\u0001\u0004ukBdW\rZ\u000b\u0002\u0001B!\u0001BM!\u0015!\u0015A!)\t\u0014,\u0013\t\u0019%A\u0001\u0004UkBdWm\r\u0015\u0003{]BQA\u0012\u0001\u0005B\u001d\u000b\u0001\u0002^8TiJLgn\u001a\u000b\u0002\u0011B\u0011\u0011JT\u0007\u0002\u0015*\u00111\nT\u0001\u0005Y\u0006twMC\u0001N\u0003\u0011Q\u0017M^1\n\u0005=S%AB*ue&tw\r\u0005\u0004\t\u0001\u000523\u0006\u0006"
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)TR;"
        }
    .end annotation
.end method

.method public abstract curried()Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TT1;",
            "Lscala/Function1<",
            "TT2;",
            "Lscala/Function1<",
            "TT3;TR;>;>;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract tupled()Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Lscala/Tuple3<",
            "TT1;TT2;TT3;>;TR;>;"
        }
    .end annotation
.end method
