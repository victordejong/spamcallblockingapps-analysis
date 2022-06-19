.class public Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;,
        Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;
    }
.end annotation


# instance fields
.field private A:Lcom/allinone/callerid/b/m;

.field private B:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

.field private C:Lcom/allinone/callerid/customview/SideBar;

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/allinone/callerid/b/i;

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/TextView;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/RelativeLayout;

.field private N:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;

.field private O:Landroid/widget/FrameLayout;

.field private P:Landroid/widget/ImageView;

.field private Q:Lcom/allinone/callerid/customview/BaseEditText;

.field private R:I

.field private S:Landroid/text/TextWatcher;

.field public T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private U:Landroid/graphics/Typeface;

.field private V:Landroid/os/Handler;

.field private W:Ljava/lang/Runnable;

.field private final u:Ljava/lang/String;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/widget/ListView;

.field private z:Lcom/allinone/callerid/customview/MyListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "ContactsListActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->v:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->x:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->I:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->N:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->T:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->V:Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->W:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->K:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic B0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic C0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->L:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic E0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->A:Lcom/allinone/callerid/b/m;

    return-object p0
.end method

.method static synthetic F0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Lcom/allinone/callerid/b/m;)Lcom/allinone/callerid/b/m;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->A:Lcom/allinone/callerid/b/m;

    return-object p1
.end method

.method private G0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->K:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/r/b;->e(Landroid/content/Context;Lcom/allinone/callerid/i/a/r/e;)V

    return-void
.end method

.method private H0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private I0()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09039d

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->G:Landroid/widget/LinearLayout;

    .line 3
    invoke-direct {p0, v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->P0(Landroid/view/View;)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->y:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private K0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->P:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$h;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->S:Landroid/text/TextWatcher;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Q:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Q:Lcom/allinone/callerid/customview/BaseEditText;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->C:Lcom/allinone/callerid/customview/SideBar;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$k;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/SideBar;->setOnTouchingLetterChangedListener(Lcom/allinone/callerid/customview/SideBar$a;)V

    return-void
.end method

.method private L0()V
    .locals 3

    const v0, 0x7f090252

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015b

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    :cond_0
    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904f0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->M:Landroid/widget/RelativeLayout;

    const v0, 0x7f0906d8

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->U:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09020d

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->O:Landroid/widget/FrameLayout;

    const v0, 0x7f0902ac

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->P:Landroid/widget/ImageView;

    const v0, 0x7f090195

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/BaseEditText;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Q:Lcom/allinone/callerid/customview/BaseEditText;

    const v0, 0x7f090565

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/SideBar;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->C:Lcom/allinone/callerid/customview/SideBar;

    const v0, 0x7f090133

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->C:Lcom/allinone/callerid/customview/SideBar;

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/customview/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 13
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->I0()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->D:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Lcom/allinone/callerid/b/i;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->D:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->y:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/allinone/callerid/b/i;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->F:Lcom/allinone/callerid/b/i;

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->y:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private M0()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$g;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/i/a/r/b;->f(Landroid/content/Context;Lcom/allinone/callerid/i/a/r/g;)V

    return-void
.end method

.method private N0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->I:Ljava/util/List;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->x:Ljava/util/List;

    new-instance v3, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$c;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/i/a/r/b;->i(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/allinone/callerid/i/a/r/c;)V

    return-void
.end method

.method private O0(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation

    const-string v0, "\\-|\\s"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "^([0-9]|[/+]).*"

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_2

    .line 3
    :try_start_1
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    .line 5
    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/search/CallLogBean;

    .line 10
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v2}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v2, Lcom/allinone/callerid/search/CallLogBean;->u:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    iget-object v4, v2, Lcom/allinone/callerid/search/CallLogBean;->h0:Lcom/allinone/callerid/customview/SortToken;

    iget-object v4, v4, Lcom/allinone/callerid/customview/SortToken;->d:Ljava/lang/String;

    if-eqz v4, :cond_5

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, v2, Lcom/allinone/callerid/search/CallLogBean;->h0:Lcom/allinone/callerid/customview/SortToken;

    iget-object v4, v4, Lcom/allinone/callerid/customview/SortToken;->e:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-object v1
.end method

.method private P0(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0907c8

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09067c

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->H:Landroid/widget/TextView;

    const v2, 0x7f0903a5

    .line 4
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->L:Landroid/widget/LinearLayout;

    const v2, 0x7f0906dc

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->U:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0906dd

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f0906de

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->U:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f090673

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->H:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->U:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09037b

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/customview/MyListView;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->z:Lcom/allinone/callerid/customview/MyListView;

    .line 13
    new-instance p1, Lcom/allinone/callerid/b/m;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/allinone/callerid/b/m;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->A:Lcom/allinone/callerid/b/m;

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->z:Lcom/allinone/callerid/customview/MyListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    new-instance p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$l;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$l;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->M:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->G:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/MyListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->z:Lcom/allinone/callerid/customview/MyListView;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->N0()V

    return-void
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->K0()V

    return-void
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->E:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->y:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->y:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/BaseEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Q:Lcom/allinone/callerid/customview/BaseEditText;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->R:I

    return p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->R:I

    return p1
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->B:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;)Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->B:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    return-object p1
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->M0()V

    return-void
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->J:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->G0()V

    return-void
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->J:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->U:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->L0()V

    return-void
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->W:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->V:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->N:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;

    return-object p0
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->P:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic v0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->O0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->I:Ljava/util/List;

    return-object p1
.end method

.method static synthetic x0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->O:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic y0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->D:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic z0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/b/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->F:Lcom/allinone/callerid/b/i;

    return-object p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2bf

    if-ne p1, p3, :cond_0

    const/16 p1, 0x2bc

    if-ne p2, p1, :cond_0

    .line 2
    :try_start_0
    new-instance p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$d;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    invoke-static {p1}, Lcom/allinone/callerid/i/a/r/a;->f(Lcom/allinone/callerid/i/a/r/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0037

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
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->H0()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->B:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->B:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->N:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Q:Lcom/allinone/callerid/customview/BaseEditText;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->S:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->S:Landroid/text/TextWatcher;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->Q:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
