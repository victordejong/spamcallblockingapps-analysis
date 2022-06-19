.class final Lkotlin/reflect/jvm/internal/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/b/a<",
            "TE;>;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/b/a$a;->a:Lkotlin/reflect/jvm/internal/b/a;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/a$a;->a:Lkotlin/reflect/jvm/internal/b/a;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/b/a;->a(Lkotlin/reflect/jvm/internal/b/a;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/b/a$a;->a:Lkotlin/reflect/jvm/internal/b/a;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/b/a;->a:Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/b/a$a;->a:Lkotlin/reflect/jvm/internal/b/a;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/b/a;->b:Lkotlin/reflect/jvm/internal/b/a;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/b/a$a;->a:Lkotlin/reflect/jvm/internal/b/a;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
