.class public final Lorg/mistergroup/shouldianswer/ui/search/e;
.super Ljava/lang/Object;
.source "SearchItems.kt"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/e;->a:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/e;->a:Ljava/util/List;

    return-object v0
.end method
