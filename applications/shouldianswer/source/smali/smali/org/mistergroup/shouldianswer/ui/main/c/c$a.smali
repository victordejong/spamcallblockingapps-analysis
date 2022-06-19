.class public final Lorg/mistergroup/shouldianswer/ui/main/c/c$a;
.super Ljava/lang/Object;
.source "LogItemNumber.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/main/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lorg/mistergroup/shouldianswer/model/ag;

.field private f:Lorg/mistergroup/shouldianswer/model/h;

.field private g:Ljava/lang/Boolean;

.field private h:J

.field private i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->c:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->d:Ljava/lang/String;

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->a:Lorg/mistergroup/shouldianswer/model/ag;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->e:Lorg/mistergroup/shouldianswer/model/ag;

    .line 24
    sget-object v0, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f:Lorg/mistergroup/shouldianswer/model/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->h:J

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->i:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ag;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->e:Lorg/mistergroup/shouldianswer/model/ag;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/h;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f:Lorg/mistergroup/shouldianswer/model/h;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final e()Lorg/mistergroup/shouldianswer/model/ag;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->e:Lorg/mistergroup/shouldianswer/model/ag;

    return-object v0
.end method

.method public final f()Lorg/mistergroup/shouldianswer/model/h;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->f:Lorg/mistergroup/shouldianswer/model/h;

    return-object v0
.end method

.method public final g()Ljava/lang/Boolean;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->h:J

    return-wide v0
.end method

.method public final i()Landroid/graphics/Bitmap;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/c$a;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method
