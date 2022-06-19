.class final Lkotlin/io/c$b;
.super Lkotlin/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/c$b$a;,
        Lkotlin/io/c$b$c;,
        Lkotlin/io/c$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/a/b<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;",
        "Lkotlin/collections/AbstractIterator;",
        "Ljava/io/File;",
        "(Lkotlin/io/FileTreeWalk;)V",
        "state",
        "Ljava/util/ArrayDeque;",
        "Lkotlin/io/FileTreeWalk$WalkState;",
        "computeNext",
        "",
        "directoryState",
        "Lkotlin/io/FileTreeWalk$DirectoryState;",
        "root",
        "gotoNext",
        "BottomUpDirectoryState",
        "SingleFileState",
        "TopDownDirectoryState",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/io/c;

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lkotlin/io/c$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/io/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lkotlin/io/c$b;->a:Lkotlin/io/c;

    invoke-direct {p0}, Lkotlin/a/b;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlin/io/c$b;->b:Ljava/util/ArrayDeque;

    .line 73
    invoke-static {p1}, Lkotlin/io/c;->f(Lkotlin/io/c;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lkotlin/io/c;->f(Lkotlin/io/c;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/io/c$b;->a(Ljava/io/File;)Lkotlin/io/c$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_0
    invoke-static {p1}, Lkotlin/io/c;->f(Lkotlin/io/c;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lkotlin/io/c$b$b;

    invoke-static {p1}, Lkotlin/io/c;->f(Lkotlin/io/c;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lkotlin/io/c$b$b;-><init>(Lkotlin/io/c$b;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lkotlin/io/c$b;->b()V

    return-void
.end method

.method private final a(Ljava/io/File;)Lkotlin/io/c$a;
    .locals 2

    .line 89
    iget-object v0, p0, Lkotlin/io/c$b;->a:Lkotlin/io/c;

    invoke-static {v0}, Lkotlin/io/c;->d(Lkotlin/io/c;)Lkotlin/io/e;

    move-result-object v0

    sget-object v1, Lkotlin/io/d;->a:[I

    invoke-virtual {v0}, Lkotlin/io/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 91
    new-instance v0, Lkotlin/io/c$b$a;

    invoke-direct {v0, p0, p1}, Lkotlin/io/c$b$a;-><init>(Lkotlin/io/c$b;Ljava/io/File;)V

    check-cast v0, Lkotlin/io/c$a;

    return-object v0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 90
    :cond_1
    new-instance v0, Lkotlin/io/c$b$c;

    invoke-direct {v0, p0, p1}, Lkotlin/io/c$b$c;-><init>(Lkotlin/io/c$b;Ljava/io/File;)V

    check-cast v0, Lkotlin/io/c$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1097
    :goto_0
    iget-object v0, p0, Lkotlin/io/c$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/io/c$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 1098
    :cond_0
    invoke-virtual {v0}, Lkotlin/io/c$c;->a()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1101
    iget-object v0, p0, Lkotlin/io/c$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 2053
    :cond_1
    iget-object v0, v0, Lkotlin/io/c$c;->b:Ljava/io/File;

    .line 1105
    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlin/io/c$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v2, p0, Lkotlin/io/c$b;->a:Lkotlin/io/c;

    invoke-static {v2}, Lkotlin/io/c;->e(Lkotlin/io/c;)I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_1

    .line 1110
    :cond_2
    iget-object v0, p0, Lkotlin/io/c$b;->b:Ljava/util/ArrayDeque;

    invoke-direct {p0, v1}, Lkotlin/io/c$b;->a(Ljava/io/File;)Lkotlin/io/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {p0, v0}, Lkotlin/io/c$b;->a(Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_4
    invoke-virtual {p0}, Lkotlin/io/c$b;->b()V

    return-void
.end method
