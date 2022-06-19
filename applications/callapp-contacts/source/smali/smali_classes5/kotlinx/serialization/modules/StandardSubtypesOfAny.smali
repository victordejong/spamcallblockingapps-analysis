.class public final Lkotlinx/serialization/modules/StandardSubtypesOfAny;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u000bJ\u001b\u0010\u000c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0008\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0007\u001a\u0016\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0008\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/serialization/modules/StandardSubtypesOfAny;",
        "",
        "()V",
        "deserializingMap",
        "",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "map",
        "Lkotlin/reflect/KClass;",
        "getDefaultDeserializer",
        "serializedClassName",
        "getDefaultDeserializer$kotlinx_serialization_runtime",
        "getSubclassSerializer",
        "objectToCheck",
        "getSubclassSerializer$kotlinx_serialization_runtime",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/modules/StandardSubtypesOfAny;

.field private static final deserializingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/c<",
            "*>;",
            "Lkotlinx/serialization/KSerializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lkotlinx/serialization/modules/StandardSubtypesOfAny;

    invoke-direct {v0}, Lkotlinx/serialization/modules/StandardSubtypesOfAny;-><init>()V

    sput-object v0, Lkotlinx/serialization/modules/StandardSubtypesOfAny;->INSTANCE:Lkotlinx/serialization/modules/StandardSubtypesOfAny;

    const/16 v0, 0x12

    new-array v0, v0, [Lkotlin/n;

    .line 15
    const-class v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 16
    new-instance v2, Lkotlinx/serialization/i;

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lkotlinx/serialization/a/d;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 18
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 19
    new-instance v2, Lkotlinx/serialization/i;

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 18
    invoke-static {v2}, Lkotlinx/serialization/a/d;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 21
    const-class v1, Ljava/util/HashSet;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    new-instance v2, Lkotlinx/serialization/b/aa;

    .line 22
    new-instance v3, Lkotlinx/serialization/i;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 21
    invoke-direct {v2, v3}, Lkotlinx/serialization/b/aa;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 24
    const-class v1, Ljava/util/Set;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 25
    new-instance v2, Lkotlinx/serialization/i;

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlinx/serialization/a/d;->b(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 27
    const-class v1, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    new-instance v2, Lkotlinx/serialization/b/ag;

    .line 28
    new-instance v3, Lkotlinx/serialization/i;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 29
    new-instance v4, Lkotlinx/serialization/i;

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-static {v4}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    .line 27
    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/b/ag;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 31
    const-class v1, Ljava/util/HashMap;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    new-instance v2, Lkotlinx/serialization/b/y;

    .line 32
    new-instance v3, Lkotlinx/serialization/i;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 33
    new-instance v4, Lkotlinx/serialization/i;

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-static {v4}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    .line 31
    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/b/y;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 35
    const-class v1, Ljava/util/Map;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    new-instance v2, Lkotlinx/serialization/b/ag;

    .line 36
    new-instance v3, Lkotlinx/serialization/i;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 37
    new-instance v4, Lkotlinx/serialization/i;

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-static {v4}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    .line 35
    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/b/ag;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 39
    const-class v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 40
    new-instance v2, Lkotlinx/serialization/i;

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    invoke-direct {v2, v3}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 41
    new-instance v3, Lkotlinx/serialization/i;

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/serialization/i;-><init>(Lkotlin/reflect/c;)V

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 39
    invoke-static {v2, v3}, Lkotlinx/serialization/a/c;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 43
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/ag;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 44
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/f;->a:Lkotlin/jvm/internal/f;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/f;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 45
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/o;->a:Lkotlin/jvm/internal/o;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/o;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 46
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/d;->a:Lkotlin/jvm/internal/d;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/d;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 47
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/ae;->a:Lkotlin/jvm/internal/ae;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/ae;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 48
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/LongCompanionObject;->a:Lkotlin/jvm/internal/LongCompanionObject;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/LongCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 49
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/j;->a:Lkotlin/jvm/internal/j;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/j;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 50
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/k;->a:Lkotlin/jvm/internal/k;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/k;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 51
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/c;->a:Lkotlin/jvm/internal/c;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/c;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 52
    const-class v1, Lkotlin/v;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 1104
    sget-object v2, Lkotlinx/serialization/b/bo;->a:Lkotlinx/serialization/b/bo;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 52
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    .line 55
    sput-object v0, Lkotlinx/serialization/modules/StandardSubtypesOfAny;->map:Ljava/util/Map;

    .line 69
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/a/ai;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 72
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 55
    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    sput-object v1, Lkotlinx/serialization/modules/StandardSubtypesOfAny;->deserializingMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultDeserializer$kotlinx_serialization_runtime(Ljava/lang/String;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const-string v0, "serializedClassName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lkotlinx/serialization/modules/StandardSubtypesOfAny;->deserializingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    return-object p1
.end method

.method public final getSubclassSerializer$kotlinx_serialization_runtime(Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const-string v0, "objectToCheck"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lkotlinx/serialization/modules/StandardSubtypesOfAny;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    .line 60
    invoke-static {p1, v2}, Lkotlinx/serialization/q;->a(Ljava/lang/Object;Lkotlin/reflect/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
