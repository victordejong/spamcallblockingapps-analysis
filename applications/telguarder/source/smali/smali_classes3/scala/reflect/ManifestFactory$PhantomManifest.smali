.class public abstract Lscala/reflect/ManifestFactory$PhantomManifest;
.super Lscala/reflect/ManifestFactory$ClassTypeManifest;
.source "Manifest.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/ManifestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PhantomManifest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/reflect/ManifestFactory$ClassTypeManifest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final transient hashCode:I

.field private final toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 231
    iput-object p2, p0, Lscala/reflect/ManifestFactory$PhantomManifest;->toString:Ljava/lang/String;

    sget-object p2, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {p0, p2, p1, v0}, Lscala/reflect/ManifestFactory$ClassTypeManifest;-><init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V

    .line 234
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lscala/reflect/ManifestFactory$PhantomManifest;->hashCode:I

    return-void
.end method


# virtual methods
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

.method public hashCode()I
    .locals 1

    .line 234
    iget v0, p0, Lscala/reflect/ManifestFactory$PhantomManifest;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lscala/reflect/ManifestFactory$PhantomManifest;->toString:Ljava/lang/String;

    return-object v0
.end method
