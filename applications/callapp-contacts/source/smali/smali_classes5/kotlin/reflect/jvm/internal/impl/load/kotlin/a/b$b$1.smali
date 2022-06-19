.class final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b$1;
.super Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b$1;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a([Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b$1;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;[Ljava/lang/String;)[Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "result"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "visitEnd"

    aput-object v1, p1, v0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 1000
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
