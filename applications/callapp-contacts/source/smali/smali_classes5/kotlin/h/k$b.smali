.class public final Lkotlin/h/k$b;
.super Lkotlin/a/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/h/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/h/k;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/a/a<",
        "Lkotlin/h/g;",
        ">;",
        "Lkotlin/h/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0096\u0002J\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0011\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0096\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "kotlin/text/MatcherMatchResult$groups$1",
        "Lkotlin/text/MatchNamedGroupCollection;",
        "Lkotlin/collections/AbstractCollection;",
        "Lkotlin/text/MatchGroup;",
        "size",
        "",
        "getSize",
        "()I",
        "get",
        "index",
        "name",
        "",
        "isEmpty",
        "",
        "iterator",
        "",
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
.field final synthetic a:Lkotlin/h/k;


# direct methods
.method constructor <init>(Lkotlin/h/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lkotlin/h/k$b;->a:Lkotlin/h/k;

    invoke-direct {p0}, Lkotlin/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 281
    iget-object v0, p0, Lkotlin/h/k$b;->a:Lkotlin/h/k;

    .line 1274
    iget-object v0, v0, Lkotlin/h/k;->a:Ljava/util/regex/Matcher;

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 281
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 280
    instance-of v0, p1, Lkotlin/h/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lkotlin/h/g;

    .line 1280
    invoke-super {p0, p1}, Lkotlin/a/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/h/g;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-static {p0}, Lkotlin/a/n;->a(Ljava/util/Collection;)Lkotlin/f/c;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->p(Ljava/lang/Iterable;)Lkotlin/g/h;

    move-result-object v0

    new-instance v1, Lkotlin/h/k$b$a;

    invoke-direct {v1, p0}, Lkotlin/h/k$b$a;-><init>(Lkotlin/h/k$b;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/g/k;->d(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/g/h;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
