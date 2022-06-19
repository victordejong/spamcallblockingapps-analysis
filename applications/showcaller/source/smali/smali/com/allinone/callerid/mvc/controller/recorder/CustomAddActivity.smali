.class public Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "CustomAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;,
        Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$d;,
        Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;,
        Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$c;
    }
.end annotation


# instance fields
.field private A:Landroidx/recyclerview/widget/RecyclerView;

.field private B:I

.field private C:I

.field private final u:Ljava/lang/String;

.field private v:Lcom/allinone/callerid/b/z/a;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "CustomAddActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)Lcom/allinone/callerid/b/z/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->v:Lcom/allinone/callerid/b/z/a;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->B:I

    return p0
.end method

.method private Z()V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a0()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 4
    new-instance v0, Lcom/allinone/callerid/b/z/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/allinone/callerid/b/z/a;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->v:Lcom/allinone/callerid/b/z/a;

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    iget v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->C:I

    if-ne v0, v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->e0()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->d0()V

    :goto_0
    return-void
.end method

.method private b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f09010a

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->w:Landroid/widget/ImageView;

    const v1, 0x7f09010b

    .line 3
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->x:Landroid/widget/TextView;

    const v1, 0x7f090109

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f090108

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->z:Landroid/widget/ImageView;

    const v1, 0x7f090107

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private d0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private e0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private g0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public f0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->v:Lcom/allinone/callerid/b/z/a;

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->v:Lcom/allinone/callerid/b/z/a;

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->v:Lcom/allinone/callerid/b/z/a;

    invoke-virtual {v0}, Lcom/allinone/callerid/b/z/a;->F()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->x:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->v:Lcom/allinone/callerid/b/z/a;

    invoke-virtual {v2}, Lcom/allinone/callerid/b/z/a;->F()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->v:Lcom/allinone/callerid/b/z/a;

    invoke-virtual {v2}, Lcom/allinone/callerid/b/z/b;->C()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->g0()V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->Z()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090108
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0039

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "customType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->B:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "phoneDataType"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->C:I

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->c0()V

    .line 9
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->a0()V

    .line 10
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->b0()V

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
