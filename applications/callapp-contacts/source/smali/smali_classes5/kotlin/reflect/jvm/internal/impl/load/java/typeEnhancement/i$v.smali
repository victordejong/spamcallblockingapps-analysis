.class final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$v;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a$a;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$v;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$v;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 132
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a$a;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$v;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->d()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a$a;->a(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;)V

    .line 1134
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$v;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->b()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->d()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a$a;->b(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;)V

    .line 132
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
