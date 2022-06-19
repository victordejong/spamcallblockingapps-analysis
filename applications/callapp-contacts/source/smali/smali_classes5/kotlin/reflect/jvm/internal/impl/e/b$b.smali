.class public final Lkotlin/reflect/jvm/internal/impl/e/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/e/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/b$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/e/b$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/e/b$b;->a:Lkotlin/reflect/jvm/internal/impl/e/b$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/e/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "classifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    const-string v0, "classifier.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 29
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 34
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    .line 37
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v0, :cond_1

    .line 39
    check-cast p2, Ljava/util/List;

    const-string p1, "$this$asReversed"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    new-instance p1, Lkotlin/a/an;

    invoke-direct {p1, p2}, Lkotlin/a/an;-><init>(Ljava/util/List;)V

    check-cast p1, Ljava/util/List;

    .line 39
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/e/n;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
