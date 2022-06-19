.class final Lkotlin/reflect/jvm/internal/p$a;
.super Lkotlin/reflect/jvm/internal/k$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003R\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R%\u0010\n\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000c0\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\r\u0010\u000eR/\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00118FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R!\u0010\u0019\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001a8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\t\u001a\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/KPackageImpl$Data;",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "(Lkotlin/reflect/jvm/internal/KPackageImpl;)V",
        "kotlinClass",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;",
        "getKotlinClass",
        "()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;",
        "kotlinClass$delegate",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;",
        "members",
        "",
        "Lkotlin/reflect/jvm/internal/KCallableImpl;",
        "getMembers",
        "()Ljava/util/Collection;",
        "members$delegate",
        "metadata",
        "Lkotlin/Triple;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;",
        "getMetadata",
        "()Lkotlin/Triple;",
        "metadata$delegate",
        "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;",
        "multifileFacade",
        "Ljava/lang/Class;",
        "getMultifileFacade",
        "()Ljava/lang/Class;",
        "multifileFacade$delegate",
        "scope",
        "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
        "getScope",
        "()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;",
        "scope$delegate",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final b:Lkotlin/reflect/jvm/internal/ad$b;

.field final c:Lkotlin/reflect/jvm/internal/ad$b;

.field final synthetic d:Lkotlin/reflect/jvm/internal/p;

.field private final e:Lkotlin/reflect/jvm/internal/ad$a;

.field private final f:Lkotlin/reflect/jvm/internal/ad$a;

.field private final g:Lkotlin/reflect/jvm/internal/ad$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/p$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    const-string v4, "kotlinClass"

    const-string v5, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    const-string v4, "scope"

    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    const-string v4, "multifileFacade"

    const-string v5, "getMultifileFacade()Ljava/lang/Class;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    const-string v4, "metadata"

    const-string v5, "getMetadata()Lkotlin/Triple;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    const-string v3, "members"

    const-string v4, "getMembers()Ljava/util/Collection;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/p$a;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a;->d:Lkotlin/reflect/jvm/internal/p;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/k$b;-><init>(Lkotlin/reflect/jvm/internal/k;)V

    .line 43
    new-instance p1, Lkotlin/reflect/jvm/internal/p$a$a;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/p$a$a;-><init>(Lkotlin/reflect/jvm/internal/p$a;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a;->e:Lkotlin/reflect/jvm/internal/ad$a;

    .line 47
    new-instance p1, Lkotlin/reflect/jvm/internal/p$a$e;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/p$a$e;-><init>(Lkotlin/reflect/jvm/internal/p$a;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a;->f:Lkotlin/reflect/jvm/internal/ad$a;

    .line 55
    new-instance p1, Lkotlin/reflect/jvm/internal/p$a$d;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/p$a$d;-><init>(Lkotlin/reflect/jvm/internal/p$a;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ad;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$b;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a;->b:Lkotlin/reflect/jvm/internal/ad$b;

    .line 64
    new-instance p1, Lkotlin/reflect/jvm/internal/p$a$c;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/p$a$c;-><init>(Lkotlin/reflect/jvm/internal/p$a;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ad;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$b;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a;->c:Lkotlin/reflect/jvm/internal/ad$b;

    .line 75
    new-instance p1, Lkotlin/reflect/jvm/internal/p$a$b;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/p$a$b;-><init>(Lkotlin/reflect/jvm/internal/p$a;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ad;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/ad$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a;->g:Lkotlin/reflect/jvm/internal/ad$a;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/p$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;
    .locals 0

    .line 2000
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/p$a;->e:Lkotlin/reflect/jvm/internal/ad$a;

    .line 2031
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    .line 2000
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    return-object p0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/p$a;->f:Lkotlin/reflect/jvm/internal/ad$a;

    .line 1031
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ad$c;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method
