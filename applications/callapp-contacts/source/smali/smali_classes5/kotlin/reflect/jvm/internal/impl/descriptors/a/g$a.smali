.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    .line 38
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a$a;-><init>()V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1

    .line 38
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/h;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/h;-><init>(Ljava/util/List;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method
