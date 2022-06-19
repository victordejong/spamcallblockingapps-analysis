.class Lcom/callerid/block/fragment/EZCallLogFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/d/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;->D2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZCallLogFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

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
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1, p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->Q1(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->P1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->P1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->R1(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->S1(Lcom/callerid/block/fragment/EZCallLogFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/m0;->d(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$a;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->T1(Lcom/callerid/block/fragment/EZCallLogFragment;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
