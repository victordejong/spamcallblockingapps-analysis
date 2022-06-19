.class public final Lorg/mistergroup/shouldianswer/model/communityDatabase/d;
.super Ljava/lang/Object;
.source "CommunityReview.kt"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lorg/mistergroup/shouldianswer/model/ag;

.field private d:Lorg/mistergroup/shouldianswer/model/m;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->b:Ljava/lang/String;

    .line 14
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->c:Lorg/mistergroup/shouldianswer/model/ag;

    .line 15
    sget-object v1, Lorg/mistergroup/shouldianswer/model/m;->a:Lorg/mistergroup/shouldianswer/model/m;

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->d:Lorg/mistergroup/shouldianswer/model/m;

    .line 16
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->e:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->f:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->g:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->c:Lorg/mistergroup/shouldianswer/model/ag;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 12
    iput p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ag;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->c:Lorg/mistergroup/shouldianswer/model/ag;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/m;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->d:Lorg/mistergroup/shouldianswer/model/m;

    return-void
.end method

.method public final b()Lorg/mistergroup/shouldianswer/model/m;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->d:Lorg/mistergroup/shouldianswer/model/m;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->f:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->g:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/Date;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->i:Ljava/util/Date;

    return-object v0
.end method
