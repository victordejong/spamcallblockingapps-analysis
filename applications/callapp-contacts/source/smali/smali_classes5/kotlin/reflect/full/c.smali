.class final synthetic Lkotlin/reflect/full/c;
.super Lkotlin/jvm/internal/z;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/full/c;

    invoke-direct {v0}, Lkotlin/reflect/full/c;-><init>()V

    sput-object v0, Lkotlin/reflect/full/c;->a:Lkotlin/reflect/m;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/jvm/internal/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/reflect/c;

    .line 234
    invoke-static {p1}, Lkotlin/reflect/full/b;->c(Lkotlin/reflect/c;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "superclasses"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 2

    const-class v0, Lkotlin/reflect/full/b;

    const-string v1, "kotlin-reflection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/ac;->a(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KDeclarationContainer;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;"

    return-object v0
.end method
