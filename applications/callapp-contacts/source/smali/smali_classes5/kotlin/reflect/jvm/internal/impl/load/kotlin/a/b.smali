.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$a;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$c;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;
    }
.end annotation


# static fields
.field private static final j:Z

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[I

.field public b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlin.ignore.old.metadata"

    .line 40
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->j:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->k:Ljava/util/Map;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->SYNTHETIC_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a:[I

    .line 54
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    .line 55
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->d:I

    .line 57
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->e:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->f:[Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->g:[Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->h:[Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;I)I
    .locals 0

    .line 39
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->d:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;)Lkotlin/reflect/jvm/internal/impl/b/c/a/c;
    .locals 0

    .line 39
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Lkotlin/reflect/jvm/internal/impl/b/c/a/c;)Lkotlin/reflect/jvm/internal/impl/b/c/a/c;
    .locals 0

    .line 39
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/c;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;
    .locals 0

    .line 39
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;[I)[I
    .locals 0

    .line 39
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->a:[I

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->f:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->g:[Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .locals 1

    if-eqz p1, :cond_4

    .line 104
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p2

    .line 105
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/u;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 106
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$1;)V

    return-object p1

    .line 109
    :cond_0
    sget-boolean p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->j:Z

    if-eqz p2, :cond_1

    return-object v0

    .line 111
    :cond_1
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-eqz p2, :cond_2

    return-object v0

    .line 116
    :cond_2
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->k:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-eqz p1, :cond_3

    .line 118
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 119
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$c;

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/b$1;)V

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "classId"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-string v0, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "visitAnnotation"

    aput-object v0, p1, p2

    const-string p2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 1000
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()V
    .locals 0

    return-void
.end method
