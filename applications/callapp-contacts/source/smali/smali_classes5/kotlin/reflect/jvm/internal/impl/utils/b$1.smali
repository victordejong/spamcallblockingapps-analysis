.class final Lkotlin/reflect/jvm/internal/impl/utils/b$1;
.super Lkotlin/reflect/jvm/internal/impl/utils/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/utils/b;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/utils/b$a<",
        "TN;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:[Z


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;[Z)V
    .locals 0

    .line 47
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/b$1;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/utils/b$1;->b:[Z

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/utils/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final beforeChildren(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/b$1;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/b$1;->b:[Z

    aput-boolean v0, p1, v1

    .line 54
    :cond_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/b$1;->b:[Z

    aget-boolean p1, p1, v1

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final synthetic result()Ljava/lang/Object;
    .locals 2

    .line 1059
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/b$1;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
