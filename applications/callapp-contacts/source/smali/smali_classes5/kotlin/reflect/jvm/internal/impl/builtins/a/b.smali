.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/b;
.super Lkotlin/reflect/jvm/internal/impl/builtins/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/a/b$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/a/b$a;

.field private static final f:Lkotlin/reflect/jvm/internal/impl/builtins/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/b$a;

    .line 340
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;-><init>()V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/g;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;->f:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 332
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/f/f;

    const-string v1, "FallbackBuiltIns"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/f;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/f/n;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;)V

    const/4 v0, 0x1

    .line 334
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;->a(Z)V

    return-void
.end method

.method public static final synthetic a()Lkotlin/reflect/jvm/internal/impl/builtins/g;
    .locals 1

    .line 332
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;->f:Lkotlin/reflect/jvm/internal/impl/builtins/g;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic c()Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;
    .locals 1

    .line 1343
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/c$a;

    .line 332
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

    return-object v0
.end method
