.class public final Lkotlin/reflect/jvm/internal/impl/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/e/c$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/c$a;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/e/f;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/e/c;"
        }
    .end annotation

    const-string v0, "changeOptions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;-><init>()V

    .line 100
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->e()V

    .line 102
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;-><init>(Lkotlin/reflect/jvm/internal/impl/e/g;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/e/c;

    return-object p0
.end method
