.class public Lcom/allinone/callerid/mvc/controller/report/b;
.super Landroidx/fragment/app/Fragment;
.source "ReportListFragment.java"


# instance fields
.field private e0:Landroid/view/LayoutInflater;

.field private f0:Landroid/widget/ListView;

.field private g0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private h0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i0:Lcom/allinone/callerid/b/j;

.field private j0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k0:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/b;->g0:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/b;->h0:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/b;->j0:Ljava/util/List;

    return-void
.end method

.method static synthetic a2(Lcom/allinone/callerid/mvc/controller/report/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/b;->g0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b2(Lcom/allinone/callerid/mvc/controller/report/b;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/report/b;->g2(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic c2(Lcom/allinone/callerid/mvc/controller/report/b;)Lcom/allinone/callerid/b/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/b;->i0:Lcom/allinone/callerid/b/j;

    return-object p0
.end method

.method private d2()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->g0:Ljava/util/List;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/b;->j0:Ljava/util/List;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/report/b;->h0:Ljava/util/HashMap;

    new-instance v4, Lcom/allinone/callerid/mvc/controller/report/b$b;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/mvc/controller/report/b$b;-><init>(Lcom/allinone/callerid/mvc/controller/report/b;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/allinone/callerid/i/a/w/d;->b(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/allinone/callerid/i/a/w/c;)V

    return-void
.end method

.method private e2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/b;->e0:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0166

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09071b

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->f0:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static f2()Lcom/allinone/callerid/mvc/controller/report/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/b;

    invoke-direct {v0}, Lcom/allinone/callerid/mvc/controller/report/b;-><init>()V

    return-object v0
.end method

.method private g2(Ljava/util/List;Ljava/util/HashMap;)V
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

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->k0:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/report/b;->f0:Landroid/widget/ListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/allinone/callerid/b/j;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Landroid/widget/ListView;Landroid/widget/LinearLayout;Lcom/github/clans/fab/FloatingActionButton;Landroid/widget/RelativeLayout;)V

    iput-object v8, p0, Lcom/allinone/callerid/mvc/controller/report/b;->i0:Lcom/allinone/callerid/b/j;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->f0:Landroid/widget/ListView;

    invoke-virtual {p1, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p3

    iget-object p3, p3, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->e0:Landroid/view/LayoutInflater;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0c00ba

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public H0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    return-void
.end method

.method public T0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->T0()V

    return-void
.end method

.method public Y0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->Y0()V

    return-void
.end method

.method public c1(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->c1(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09043a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->f0:Landroid/widget/ListView;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->g0:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/b;->e2()V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->g0:Ljava/util/List;

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/b;->h0:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/report/b;->g2(Ljava/util/List;Ljava/util/HashMap;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->f0:Landroid/widget/ListView;

    new-instance p2, Lcom/allinone/callerid/mvc/controller/report/b$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/mvc/controller/report/b$a;-><init>(Lcom/allinone/callerid/mvc/controller/report/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/b;->d2()V

    return-void
.end method

.method public y0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/b;->k0:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    return-void
.end method
