.class public Lu1/d;
.super Lu1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/c<",
        "Lt1/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;La2/a;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lv1/g;->a(Landroid/content/Context;La2/a;)Lv1/g;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lv1/g;->c:Ljava/lang/Object;

    check-cast p1, Lv1/e;

    .line 3
    invoke-direct {p0, p1}, Lu1/c;-><init>(Lv1/d;)V

    return-void
.end method


# virtual methods
.method public b(Lx1/p;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lx1/p;->j:Lo1/b;

    .line 2
    iget-object p1, p1, Lo1/b;->a:Lo1/i;

    .line 3
    sget-object v0, Lo1/i;->b:Lo1/i;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lt1/b;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 3
    iget-boolean v0, p1, Lt1/b;->a:Z

    if-eqz v0, :cond_2

    .line 4
    iget-boolean p1, p1, Lt1/b;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p1, Lt1/b;->a:Z

    xor-int/2addr v1, p1

    :cond_2
    :goto_0
    return v1
.end method
