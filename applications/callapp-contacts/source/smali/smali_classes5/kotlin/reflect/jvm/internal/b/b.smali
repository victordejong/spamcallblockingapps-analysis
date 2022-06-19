.class public final Lkotlin/reflect/jvm/internal/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/b<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/d<",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "Lkotlin/reflect/jvm/internal/b/e<",
            "TK;TV;>;>;>;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lkotlin/reflect/jvm/internal/b/b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/b/d;->a()Lkotlin/reflect/jvm/internal/b/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/b/b;-><init>(Lkotlin/reflect/jvm/internal/b/d;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/b/b;->a:Lkotlin/reflect/jvm/internal/b/b;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/b/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/b/d<",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "Lkotlin/reflect/jvm/internal/b/e<",
            "TK;TV;>;>;>;I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/b/b;->b:Lkotlin/reflect/jvm/internal/b/d;

    .line 39
    iput p2, p0, Lkotlin/reflect/jvm/internal/b/b;->c:I

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/b/a;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "Lkotlin/reflect/jvm/internal/b/e<",
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3067
    iget v1, p0, Lkotlin/reflect/jvm/internal/b/a;->c:I

    if-lez v1, :cond_1

    .line 93
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/b/a;->a:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/b/e;

    .line 94
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/b/e;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 96
    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/b/a;->b:Lkotlin/reflect/jvm/internal/b/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/b/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lkotlin/reflect/jvm/internal/b/b;->a:Lkotlin/reflect/jvm/internal/b/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "kotlin/reflect/jvm/internal/pcollections/HashPMap"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "empty"

    aput-object v2, v0, v1

    const-string v1, "@NotNull method %s.%s must not return null"

    .line 1000
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(I)Lkotlin/reflect/jvm/internal/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "Lkotlin/reflect/jvm/internal/b/e<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/b;->b:Lkotlin/reflect/jvm/internal/b/d;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/b/d;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/b/a;

    if-nez p1, :cond_0

    .line 86
    invoke-static {}, Lkotlin/reflect/jvm/internal/b/a;->a()Lkotlin/reflect/jvm/internal/b/a;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/b/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lkotlin/reflect/jvm/internal/b/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/b/b;->a(I)Lkotlin/reflect/jvm/internal/b/a;

    move-result-object v0

    .line 1067
    iget v1, v0, Lkotlin/reflect/jvm/internal/b/a;->c:I

    .line 65
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/b/b;->a(Lkotlin/reflect/jvm/internal/b/a;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/b/a;->a(I)Lkotlin/reflect/jvm/internal/b/a;

    move-result-object v0

    .line 67
    :cond_0
    new-instance v2, Lkotlin/reflect/jvm/internal/b/e;

    invoke-direct {v2, p1, p2}, Lkotlin/reflect/jvm/internal/b/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/b/a;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/b/a;

    move-result-object p2

    .line 68
    new-instance v0, Lkotlin/reflect/jvm/internal/b/b;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/b/b;->b:Lkotlin/reflect/jvm/internal/b/d;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1, p2}, Lkotlin/reflect/jvm/internal/b/d;->a(ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/b/d;

    move-result-object p1

    iget v2, p0, Lkotlin/reflect/jvm/internal/b/b;->c:I

    sub-int/2addr v2, v1

    .line 2067
    iget p2, p2, Lkotlin/reflect/jvm/internal/b/a;->c:I

    add-int/2addr v2, p2

    .line 68
    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/b/b;-><init>(Lkotlin/reflect/jvm/internal/b/d;I)V

    return-object v0
.end method
