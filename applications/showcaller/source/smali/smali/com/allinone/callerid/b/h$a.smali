.class Lcom/allinone/callerid/b/h$a;
.super Ljava/lang/Object;
.source "ContactFavAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/search/CallLogBean;

.field final synthetic e:Lcom/allinone/callerid/b/h;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/h;Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/h$a;->e:Lcom/allinone/callerid/b/h;

    iput-object p2, p0, Lcom/allinone/callerid/b/h$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/h$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/b/h$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/h$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->E()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/b/h$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result p1

    new-instance v0, Lcom/allinone/callerid/b/h$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/b/h$a$a;-><init>(Lcom/allinone/callerid/b/h$a;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/k/a;->b(ILcom/allinone/callerid/i/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/b/h$a;->d:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result p1

    new-instance v0, Lcom/allinone/callerid/b/h$a$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/b/h$a$b;-><init>(Lcom/allinone/callerid/b/h$a;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/k/a;->a(ILcom/allinone/callerid/i/a/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
