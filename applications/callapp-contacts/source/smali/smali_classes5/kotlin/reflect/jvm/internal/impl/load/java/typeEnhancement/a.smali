.class final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static e()Ljava/lang/Void;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No methods should be called on this descriptor. Only its presence matters"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    .line 238
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->e()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 236
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation

    .line 239
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->e()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/descriptors/at;
    .locals 1

    .line 240
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a;->e()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[EnhancedType]"

    return-object v0
.end method
