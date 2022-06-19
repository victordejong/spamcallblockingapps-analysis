.class public final Lscala/reflect/ManifestFactory$$anon$12;
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

    const-string v0, "Double"

    .line 139
    invoke-direct {p0, v0}, Lscala/reflect/AnyValManifest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 144
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Double()Lscala/reflect/AnyValManifest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lscala/reflect/ManifestFactory$$anon$12;->newArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[D
    .locals 0

    .line 141
    new-array p1, p1, [D

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

    .line 143
    new-instance v0, Lscala/collection/mutable/ArrayBuilder$ofDouble;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;-><init>()V

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

    .line 142
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofDouble;

    new-array p1, p1, [D

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofDouble;-><init>([D)V

    return-object v0
.end method

.method public runtimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 140
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0
.end method
