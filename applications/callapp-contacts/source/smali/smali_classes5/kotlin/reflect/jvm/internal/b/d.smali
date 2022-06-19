.class final Lkotlin/reflect/jvm/internal/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lkotlin/reflect/jvm/internal/b/d;

    sget-object v1, Lkotlin/reflect/jvm/internal/b/c;->a:Lkotlin/reflect/jvm/internal/b/c;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/b/d;-><init>(Lkotlin/reflect/jvm/internal/b/c;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/b/d;->a:Lkotlin/reflect/jvm/internal/b/d;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/b/d;->b:Lkotlin/reflect/jvm/internal/b/c;

    return-void
.end method

.method public static a()Lkotlin/reflect/jvm/internal/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/b/d<",
            "TV;>;"
        }
    .end annotation

    .line 27
    sget-object v0, Lkotlin/reflect/jvm/internal/b/d;->a:Lkotlin/reflect/jvm/internal/b/d;

    return-object v0
.end method

.method private a(Lkotlin/reflect/jvm/internal/b/c;)Lkotlin/reflect/jvm/internal/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/b/c<",
            "TV;>;)",
            "Lkotlin/reflect/jvm/internal/b/d<",
            "TV;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/d;->b:Lkotlin/reflect/jvm/internal/b/c;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/b/d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/b/d;-><init>(Lkotlin/reflect/jvm/internal/b/c;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/d;->b:Lkotlin/reflect/jvm/internal/b/c;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/b/c;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)",
            "Lkotlin/reflect/jvm/internal/b/d<",
            "TV;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/d;->b:Lkotlin/reflect/jvm/internal/b/c;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lkotlin/reflect/jvm/internal/b/c;->a(JLjava/lang/Object;)Lkotlin/reflect/jvm/internal/b/c;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/b/d;->a(Lkotlin/reflect/jvm/internal/b/c;)Lkotlin/reflect/jvm/internal/b/d;

    move-result-object p1

    return-object p1
.end method
