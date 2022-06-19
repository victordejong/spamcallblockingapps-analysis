.class public Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "EZSearchNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$y;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field B:Lcom/allinone/callerid/b/b0/b;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;"
        }
    .end annotation
.end field

.field public D:Landroid/widget/LinearLayout;

.field public E:Landroid/widget/FrameLayout;

.field public F:Landroid/widget/TextView;

.field private G:Landroid/widget/ImageView;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field public J:Landroid/widget/TextView;

.field private K:Landroid/widget/ListView;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/widget/TextView;

.field private N:Lcom/allinone/callerid/b/b0/a;

.field private O:Z

.field private P:Z

.field private Q:Landroid/view/ViewStub;

.field private R:Landroid/view/ViewStub;

.field private S:Landroid/widget/ListView;

.field private T:Lcom/allinone/callerid/b/o;

.field private U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private b0:Landroid/widget/FrameLayout;

.field private c0:Z

.field private d0:I

.field private e0:Landroid/view/ViewStub;

.field private f0:Landroid/view/ViewStub;

.field private g0:Landroid/widget/ImageView;

.field private h0:Landroid/graphics/Typeface;

.field private i0:Landroid/widget/ImageView;

.field private j0:Landroid/text/TextWatcher;

.field private k0:Landroid/os/Handler;

.field private l0:Ljava/lang/Runnable;

.field private final u:Ljava/lang/String;

.field public v:Lcom/allinone/callerid/customview/BaseEditText;

.field public w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ProgressBar;

.field public y:Landroid/widget/ListView;

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/EZSearchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "EZSearchNumberActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->H:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->P:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->U:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->V:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->W:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Y:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Z:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0:Ljava/util/List;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->c0:Z

    .line 14
    iput v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0:I

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->k0:Landroid/os/Handler;

    .line 16
    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$l;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l0:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->O:Z

    return p1
.end method

.method static synthetic B0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I1(Ljava/lang/String;)V

    return-void
.end method

.method private B1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A:Ljava/lang/String;

    new-instance v3, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$h;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-static {v1, v0, v2, v3}, Lcom/allinone/callerid/i/a/d0/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/d0/a;)V

    return-void
.end method

.method static synthetic C0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->L1()V

    return-void
.end method

.method private C1()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.allinone.callerid.INIT_HISTORY"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic E0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z1(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic F0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->c0:Z

    return p0
.end method

.method private F1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->S:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$q;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$q;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->S:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$r;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$r;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->G:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$s;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$s;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->w:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$t;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$t;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$u;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$u;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->g0:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$v;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$v;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->E:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$w;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$w;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$x;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$x;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method static synthetic G0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->c0:Z

    return p1
.end method

.method private G1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/i/a/x/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic H0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->i0:Landroid/widget/ImageView;

    return-object p0
.end method

