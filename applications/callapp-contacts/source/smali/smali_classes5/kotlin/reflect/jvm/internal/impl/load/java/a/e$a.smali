.class final Lkotlin/reflect/jvm/internal/impl/load/java/a/e$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/a/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/a;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/e$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/e$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/e$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/e$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1120
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/c;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/a/c;->a()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    const-string v2, "Deprecated in Java"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/ai;->a(Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
