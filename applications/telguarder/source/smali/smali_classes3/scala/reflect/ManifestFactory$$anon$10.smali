.class public final Lscala/reflect/ManifestFactory$$anon$10;
.super Lscala/reflect/AnyValManifest;
.source "Manifest.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/ManifestFactory$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/reflect/AnyValManifest<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Long"

    .line 123
    invoke-direct {p0, v0}, Lscala/reflect/AnyValManifest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 128
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Long()Lscala/reflect/AnyValManifest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Lscala/reflect/ManifestFactory$$anon$10;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[J
    .locals 0

    .line 125
    new-array p1, p1, [J

    return-object p1
.end method

.method public newArrayBuilder()Lscala/collection/mutable/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuilder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Lscala/collection/mutable/ArrayBuilder$ofLong;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuilder$ofLong;-><init>()V

    return-object v0
.end method

.method public newWrappedArray(I)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/WrappedArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofLong;

    new-array p1, p1, [J

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofLong;-><init>([J)V

    return-object v0
.end method

.method public runtimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0
.end method
