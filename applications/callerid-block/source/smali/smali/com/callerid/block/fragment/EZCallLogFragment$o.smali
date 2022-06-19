.class Lcom/callerid/block/fragment/EZCallLogFragment$o;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/fragment/EZCallLogFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$o;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/fragment/EZCallLogFragment;

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3a99

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3a9a

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->U1(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
