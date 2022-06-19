.class Lcom/allinone/callerid/g/c$d;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->n2(Lcom/allinone/callerid/g/c;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->o2(Lcom/allinone/callerid/g/c;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->K2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/NestedScrollingListView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/c$d$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/c$d$a;-><init>(Lcom/allinone/callerid/g/c$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->K2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/NestedScrollingListView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/c$d$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/c$d$b;-><init>(Lcom/allinone/callerid/g/c$d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    new-instance v1, Lcom/allinone/callerid/g/c$m;

    iget-object v2, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/allinone/callerid/g/c$m;-><init>(Lcom/allinone/callerid/g/c;Lcom/allinone/callerid/g/c$c;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/c;->v2(Lcom/allinone/callerid/g/c;Lcom/allinone/callerid/g/c$m;)Lcom/allinone/callerid/g/c$m;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->w2(Lcom/allinone/callerid/g/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v1}, Lcom/allinone/callerid/g/c;->u2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/g/c$m;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.allinone.callerid.STARRED_DATA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->f2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->G0(Landroid/app/Activity;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->x2(Lcom/allinone/callerid/g/c;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/g/c$d;->d:Lcom/allinone/callerid/g/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/c;->y2(Lcom/allinone/callerid/g/c;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
