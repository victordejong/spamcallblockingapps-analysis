.class public interface abstract Lscala/collection/parallel/immutable/ParSet;
.super Ljava/lang/Object;
.source "ParSet.scala"

# interfaces
.implements Lscala/collection/parallel/ParSet;
.implements Lscala/collection/parallel/immutable/ParIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSet<",
        "TT;>;",
        "Lscala/collection/parallel/immutable/ParIterable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u0005\u001da\u0001C\u0001\u0003!\u0003\r\taC\u0019\u0003\rA\u000b\'oU3u\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011q\u0001C\u0001\u000bG>dG.Z2uS>t\'\"A\u0005\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011AbF\n\u0008\u00015\t\u0002\u0005K\u0016/!\tqq\"D\u0001\t\u0013\t\u0001\u0002B\u0001\u0004B]f\u0014VM\u001a\t\u0004%M)R\"\u0001\u0004\n\u0005Q1!AB$f]N+G\u000f\u0005\u0002\u0017/1\u0001A!\u0002\r\u0001\u0005\u0004I\"!\u0001+\u0012\u0005ii\u0002C\u0001\u0008\u001c\u0013\ta\u0002BA\u0004O_RD\u0017N\\4\u0011\u00059q\u0012BA\u0010\t\u0005\r\te.\u001f\t\u0005C\u0011*b%D\u0001#\u0015\t\u0019c!A\u0004hK:,\'/[2\n\u0005\u0015\u0012#AE$f]\u0016\u0014\u0018n\u0019)beR+W\u000e\u001d7bi\u0016\u0004\"a\n\u0001\u000e\u0003\t\u00012!\u000b\u0016\u0016\u001b\u0005!\u0011BA\u0001\u0005!\r9C&F\u0005\u0003[\t\u00111\u0002U1s\u0013R,\'/\u00192mKB)\u0011fL\u000b2e%\u0011\u0001\u0007\u0002\u0002\u000b!\u0006\u00148+\u001a;MS.,\u0007cA\u0014\u0001+A\u00191\'N\u000b\u000e\u0003QR!a\u0001\u0004\n\u0005Y\"$aA*fi\")\u0001\u0008\u0001C\u0001s\u00051A%\u001b8ji\u0012\"\u0012A\u000f\t\u0003\u001dmJ!\u0001\u0010\u0005\u0003\tUs\u0017\u000e\u001e\u0005\u0006}\u0001!\teP\u0001\u0006K6\u0004H/_\u000b\u0002c!)\u0011\t\u0001C!\u0005\u0006I1m\\7qC:LwN\\\u000b\u0002\u0007J\u0019AIR%\u0007\t\u0015\u0003\u0001a\u0011\u0002\ryI,g-\u001b8f[\u0016tGO\u0010\t\u0004C\u001d3\u0013B\u0001%#\u0005A9UM\\3sS\u000e\u001cu.\u001c9b]&|g\u000eE\u0002\"\u0015\u001aJ!a\u0013\u0012\u0003\'\u001d+g.\u001a:jGB\u000b\'oQ8na\u0006t\u0017n\u001c8\t\u000b5\u0003A\u0011\t(\u0002\u0019M$(/\u001b8h!J,g-\u001b=\u0016\u0003=\u0003\"\u0001U+\u000e\u0003ES!AU*\u0002\t1\u000cgn\u001a\u0006\u0002)\u0006!!.\u0019<b\u0013\t1\u0016K\u0001\u0004TiJLgn\u001a\u0005\u00061\u0002!\t%W\u0001\u0006i>\u001cV\r^\u000b\u00035v+\u0012a\u0017\t\u0004O\u0001a\u0006C\u0001\u000c^\t\u0015qvK1\u0001`\u0005\u0005)\u0016CA\u000b\u001e\u000f\u0015\t\'\u0001#\u0001c\u0003\u0019\u0001\u0016M]*fiB\u0011qe\u0019\u0004\u0006\u0003\tA\t\u0001Z\n\u0003G\u0016\u00042!\t4\'\u0013\t9\'EA\u0007QCJ\u001cV\r\u001e$bGR|\'/\u001f\u0005\u0006S\u000e$\tA[\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003\tDQ\u0001\\2\u0005\u00025\u000c1B\\3x\u0007>l\'-\u001b8feV\u0011an]\u000b\u0002_B!\u0011\u0006\u001d:u\u0013\t\tHA\u0001\u0005D_6\u0014\u0017N\\3s!\t12\u000fB\u0003\u0019W\n\u0007\u0011\u0004E\u0002(\u0001IDQA^2\u0005\u0004]\u000cAbY1o\u0005VLG\u000e\u001a$s_6,2\u0001_A\u0002+\u0005I\u0008cB\u0011{y\u0006\u0005\u0011QA\u0005\u0003w\n\u0012abQ1o\u0007>l\'-\u001b8f\rJ|W\u000e\u0005\u0002~}6\t1-\u0003\u0002\u0000\u000f\n!1i\u001c7m!\r1\u00121\u0001\u0003\u00061U\u0014\r!\u0007\t\u0005O\u0001\t\t\u0001"
.end annotation


# virtual methods
.method public abstract companion()Lscala/collection/generic/GenericCompanion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/immutable/ParSet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract empty()Lscala/collection/parallel/immutable/ParSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/ParSet<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method

.method public abstract toSet()Lscala/collection/parallel/immutable/ParSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/ParSet<",
            "TU;>;"
        }
    .end annotation
.end method
