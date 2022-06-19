.class public final Lkotlin/reflect/jvm/internal/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final d:Lkotlin/reflect/jvm/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final b:Lkotlin/reflect/jvm/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lkotlin/reflect/jvm/internal/b/a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/b/a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/b/a;->d:Lkotlin/reflect/jvm/internal/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lkotlin/reflect/jvm/internal/b/a;->c:I

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/b/a;->a:Ljava/lang/Object;

    .line 42
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/b/a;->b:Lkotlin/reflect/jvm/internal/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/b/a;->a:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/b/a;->b:Lkotlin/reflect/jvm/internal/b/a;

    .line 48
    iget p1, p2, Lkotlin/reflect/jvm/internal/b/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/b/a;->c:I

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/b/a;)I
    .locals 0

    .line 27
    iget p0, p0, Lkotlin/reflect/jvm/internal/b/a;->c:I

    return p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;"
        }
    .end annotation

    .line 32
    sget-object v0, Lkotlin/reflect/jvm/internal/b/a;->d:Lkotlin/reflect/jvm/internal/b/a;

    return-object v0
.end method

.method private b(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 52
    iget v0, p0, Lkotlin/reflect/jvm/internal/b/a;->c:I

    if-gt p1, v0, :cond_0

    .line 55
    :try_start_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/b/a;->c(I)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 57
    :catch_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Index: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method private b(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;"
        }
    .end annotation

    .line 104
    iget v0, p0, Lkotlin/reflect/jvm/internal/b/a;->c:I

    if-nez v0, :cond_0

    return-object p0

    .line 105
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/b/a;->b:Lkotlin/reflect/jvm/internal/b/a;

    return-object p1

    .line 108
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/a;->b:Lkotlin/reflect/jvm/internal/b/a;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/b/a;->b(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/b/a;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/a;->b:Lkotlin/reflect/jvm/internal/b/a;

    if-ne p1, v0, :cond_2

    return-object p0

    .line 110
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/b/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/b/a;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/b/a;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/b/a;)V

    return-object v0
.end method

.method private c(I)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Lkotlin/reflect/jvm/internal/b/a$a;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/b/a;->d(I)Lkotlin/reflect/jvm/internal/b/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/b/a$a;-><init>(Lkotlin/reflect/jvm/internal/b/a;)V

    return-object v0
.end method

.method private d(I)Lkotlin/reflect/jvm/internal/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-ltz p1, :cond_1

    .line 118
    iget v1, v0, Lkotlin/reflect/jvm/internal/b/a;->c:I

    if-gt p1, v1, :cond_1

    if-nez p1, :cond_0

    return-object v0

    .line 122
    :cond_0
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/b/a;->b:Lkotlin/reflect/jvm/internal/b/a;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a(I)Lkotlin/reflect/jvm/internal/b/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/b/a;->b(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/b/a;->b(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/b/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lkotlin/reflect/jvm/internal/b/a;

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/b/a;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/b/a;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/b/a;->c(I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
