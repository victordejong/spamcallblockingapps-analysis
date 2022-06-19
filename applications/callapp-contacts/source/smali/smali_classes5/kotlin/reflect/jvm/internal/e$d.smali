.class public final Lkotlin/reflect/jvm/internal/e$d;
.super Lkotlin/reflect/jvm/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;",
        "Lkotlin/reflect/jvm/internal/JvmPropertySignature;",
        "getterSignature",
        "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;",
        "setterSignature",
        "(Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;)V",
        "getGetterSignature",
        "()Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;",
        "getSetterSignature",
        "asString",
        "",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/d$e;

.field final b:Lkotlin/reflect/jvm/internal/d$e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/d$e;Lkotlin/reflect/jvm/internal/d$e;)V
    .locals 1

    const-string v0, "getterSignature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/e$d;->a:Lkotlin/reflect/jvm/internal/d$e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/e$d;->b:Lkotlin/reflect/jvm/internal/d$e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/e$d;->a:Lkotlin/reflect/jvm/internal/d$e;

    .line 1064
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/d$e;->a:Ljava/lang/String;

    return-object v0
.end method
