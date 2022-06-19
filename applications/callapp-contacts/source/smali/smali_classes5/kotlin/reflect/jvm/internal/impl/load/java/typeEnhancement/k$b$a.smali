.class final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;


# direct methods
.method constructor <init>([Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$a;->a:[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 497
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1497
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b$a;->a:[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    if-ltz p1, :cond_0

    invoke-static {v0}, Lkotlin/a/i;->h([Ljava/lang/Object;)I

    move-result v1

    if-gt p1, v1, :cond_0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e$a;

    .line 2026
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->a()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object p1

    return-object p1
.end method
