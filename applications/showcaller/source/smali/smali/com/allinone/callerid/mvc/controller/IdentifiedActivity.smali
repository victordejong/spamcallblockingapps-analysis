.class public Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "IdentifiedActivity.java"


# instance fields
.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/ListView;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/allinone/callerid/b/j;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "IdentifiedActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->w:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->x:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->z:Ljava/util/List;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->c0()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->w:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->d0(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)Lcom/allinone/callerid/b/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->y:Lcom/allinone/callerid/b/j;

    return-object p0
.end method

.method private b0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->w:Ljava/util/List;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->z:Ljava/util/List;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->x:Ljava/util/HashMap;

    new-instance v4, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$c;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/allinone/callerid/i/a/w/d;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/allinone/callerid/i/a/w/c;)V

    return-void
.end method

.method private c0()V
    .locals 2

    const v0, 0x7f09043a

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->v:Landroid/widget/ListView;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->w:Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->x:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->d0(Ljava/util/List;Ljava/util/HashMap;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->v:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->b0()V

    return-void
.end method

.method private d0(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/allinone/callerid/b/j;

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->v:Landroid/widget/ListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/allinone/callerid/b/j;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Landroid/widget/ListView;Landroid/widget/LinearLayout;Lcom/github/clans/fab/FloatingActionButton;Landroid/widget/RelativeLayout;)V

    iput-object v8, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->y:Lcom/allinone/callerid/b/j;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->v:Landroid/widget/ListView;

    invoke-virtual {p1, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0040

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
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
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
