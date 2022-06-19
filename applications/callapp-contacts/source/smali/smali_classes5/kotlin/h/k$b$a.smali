.class final Lkotlin/h/k$b$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/h/k$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/h/g;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/text/MatchGroup;",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/h/k$b;


# direct methods
.method constructor <init>(Lkotlin/h/k$b;)V
    .locals 0

    iput-object p1, p0, Lkotlin/h/k$b$a;->a:Lkotlin/h/k$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 280
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1284
    iget-object v0, p0, Lkotlin/h/k$b$a;->a:Lkotlin/h/k$b;

    .line 1286
    iget-object v1, v0, Lkotlin/h/k$b;->a:Lkotlin/h/k;

    .line 2274
    iget-object v1, v1, Lkotlin/h/k;->a:Ljava/util/regex/Matcher;

    check-cast v1, Ljava/util/regex/MatchResult;

    .line 3319
    invoke-interface {v1, p1}, Ljava/util/regex/MatchResult;->start(I)I

    move-result v2

    invoke-interface {v1, p1}, Ljava/util/regex/MatchResult;->end(I)I

    move-result v1

    invoke-static {v2, v1}, Lkotlin/f/d;->b(II)Lkotlin/f/c;

    move-result-object v1

    .line 4087
    iget v2, v1, Lkotlin/f/a;->a:I

    if-ltz v2, :cond_0

    .line 1288
    new-instance v2, Lkotlin/h/g;

    iget-object v0, v0, Lkotlin/h/k$b;->a:Lkotlin/h/k;

    .line 4274
    iget-object v0, v0, Lkotlin/h/k;->a:Ljava/util/regex/Matcher;

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 1288
    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "matchResult.group(index)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v1}, Lkotlin/h/g;-><init>(Ljava/lang/String;Lkotlin/f/c;)V

    return-object v2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
