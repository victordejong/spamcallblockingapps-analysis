.class public final Lorg/mistergroup/shouldianswer/ui/search/d;
.super Ljava/lang/Object;
.source "SearchItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/search/d$a;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/g/e;


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/components/a/a;

.field private c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

.field private d:Lorg/mistergroup/shouldianswer/model/ac;

.field private e:Landroid/text/Spanned;

.field private f:Landroid/text/Spanned;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/util/Date;

.field private final j:Lkotlin/e;

.field private final k:Lorg/mistergroup/shouldianswer/ui/search/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/g/e;

    new-instance v1, Lkotlin/e/b/l;

    const-class v2, Lorg/mistergroup/shouldianswer/ui/search/d;

    invoke-static {v2}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v2

    const-string v3, "formattedDate"

    const-string v4, "getFormattedDate()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v1

    check-cast v1, Lkotlin/g/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/search/d;->a:[Lkotlin/g/e;

    return-void
.end method

.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/d$a;)V
    .locals 1

    const-string v0, "itemType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->k:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    .line 26
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->i:Ljava/util/Date;

    .line 27
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/search/d$b;

    invoke-direct {p1, p0}, Lorg/mistergroup/shouldianswer/ui/search/d$b;-><init>(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    check-cast p1, Lkotlin/e/a/a;

    invoke-static {p1}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->j:Lkotlin/e;

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/components/a/a;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->b:Lorg/mistergroup/shouldianswer/components/a/a;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 25
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->h:I

    return-void
.end method

.method public final a(Landroid/text/Spanned;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->e:Landroid/text/Spanned;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->i:Ljava/util/Date;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/components/a/a;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->b:Lorg/mistergroup/shouldianswer/components/a/a;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ac;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->d:Lorg/mistergroup/shouldianswer/model/ac;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    return-void
.end method

.method public final b()Lorg/mistergroup/shouldianswer/ui/main/c/c;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->c:Lorg/mistergroup/shouldianswer/ui/main/c/c;

    return-object v0
.end method

.method public final b(Landroid/text/Spanned;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->f:Landroid/text/Spanned;

    return-void
.end method

.method public final c()Lorg/mistergroup/shouldianswer/model/ac;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->d:Lorg/mistergroup/shouldianswer/model/ac;

    return-object v0
.end method

.method public final d()Landroid/text/Spanned;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->e:Landroid/text/Spanned;

    return-object v0
.end method

.method public final e()Landroid/text/Spanned;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->f:Landroid/text/Spanned;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->h:I

    return v0
.end method

.method public final h()Ljava/util/Date;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->i:Ljava/util/Date;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->j:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/search/d;->a:[Lkotlin/g/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lorg/mistergroup/shouldianswer/ui/search/d$a;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/d;->k:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    return-object v0
.end method
