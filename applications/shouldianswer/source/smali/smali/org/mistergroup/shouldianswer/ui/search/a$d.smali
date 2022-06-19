.class final Lorg/mistergroup/shouldianswer/ui/search/a$d;
.super Lkotlin/c/b/a/d;
.source "SearchAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/e;Lkotlin/c/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "SearchAdapter.kt"
    c = {
        0x15d,
        0x170
    }
    d = "setFinalData"
    e = "org.mistergroup.shouldianswer.ui.search.SearchAdapter"
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lorg/mistergroup/shouldianswer/ui/search/a;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Ljava/lang/Object;

.field n:I


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/a;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$d;->c:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {p0, p2}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$d;->a:Ljava/lang/Object;

    iget p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$d;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$d;->b:I

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$d;->c:Lorg/mistergroup/shouldianswer/ui/search/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Lorg/mistergroup/shouldianswer/ui/search/e;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
