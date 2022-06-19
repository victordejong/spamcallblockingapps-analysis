.class Lcom/callerid/block/fragment/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/a;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->K1(Lcom/callerid/block/fragment/a;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->L1(Lcom/callerid/block/fragment/a;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/fragment/a$a$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$a$a;-><init>(Lcom/callerid/block/fragment/a$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/fragment/a$a$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/a$a$b;-><init>(Lcom/callerid/block/fragment/a$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    new-instance v1, Lcom/callerid/block/fragment/a$k;

    iget-object v2, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/callerid/block/fragment/a$k;-><init>(Lcom/callerid/block/fragment/a;Lcom/callerid/block/fragment/a$a;)V

    invoke-static {v0, v1}, Lcom/callerid/block/fragment/a;->P1(Lcom/callerid/block/fragment/a;Lcom/callerid/block/fragment/a$k;)Lcom/callerid/block/fragment/a$k;

    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->Q1(Lcom/callerid/block/fragment/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v1}, Lcom/callerid/block/fragment/a;->O1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/fragment/a$k;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.callerid.block.STARRED_DATA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->I1(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/main/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/boom/c;->g(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->S1(Lcom/callerid/block/fragment/a;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/a$a;->b:Lcom/callerid/block/fragment/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/fragment/a;->T1(Lcom/callerid/block/fragment/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
