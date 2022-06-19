.class public abstract Lkotlin/jvm/internal/t;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkotlin/jvm/internal/s;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/s;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lkotlin/reflect/KCallable;
    .locals 1

    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/t;)Lkotlin/reflect/f;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lkotlin/jvm/internal/t;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/f;

    invoke-interface {v0}, Lkotlin/reflect/f;->getDelegate()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$a;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lkotlin/jvm/internal/t;->getGetter()Lkotlin/reflect/l$a;

    move-result-object v0

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/l$a;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lkotlin/jvm/internal/t;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/f;

    invoke-interface {v0}, Lkotlin/reflect/f;->getGetter()Lkotlin/reflect/l$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSetter()Lkotlin/reflect/e$a;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lkotlin/jvm/internal/t;->getSetter()Lkotlin/reflect/f$a;

    move-result-object v0

    return-object v0
.end method

.method public getSetter()Lkotlin/reflect/f$a;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lkotlin/jvm/internal/t;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/f;

    invoke-interface {v0}, Lkotlin/reflect/f;->getSetter()Lkotlin/reflect/f$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lkotlin/jvm/internal/t;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
