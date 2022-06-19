.class public abstract Lscala/runtime/AbstractFunction4;
.super Ljava/lang/Object;
.source "AbstractFunction4.scala"

# interfaces
.implements Lscala/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function4<",
        "TT1;TT2;TT3;TT4;TR;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000112Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\u000c7\r\u001e$v]\u000e$\u0018n\u001c85\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0004\t%qy\"%J\n\u0004\u0001%i\u0001C\u0001\u0006\u000c\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB9!B\u0004\t\u001c=\u0005\"\u0013BA\u0008\u0005\u0005%1UO\\2uS>tG\u0007\u0005\u0002\u0012%1\u0001AAB\n\u0001\u0011\u000b\u0007AC\u0001\u0002UcE\u0011Q\u0003\u0007\t\u0003\u0015YI!a\u0006\u0003\u0003\u000f9{G\u000f[5oOB\u0011!\"G\u0005\u00035\u0011\u00111!\u00118z!\t\tB\u0004\u0002\u0004\u001e\u0001!\u0015\r\u0001\u0006\u0002\u0003)J\u0002\"!E\u0010\u0005\r\u0001\u0002\u0001R1\u0001\u0015\u0005\t!6\u0007\u0005\u0002\u0012E\u001111\u0005\u0001EC\u0002Q\u0011!\u0001\u0016\u001b\u0011\u0005E)CA\u0002\u0014\u0001\t\u000b\u0007ACA\u0001S\u0011\u0015A\u0003\u0001\"\u0001*\u0003\u0019a\u0014N\\5u}Q\t!\u0006E\u0004,\u0001AYb$\t\u0013\u000e\u0003\t\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function4$class;->$init$(Lscala/Function4;)V

    return-void
.end method


# virtual methods
.method public curried()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TT1;",
            "Lscala/Function1<",
            "TT2;",
            "Lscala/Function1<",
            "TT3;",
            "Lscala/Function1<",
            "TT4;TR;>;>;>;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function4$class;->curried(Lscala/Function4;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {p0}, Lscala/Function4$class;->toString(Lscala/Function4;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tupled()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Lscala/Tuple4<",
            "TT1;TT2;TT3;TT4;>;TR;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function4$class;->tupled(Lscala/Function4;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method
