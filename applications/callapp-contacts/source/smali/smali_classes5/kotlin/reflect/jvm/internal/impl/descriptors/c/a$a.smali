.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "package"

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Ljava/lang/Integer;
    .locals 1

    const-string/jumbo v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/be;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, -0x1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "public/*package*/"

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
    .locals 1

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$g;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-object v0
.end method