.method private H1(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
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
    new-instance v0, Lcom/allinone/callerid/b/o;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->S:Landroid/widget/ListView;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/allinone/callerid/b/o;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->T:Lcom/allinone/callerid/b/o;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->S:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic I0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I:Ljava/lang/String;

    return-object p0
.end method

.method private I1(Ljava/lang/String;)V
    .locals 5

    const-string v0, " "

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Q:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0906ea

    .line 2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Q:Landroid/view/ViewStub;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private J1()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->e0:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0906e2

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->e0:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic K0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method private K1()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->R:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09074b

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->R:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic L0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->i0:Landroid/widget/ImageView;

    return-object p1
.end method

.method private L1()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f0:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090795

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f0:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic M0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->H:Ljava/lang/String;

    return-object p0
.end method

.method private M1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->w:Landroid/widget/ImageView;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic N0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->H:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic O0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->X:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic P0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->X:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic Q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0:I

    return p0
.end method

.method static synthetic R0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->d0:I

    return p1
.end method

.method static synthetic S0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->U:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic T0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->U:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic U0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic V0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0:Ljava/util/List;

    return-object p1
.end method

.method static synthetic W0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->T:Lcom/allinone/callerid/b/o;

    return-object p0
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic X0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->M1()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic Y0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->F1()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->G:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic Z0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y1()V

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->e0:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic a1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->e0:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic b1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->g0:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->G:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic c1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->k0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f0:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic d1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Y:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->f0:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic e1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Z:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->S:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic f1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->K1()V

    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->S:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic g1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->J1()V

    return-void
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->V:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->x:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->V:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic i1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->x:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->W:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->K:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->W:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic k1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->K:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->H1(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->M:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/b0/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->N:Lcom/allinone/callerid/b/b0/a;

    return-object p0
.end method

.method static synthetic m1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->M:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Lcom/allinone/callerid/b/b0/a;)Lcom/allinone/callerid/b/b0/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->N:Lcom/allinone/callerid/b/b0/a;

    return-object p1
.end method

.method static synthetic n1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Q:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->P:Z

    return p0
.end method

.method static synthetic o1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Q:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->P:Z

    return p1
.end method

.method static synthetic p1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->R:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->b0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic q1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->R:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->x1()V

    return-void
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->L:Ljava/util/List;

    return-object p0
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->w1()V

    return-void
.end method

.method private t1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->L:Ljava/util/List;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/x/a;->c(Ljava/util/List;Lcom/allinone/callerid/i/a/x/d;)V

    return-void
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->L:Ljava/util/List;

    return-object p1
.end method

.method static synthetic v0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->G1()V

    return-void
.end method

.method static synthetic w0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->t1()V

    return-void
.end method

.method private w1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$m;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$m;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic x0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->C1()V

    return-void
.end method

.method private x1()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->K:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v1, 0x7f0900af

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->b0:Landroid/widget/FrameLayout;

    .line 4
    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic y0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B1()V

    return-void
.end method

.method private y1()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$n;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$n;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/x/a;->d(Lcom/allinone/callerid/i/a/x/d;)V

    :cond_0
    return-void
.end method

.method static synthetic z0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->O:Z

    return p0
.end method

.method private z1(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;

    invoke-direct {v1, p0, p2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$p;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Z)V

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/l/a/f;->f(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/l/a/g;)V

    return-void
.end method


# virtual methods
.method public A1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public C()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Y:Ljava/util/List;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Z:Ljava/util/List;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->W:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a0:Ljava/util/List;

    new-instance v4, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$o;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$o;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/allinone/callerid/i/a/x/a;->b(Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Lcom/allinone/callerid/i/a/x/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public D1()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const/4 v2, 0x0

    const-string v3, "/"

    const-string v4, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->F:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/a1;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->J:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/a1;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I:Ljava/lang/String;

    .line 8
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public E1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->M0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->O0(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public N1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->C:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v1()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->C:Ljava/util/List;

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->C:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/dialog/m;->i(Landroid/app/Activity;Ljava/util/List;Lcom/allinone/callerid/i/a/b;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2712

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "android.speech.extra.RESULTS"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/util/m0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[0-9]+"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p2, :cond_0

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "voiceText: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "wbb"

    invoke-static {p3, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->c0:Z

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->K:Landroid/widget/ListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->b0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s1()V

    .line 15
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->G1()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c005d

    .line 2
    :try_start_0
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

    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j0:Landroid/text/TextWatcher;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->u1()V

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

.method public r1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j0:Landroid/text/TextWatcher;

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->i0:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public s1()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, ""

    .line 2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->K:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->b0:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z1(Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I:Ljava/lang/String;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->A:Ljava/lang/String;

    new-instance v4, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;

    invoke-direct {v4, p0, v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)V

    invoke-static {v1, v2, v0, v3, v4}, Lcom/allinone/callerid/i/a/x/a;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/x/e;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f100304

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public u1()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x309

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
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

.method public v1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/model/EZCountryCode;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/util/p;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
