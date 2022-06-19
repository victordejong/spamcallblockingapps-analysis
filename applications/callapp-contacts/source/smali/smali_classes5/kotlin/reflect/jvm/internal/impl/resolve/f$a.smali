.class public final Lkotlin/reflect/jvm/internal/impl/resolve/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/f$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)I
    .locals 1

    .line 60
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 63
    :cond_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    if-eqz v0, :cond_1

    const/4 p0, 0x7

    return p0

    .line 66
    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz v0, :cond_3

    .line 67
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    .line 74
    :cond_3
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v0, :cond_5

    .line 75
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x3

    return p0

    .line 82
    :cond_5
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 85
    :cond_6
    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/Integer;
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/Integer;
    .locals 2

    .line 99
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)I

    move-result v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 106
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 109
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)I

    move-result p0

    if-eqz p0, :cond_2

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 1093
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/f$a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1094
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
