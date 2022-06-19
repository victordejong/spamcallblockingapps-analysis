.class Lcom/allinone/callerid/g/e$o;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->m3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$o;->a:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e$o;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1, p2}, Lcom/allinone/callerid/g/e;->o2(Lcom/allinone/callerid/g/e;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/e$o;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->n2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/g/e$o;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->n2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/e$o;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->p2(Lcom/allinone/callerid/g/e;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e$o;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->r2(Lcom/allinone/callerid/g/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
