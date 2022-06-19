.class public Lu1/h;
.super Lu1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/c<",
        "Ljava/lang/Boolean;",
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
    iget-object p1, p1, Lv1/g;->d:Ljava/lang/Object;

    check-cast p1, Lv1/f;

    .line 3
    invoke-direct {p0, p1}, Lu1/c;-><init>(Lv1/d;)V

    return-void
.end method


# virtual methods
.method public b(Lx1/p;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lx1/p;->j:Lo1/b;

    .line 2
    iget-boolean p1, p1, Lo1/b;->e:Z

    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
