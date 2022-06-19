.class Lcom/callerid/block/b/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/search/CallLogBean;

.field final synthetic c:Lcom/callerid/block/b/d;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/d;Lcom/callerid/block/search/CallLogBean;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/d$a;->c:Lcom/callerid/block/b/d;

    iput-object p2, p0, Lcom/callerid/block/b/d$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/b/d$a;->c:Lcom/callerid/block/b/d;

    invoke-static {p1}, Lcom/callerid/block/b/d;->a(Lcom/callerid/block/b/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callerid/block/util/n0;->v()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/callerid/block/b/d$a;->c:Lcom/callerid/block/b/d;

    invoke-static {p1}, Lcom/callerid/block/b/d;->a(Lcom/callerid/block/b/d;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/b/d$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/o0;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/b/d$a;->c:Lcom/callerid/block/b/d;

    invoke-static {p1}, Lcom/callerid/block/b/d;->a(Lcom/callerid/block/b/d;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/b/d$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/callerid/block/util/i0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/b/d$a;->c:Lcom/callerid/block/b/d;

    invoke-static {v0}, Lcom/callerid/block/b/d;->a(Lcom/callerid/block/b/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/b/d$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/callerid/block/util/o0;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/b/d$a;->c:Lcom/callerid/block/b/d;

    invoke-static {p1}, Lcom/callerid/block/b/d;->a(Lcom/callerid/block/b/d;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/b/d$a;->b:Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
