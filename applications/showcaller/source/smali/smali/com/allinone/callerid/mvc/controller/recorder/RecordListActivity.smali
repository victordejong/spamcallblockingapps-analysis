.class public Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "RecordListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;
    }
.end annotation


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/allinone/callerid/b/z/f;

.field private y:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "RecordListActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->u:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->v:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)Lcom/allinone/callerid/b/z/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->x:Lcom/allinone/callerid/b/z/f;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->b0()V

    return-void
.end method

.method private a0()V
    .locals 5

    const v0, 0x7f0904a5

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0904a7

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0904a6

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->w:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Lcom/allinone/callerid/b/z/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/b/z/f;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->x:Lcom/allinone/callerid/b/z/f;

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 12
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->x:Lcom/allinone/callerid/b/z/f;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->b0()V

    .line 15
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->y:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;

    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.allinone.callerid.UPDATERECORDLIST"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->y:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;

    invoke-virtual {v1, v2, v0}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0904a5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0057

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "recordnumber"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->v:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "recordname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->w:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->a0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->y:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->y:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
