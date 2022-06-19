.class public final Lscala/reflect/ManifestFactory$$anon$14;
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
        "Lscala/runtime/BoxedUnit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Unit"

    .line 155
    invoke-direct {p0, v0}, Lscala/reflect/AnyValManifest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 160
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Unit()Lscala/reflect/AnyValManifest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lscala/reflect/ManifestFactory$$anon$14;->newArray(I)[Lscala/runtime/BoxedUnit;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lscala/runtime/BoxedUnit;
    .locals 0

    .line 157
    new-array p1, p1, [Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public newArrayBuilder()Lscala/collection/mutable/ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuilder<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Lscala/collection/mutable/ArrayBuilder$ofUnit;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;-><init>()V

    return-object v0
.end method

.method public newWrappedArray(I)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/WrappedArray<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofUnit;

    new-array p1, p1, [Lscala/runtime/BoxedUnit;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofUnit;-><init>([Lscala/runtime/BoxedUnit;)V

    return-object v0
.end method

.method public runtimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 156
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0
.end method
