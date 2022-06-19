.class public abstract Lscala/reflect/AnyValManifest;
.super Ljava/lang/Object;
.source "Manifest.scala"

# interfaces
.implements Lscala/reflect/Manifest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/reflect/Manifest<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\t4Q!\u0001\u0002\u0002\u0002\u001d\u0011a\"\u00118z-\u0006dW*\u00198jM\u0016\u001cHO\u0003\u0002\u0004\t\u00059!/\u001a4mK\u000e$(\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bE\n\u0005\u0001%iA\u0004\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u00042AD\u0008\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005!i\u0015M\\5gKN$\u0008C\u0001\n\u0014\u0019\u0001!Q\u0001\u0006\u0001C\u0002U\u0011\u0011\u0001V\t\u0003-e\u0001\"AC\u000c\n\u0005a!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015iI!a\u0007\u0003\u0003\r\u0005s\u0017PV1m!\tQQ$\u0003\u0002\u001f\t\t1Q)];bYND\u0001\u0002\t\u0001\u0003\u0006\u0004%\t%I\u0001\ti>\u001cFO]5oOV\t!\u0005\u0005\u0002$M9\u0011!\u0002J\u0005\u0003K\u0011\ta\u0001\u0015:fI\u00164\u0017BA\u0014)\u0005\u0019\u0019FO]5oO*\u0011Q\u0005\u0002\u0005\tU\u0001\u0011\t\u0011)A\u0005E\u0005IAo\\*ue&tw\r\t\u0005\u0006Y\u0001!\t!L\u0001\u0007y%t\u0017\u000e\u001e \u0015\u00059z\u0003c\u0001\u0008\u0001#!)\u0001e\u000ba\u0001E!)\u0011\u0007\u0001C!e\u0005\u0001B\u0005\\3tg\u0012\u001aw\u000e\\8oI1,7o\u001d\u000b\u0003gY\u0002\"A\u0003\u001b\n\u0005U\"!a\u0002\"p_2,\u0017M\u001c\u0005\u0006oA\u0002\r\u0001O\u0001\u0005i\"\u000cG\u000f\r\u0002:\u0003B\u0019!(\u0010!\u000f\u00059Y\u0014B\u0001\u001f\u0003\u0003\u001d\u0001\u0018mY6bO\u0016L!AP \u0003\u001b\rc\u0017m]:NC:Lg-Z:u\u0015\ta$\u0001\u0005\u0002\u0013\u0003\u0012I!INA\u0001\u0002\u0003\u0015\ta\u0011\u0002\u0004?\u0012\u0012\u0014C\u0001\u000cE!\tQQ)\u0003\u0002G\t\t\u0019\u0011I\\=\t\u000b!\u0003A\u0011I%\u0002\u0011\r\u000cg.R9vC2$\"a\r&\t\u000b-;\u0005\u0019\u0001#\u0002\u000b=$\u0008.\u001a:\t\u000b5\u0003A\u0011\t(\u0002\r\u0015\u000cX/\u00197t)\t\u0019t\nC\u00038\u0019\u0002\u0007A\tC\u0004R\u0001\t\u0007I\u0011\t*\u0002\u0011!\u000c7\u000f[\"pI\u0016,\u0012a\u0015\t\u0003\u0015QK!!\u0016\u0003\u0003\u0007%sG\u000f\u0003\u0004X\u0001\u0001\u0006IaU\u0001\nQ\u0006\u001c\u0008nQ8eK\u0002B#AV-\u0011\u0005)Q\u0016BA.\u0005\u0005%!(/\u00198tS\u0016tG\u000f\u000b\u0003\u0001;\u0002\u000c\u0007C\u0001\u0006_\u0013\tyFA\u0001\tTKJL\u0017\r\u001c,feNLwN\\+J\t\u0006)a/\u00197vKz\t\u0011\u0001"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient hashCode:I

.field private final toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lscala/reflect/AnyValManifest;->toString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/ClassTag$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/Manifest$class;->$init$(Lscala/reflect/Manifest;)V

    .line 77
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lscala/reflect/AnyValManifest;->hashCode:I

    return-void
.end method


# virtual methods
.method public $greater$colon$greater(Lscala/reflect/ClassTag;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "*>;)Z"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$greater$colon$greater(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result p1

    return p1
.end method

.method public $less$colon$less(Lscala/reflect/ClassTag;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "*>;)Z"
        }
    .end annotation

    if-eq p1, p0, :cond_1

    .line 70
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Any()Lscala/reflect/Manifest;

    move-result-object v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->AnyVal()Lscala/reflect/Manifest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public argString()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->argString(Lscala/reflect/ClassTag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public arrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->arrayClass(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic arrayManifest()Lscala/reflect/ClassTag;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lscala/reflect/AnyValManifest;->arrayManifest()Lscala/reflect/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public arrayManifest()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lscala/reflect/Manifest$class;->arrayManifest(Lscala/reflect/Manifest;)Lscala/reflect/Manifest;

    move-result-object v0

    return-object v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 71
    instance-of p1, p1, Lscala/reflect/AnyValManifest;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public erasure()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->erasure(Lscala/reflect/ClassTag;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 77
    iget v0, p0, Lscala/reflect/AnyValManifest;->hashCode:I

    return v0
.end method

.method public newArray(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->newArray(Lscala/reflect/ClassTag;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray2(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArray2(Lscala/reflect/ClassTag;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray3(I)[[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArray3(Lscala/reflect/ClassTag;I)[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray4(I)[[[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArray4(Lscala/reflect/ClassTag;I)[[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray5(I)[[[[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[[[[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArray5(Lscala/reflect/ClassTag;I)[[[[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArrayBuilder()Lscala/collection/mutable/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newArrayBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public newWrappedArray(I)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/WrappedArray<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newWrappedArray(Lscala/reflect/ClassTag;I)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lscala/reflect/AnyValManifest;->toString:Ljava/lang/String;

    return-object v0
.end method

.method public typeArguments()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/reflect/Manifest<",
            "*>;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lscala/reflect/Manifest$class;->typeArguments(Lscala/reflect/Manifest;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public unapply(B)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;B)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(C)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;C)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(D)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1, p2}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;D)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(F)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;F)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(I)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;I)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(J)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1, p2}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;J)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(Lscala/runtime/BoxedUnit;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/runtime/BoxedUnit;",
            ")",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;Lscala/runtime/BoxedUnit;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(S)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;S)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public unapply(Z)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->unapply(Lscala/reflect/ClassTag;Z)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public wrap()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {p0}, Lscala/reflect/ClassTag$class;->wrap(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method
