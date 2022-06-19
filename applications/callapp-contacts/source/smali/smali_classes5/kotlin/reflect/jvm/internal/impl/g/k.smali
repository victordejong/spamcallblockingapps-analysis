.class public abstract Lkotlin/reflect/jvm/internal/impl/g/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/g/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/g/k$a;,
        Lkotlin/reflect/jvm/internal/impl/g/k$b;,
        Lkotlin/reflect/jvm/internal/impl/g/k$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/g;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/builtins/g;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/g/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/g/k;->b:Lkotlin/jvm/functions/Function1;

    const-string p2, "must return "

    .line 109
    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/g/k;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/g/k;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/g/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/g/k;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Ljava/lang/String;
    .locals 0

    .line 108
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/g/b$a;->a(Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
