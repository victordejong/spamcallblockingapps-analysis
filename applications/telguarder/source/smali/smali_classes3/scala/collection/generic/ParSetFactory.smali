.class public abstract Lscala/collection/generic/ParSetFactory;
.super Lscala/collection/generic/GenSetFactory;
.source "ParSetFactory.scala"

# interfaces
.implements Lscala/collection/generic/GenericParCompanion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/generic/ParSetFactory$GenericCanCombineFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/parallel/ParSet<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenSetFactory<",
        "TCC;>;",
        "Lscala/collection/generic/GenericParCompanion<",
        "TCC;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001E4Q!\u0001\u0002\u0002\u0002%\u0011Q\u0002U1s\'\u0016$h)Y2u_JL(BA\u0002\u0005\u0003\u001d9WM\\3sS\u000eT!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0008\u0003\u0015\u00198-\u00197b\u0007\u0001)\"AC\t\u0014\u0007\u0001YA\u0007E\u0002\r\u001b=i\u0011AA\u0005\u0003\u001d\t\u0011QbR3o\'\u0016$h)Y2u_JL\u0008C\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011!aQ\"\u0016\u0005Q\u0019\u0013CA\u000b\u001a!\t1r#D\u0001\u0007\u0013\tAbAA\u0004O_RD\u0017N\\4\u0013\tia\u0012&\r\u0004\u00057\u0001\u0001\u0011D\u0001\u0007=e\u00164\u0017N\\3nK:$h\u0008E\u0002\u001eA\tj\u0011A\u0008\u0006\u0003?\u0011\t\u0001\u0002]1sC2dW\r\\\u0005\u0003Cy\u0011a\u0001U1s\'\u0016$\u0008C\u0001\t$\t\u0015!\u0013C1\u0001&\u0005\u0005A\u0016CA\u000b\'!\t1r%\u0003\u0002)\r\t\u0019\u0011I\\=1\u0005)z\u0003#B\u000f,E5r\u0013B\u0001\u0017\u001f\u0005)\u0001\u0016M]*fi2K7.\u001a\t\u0004!E\u0011\u0003C\u0001\t0\t%\u0001\u0014#!A\u0001\u0002\u000b\u0005QEA\u0002`IE\u0002B\u0001\u0004\u001a#\u001f%\u00111G\u0001\u0002\u0013\u000f\u0016tWM]5d!\u0006\u0014H+Z7qY\u0006$X\rE\u0002\rk=I!A\u000e\u0002\u0003\'\u001d+g.\u001a:jGB\u000b\'oQ8na\u0006t\u0017n\u001c8\t\u000ba\u0002A\u0011A\u001d\u0002\rqJg.\u001b;?)\u0005Q\u0004c\u0001\u0007\u0001\u001f!)A\u0008\u0001C\u0001{\u0005Qa.Z<Ck&dG-\u001a:\u0016\u0005y\u001aU#A \u0011\tu\u0001%)R\u0005\u0003\u0003z\u0011\u0001bQ8nE&tWM\u001d\t\u0003!\r#Q\u0001R\u001eC\u0002\u0015\u0012\u0011!\u0011\t\u0004!E\u0011\u0005\"B$\u0001\r\u0003A\u0015a\u00038fo\u000e{WNY5oKJ,\"!\u0013\'\u0016\u0003)\u0003B!\u0008!L\u001bB\u0011\u0001\u0003\u0014\u0003\u0006\t\u001a\u0013\r!\n\t\u0004!EYe\u0001B(\u0001\u0001A\u0013QcR3oKJL7mQ1o\u0007>l\'-\u001b8f\rJ|W.\u0006\u0002R=N\u0019aJU+\u0011\u0005Y\u0019\u0016B\u0001+\u0007\u0005\u0019\te.\u001f*fMB)AB\u0016-^?&\u0011qK\u0001\u0002\u000f\u0007\u0006t7i\\7cS:,gI]8na\tI6\u000cE\u0002\u0011#i\u0003\"\u0001E.\u0005\u0013qs\u0015\u0011!A\u0001\u0006\u0003)#aA0%eA\u0011\u0001C\u0018\u0003\u0006\t:\u0013\r!\n\t\u0004!Ei\u0006\"\u0002\u001dO\t\u0003\tG#\u00012\u0011\u0007\rtU,D\u0001\u0001\u0011\u0015)g\n\"\u0011g\u0003\u0015\t\u0007\u000f\u001d7z)\t9\u0007\u000e\u0005\u0003\u001e\u0001v{\u0006\"B5e\u0001\u0004Q\u0017\u0001\u00024s_6\u0004\"aY6\n\u00051l\'\u0001B\"pY2L!A\u001c\u0002\u0003!\u001d+g.\u001a:jG\u000e{W\u000e]1oS>t\u0007\"B3O\t\u0003\u0002H#A4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lscala/collection/generic/GenSetFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lscala/collection/generic/ParSetFactory;->newBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lscala/collection/generic/ParSetFactory;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public abstract newCombiner()Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TA;TCC;>;"
        }
    .end annotation
.end method
