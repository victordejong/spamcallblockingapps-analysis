.class final Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 1076
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
