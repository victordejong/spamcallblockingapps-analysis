.class Lcom/allinone/callerid/g/c$f;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/r/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c;->T2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$f;->a:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c$f;->a:Lcom/allinone/callerid/g/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/c;->B2(Lcom/allinone/callerid/g/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/c$f;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->z2(Lcom/allinone/callerid/g/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/c$f;->a:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->D2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/g/c$l;

    move-result-object p1

    const/16 v0, 0x309

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/c$f;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->a2(Lcom/allinone/callerid/g/c;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/c$f;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->m2(Lcom/allinone/callerid/g/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
