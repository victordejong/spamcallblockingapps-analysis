.class public final Lkotlin/reflect/jvm/internal/impl/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/e/h;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/h;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/e/h;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/h;->a:Lkotlin/reflect/jvm/internal/impl/e/h;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 259
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.internal.NoInfer"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 260
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.internal.Exact"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 258
    invoke-static {v0}, Lkotlin/a/ap;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/h;->b:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 258
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/h;->b:Ljava/util/Set;

    return-object v0
.end method
