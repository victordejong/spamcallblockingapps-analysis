.class final Lorg/mistergroup/shouldianswer/ui/search/a$b;
.super Ljava/lang/Object;
.source "SearchAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/search/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/ui/search/a;

.field private b:Ljava/lang/String;

.field private c:Lorg/mistergroup/shouldianswer/ui/search/d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Date;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/util/Date;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "ZI)V"
        }
    .end annotation

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->a:Lorg/mistergroup/shouldianswer/ui/search/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->e:Ljava/util/Date;

    iput-boolean p3, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->f:Z

    iput p4, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->g:I

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->d:Ljava/util/List;

    .line 63
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/search/a;->f()Ljava/text/SimpleDateFormat;

    move-result-object p1

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->e:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SearchAdapter.compareDateFormat.format(date)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->b:Ljava/lang/String;

    .line 64
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/search/d;

    sget-object p2, Lorg/mistergroup/shouldianswer/ui/search/d$a;->e:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    invoke-direct {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/d$a;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c:Lorg/mistergroup/shouldianswer/ui/search/d;

    .line 65
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c:Lorg/mistergroup/shouldianswer/ui/search/d;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->e:Ljava/util/Date;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Ljava/util/Date;)V

    .line 66
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c:Lorg/mistergroup/shouldianswer/ui/search/d;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lorg/mistergroup/shouldianswer/ui/search/d;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c:Lorg/mistergroup/shouldianswer/ui/search/d;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a$b;->f:Z

    return v0
.end method
