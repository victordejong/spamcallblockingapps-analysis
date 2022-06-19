.class public final Lscala/reflect/ClassTag$$anon$1;
.super Ljava/lang/Object;
.source "ClassTag.scala"

# interfaces
.implements Lscala/reflect/ClassTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/reflect/ClassTag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final runtimeClass1$1:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lscala/reflect/ClassTag$$anon$1;->runtimeClass1$1:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$init$(Lscala/reflect/ClassTag;)V

    invoke-static {p0}, Lscala/reflect/ClassTag$class;->$init$(Lscala/reflect/ClassTag;)V

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

    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$greater$colon$greater(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result p1

    return p1
.end method

.method public $less$colon$less(Lscala/reflect/ClassTag;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "*>;)Z"
        }
    .end annotation

    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->$less$colon$less(Lscala/reflect/ClassTag;Lscala/reflect/ClassTag;)Z

    move-result p1

    return p1
.end method

.method public argString()Ljava/lang/String;
    .locals 1

    .line 152
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

    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->arrayClass(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public arrayManifest()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->arrayManifest(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->canEqual(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassTag$class;->equals(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z

    move-result p1

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

    .line 152
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->erasure(Lscala/reflect/ClassTag;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 152
    invoke-static {p0}, Lscala/reflect/ClassTag$class;->hashCode(Lscala/reflect/ClassTag;)I

    move-result v0

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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
    invoke-static {p0, p1}, Lscala/reflect/ClassManifestDeprecatedApis$class;->newWrappedArray(Lscala/reflect/ClassTag;I)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    return-object p1
.end method

.method public runtimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lscala/reflect/ClassTag$$anon$1;->runtimeClass1$1:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-static {p0}, Lscala/reflect/ClassTag$class;->toString(Lscala/reflect/ClassTag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeArguments()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/reflect/OptManifest<",
            "*>;>;"
        }
    .end annotation

    .line 152
    invoke-static {p0}, Lscala/reflect/ClassManifestDeprecatedApis$class;->typeArguments(Lscala/reflect/ClassTag;)Lscala/collection/immutable/List;

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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
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

    .line 152
    invoke-static {p0}, Lscala/reflect/ClassTag$class;->wrap(Lscala/reflect/ClassTag;)Lscala/reflect/ClassTag;

    move-result-object v0

    return-object v0
.end method
