.class public final Lkotlin/reflect/jvm/internal/impl/resolve/b/a$d;
.super Lkotlin/reflect/jvm/internal/impl/utils/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/utils/b$a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/ab$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/ab$e<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/ab$e;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/ab$e<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$d;->a:Lkotlin/jvm/internal/ab$e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$d;->b:Lkotlin/jvm/functions/Function1;

    .line 253
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/utils/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic afterChildren(Ljava/lang/Object;)V
    .locals 1

    .line 253
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$d;->a:Lkotlin/jvm/internal/ab$e;

    iget-object v0, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$d;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$d;->a:Lkotlin/jvm/internal/ab$e;

    iput-object p1, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic beforeChildren(Ljava/lang/Object;)Z
    .locals 1

    .line 253
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1254
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$d;->a:Lkotlin/jvm/internal/ab$e;

    iget-object p1, p1, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 1261
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/b/a$d;->a:Lkotlin/jvm/internal/ab$e;

    iget-object v0, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    return-object v0
.end method
