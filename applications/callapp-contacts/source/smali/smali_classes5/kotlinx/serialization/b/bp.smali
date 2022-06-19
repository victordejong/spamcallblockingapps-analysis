.class public final Lkotlinx/serialization/b/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H\u0000\u001a\u0012\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0001H\u0000\u001a\u001d\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0004\u0008\u0000\u0010\t*\u0006\u0012\u0002\u0008\u00030\u0008H\u0081\u0008\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00060\u000cj\u0002`\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "defer",
        "Lkotlinx/serialization/SerialDescriptor;",
        "deferred",
        "Lkotlin/Function0;",
        "cachedSerialNames",
        "",
        "",
        "cast",
        "Lkotlinx/serialization/KSerializer;",
        "T",
        "readExactNBytes",
        "",
        "Ljava/io/InputStream;",
        "Lkotlinx/io/InputStream;",
        "bytes",
        "",
        "kotlinx-serialization-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final a(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$cachedSerialNames"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    instance-of v0, p0, Lkotlinx/serialization/b/ay;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/serialization/b/ay;

    .line 1030
    invoke-virtual {p0}, Lkotlinx/serialization/b/ay;->e()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Lkotlinx/serialization/SerialDescriptor;->d()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    .line 85
    invoke-interface {p0}, Lkotlinx/serialization/SerialDescriptor;->d()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 86
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p0, v1}, Lkotlinx/serialization/SerialDescriptor;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/SerialDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/serialization/SerialDescriptor;",
            ">;)",
            "Lkotlinx/serialization/SerialDescriptor;"
        }
    .end annotation

    const-string v0, "deferred"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lkotlinx/serialization/b/bp$a;

    invoke-direct {v0, p0}, Lkotlinx/serialization/b/bp$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method
