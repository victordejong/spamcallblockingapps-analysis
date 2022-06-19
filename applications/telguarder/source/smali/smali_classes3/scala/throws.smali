.class public Lscala/throws;
.super Lscala/annotation/Annotation;
.source "throws.scala"

# interfaces
.implements Lscala/annotation/StaticAnnotation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Lscala/annotation/Annotation;",
        "Lscala/annotation/StaticAnnotation;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000113A!\u0001\u0002\u0001\u000b\t1A\u000f\u001b:poNT\u0011aA\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\t1\u0001eE\u0002\u0001\u000f5\u0001\"\u0001C\u0006\u000e\u0003%Q!A\u0003\u0002\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0002\r\u0013\tQ\u0011I\u001c8pi\u0006$\u0018n\u001c8\u0011\u0005!q\u0011BA\u0008\n\u0005A\u0019F/\u0019;jG\u0006sgn\u001c;bi&|g\u000e\u0003\u0005\u0012\u0001\t\u0005\t\u0015!\u0003\u0013\u0003\u0015\u0019\u0017-^:f!\t\u0019rC\u0004\u0002\u0015+5\t!!\u0003\u0002\u0017\u0005\u00051\u0001K]3eK\u001aL!\u0001G\r\u0003\rM#(/\u001b8h\u0015\t1\"\u0001C\u0003\u001c\u0001\u0011\u0005A$\u0001\u0004=S:LGO\u0010\u000b\u0003;5\u00022\u0001\u0006\u0001\u001f!\ty\u0002\u0005\u0004\u0001\u0005\u000b\u0005\u0002!\u0019\u0001\u0012\u0003\u0003Q\u000b\"a\t\u0014\u0011\u0005Q!\u0013BA\u0013\u0003\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"a\n\u0016\u000f\u0005QA\u0013BA\u0015\u0003\u0003\u001d\u0001\u0018mY6bO\u0016L!a\u000b\u0017\u0003\u0013QC\'o\\<bE2,\'BA\u0015\u0003\u0011\u001d\t\"\u0004%AA\u0002IAQa\u0007\u0001\u0005\u0002=\"\"!\u0008\u0019\t\u000bEr\u0003\u0019\u0001\u001a\u0002\u000b\rd\u0017M\u001f>\u0011\u0007M\u0019d$\u0003\u000253\t)1\t\\1tg\u001e9aGAA\u0001\u0012\u00039\u0014A\u0002;ie><8\u000f\u0005\u0002\u0015q\u00199\u0011AAA\u0001\u0012\u0003I4C\u0001\u001d;!\t!2(\u0003\u0002=\u0005\t1\u0011I\\=SK\u001aDQa\u0007\u001d\u0005\u0002y\"\u0012a\u000e\u0005\u0008\u0001b\n\n\u0011\"\u0001B\u0003m!C.Z:tS:LG\u000fJ4sK\u0006$XM\u001d\u0013eK\u001a\u000cW\u000f\u001c;%cU\u0011!iS\u000b\u0002\u0007*\u0012!\u0003R\u0016\u0002\u000bB\u0011a)S\u0007\u0002\u000f*\u0011\u0001*C\u0001\nk:\u001c\u0007.Z2lK\u0012L!AS$\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\rB\u0003\"\u007f\t\u0007!\u0005"
.end annotation


# direct methods
.method public static $lessinit$greater$default$1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">()",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lscala/throws$;->MODULE$:Lscala/throws$;

    invoke-virtual {v0}, Lscala/throws$;->$lessinit$greater$default$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string p1, ""

    .line 27
    invoke-direct {p0, p1}, Lscala/throws;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lscala/annotation/Annotation;-><init>()V

    return-void
.end method
