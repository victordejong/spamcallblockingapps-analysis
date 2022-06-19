.class final synthetic Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d;
.super Lkotlin/jvm/internal/m;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Lkotlin/reflect/jvm/internal/impl/b/a$p;I)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/c/a;",
        "Lkotlin/reflect/jvm/internal/impl/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getOuterClassId"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    .line 124
    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;"

    return-object v0
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 124
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/a;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->d()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    return-object p1
.end method
