.class public Lu1/f;
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


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkNotRoamingCtrlr"

    .line 1
    invoke-static {v0}, Lo1/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu1/f;->e:Ljava/lang/String;

    return-void
.end method

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
    sget-object v0, Lo1/i;->d:Lo1/i;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lt1/b;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 3
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v2, Lu1/f;->e:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "Not-roaming network constraint is not supported before API 24, only checking for connected state."

    invoke-virtual {v0, v2, v4, v3}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-boolean p1, p1, Lt1/b;->a:Z

    xor-int/2addr p1, v1

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v0, p1, Lt1/b;->a:Z

    if-eqz v0, :cond_2

    .line 6
    iget-boolean p1, p1, Lt1/b;->d:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    return p1
.end method
