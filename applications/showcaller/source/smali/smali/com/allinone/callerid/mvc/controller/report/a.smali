.class public Lcom/allinone/callerid/mvc/controller/report/a;
.super Landroidx/fragment/app/Fragment;
.source "MyReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/mvc/controller/report/a$c;
    }
.end annotation


# instance fields
.field private e0:Landroid/widget/ListView;

.field private f0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private g0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private h0:Lcom/allinone/callerid/b/r;

.field private i0:Landroid/widget/RelativeLayout;

.field public j0:Ljava/util/List;

.field private k0:Lcom/allinone/callerid/mvc/controller/report/a$c;

.field private l0:Landroid/widget/TextView;

.field private m0:Landroid/widget/TextView;

.field private n0:Landroid/widget/LinearLayout;

.field private o0:Landroid/widget/LinearLayout;

.field private p0:Landroid/widget/LinearLayout;

.field private q0:I

.field private r0:I

.field private s0:I

.field private t0:Landroid/widget/TextView;

.field private u0:Landroid/widget/RelativeLayout;

.field private v0:Landroid/content/Context;

.field private w0:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->j0:Ljava/util/List;

    return-void
.end method

.method static synthetic a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->f0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->n0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->l0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->o0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic e2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->m0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->p0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic g2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->t0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h2(Lcom/allinone/callerid/mvc/controller/report/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/a;->u2()V

    return-void
.end method

.method static synthetic i2(Lcom/allinone/callerid/mvc/controller/report/a;)Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->w0:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    return-object p0
.end method

.method static synthetic j2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->g0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic k2(Lcom/allinone/callerid/mvc/controller/report/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->g0:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic l2(Lcom/allinone/callerid/mvc/controller/report/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->q0:I

    return p0
.end method

.method static synthetic m2(Lcom/allinone/callerid/mvc/controller/report/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->q0:I

    return p1
.end method

.method static synthetic n2(Lcom/allinone/callerid/mvc/controller/report/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->r0:I

    return p0
.end method

.method static synthetic o2(Lcom/allinone/callerid/mvc/controller/report/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->r0:I

    return p1
.end method

.method static synthetic p2(Lcom/allinone/callerid/mvc/controller/report/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->s0:I

    return p0
.end method

.method static synthetic q2(Lcom/allinone/callerid/mvc/controller/report/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->s0:I

    return p1
.end method

.method static synthetic r2(Lcom/allinone/callerid/mvc/controller/report/a;)Lcom/allinone/callerid/b/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->h0:Lcom/allinone/callerid/b/r;

    return-object p0
.end method

.method static synthetic s2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->i0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic t2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->u0:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private u2()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->q0:I

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->r0:I

    iget v2, p0, Lcom/allinone/callerid/mvc/controller/report/a;->s0:I

    new-instance v3, Lcom/allinone/callerid/mvc/controller/report/a$b;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/report/a$b;-><init>(Lcom/allinone/callerid/mvc/controller/report/a;)V

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/i/a/w/d;->c(IIILcom/allinone/callerid/i/a/w/e;)V

    return-void
.end method

.method private v2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->w0:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090720

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090741

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090742

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090765

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090766

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090789

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f09078a

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090509

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->u0:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903b1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->n0:Landroid/widget/LinearLayout;

    const v1, 0x7f090743

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->l0:Landroid/widget/TextView;

    const v1, 0x7f0903b9

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->o0:Landroid/widget/LinearLayout;

    const v1, 0x7f090767

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->m0:Landroid/widget/TextView;

    const v1, 0x7f0903c2

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->p0:Landroid/widget/LinearLayout;

    const v1, 0x7f09078b

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->t0:Landroid/widget/TextView;

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->l0:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->m0:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->t0:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->e0:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private w2(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0903d5

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->e0:Landroid/widget/ListView;

    const v0, 0x7f0904ef

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->i0:Landroid/widget/RelativeLayout;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->f0:Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/a;->v2()V

    .line 5
    new-instance v0, Lcom/allinone/callerid/b/r;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->w0:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/a;->f0:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/report/a;->e0:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3}, Lcom/allinone/callerid/b/r;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->h0:Lcom/allinone/callerid/b/r;

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->e0:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->e0:Landroid/widget/ListView;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/report/a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/report/a$a;-><init>(Lcom/allinone/callerid/mvc/controller/report/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0906d6

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static x2()Lcom/allinone/callerid/mvc/controller/report/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-direct {v0}, Lcom/allinone/callerid/mvc/controller/report/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    iget-object p2, p2, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->v0:Landroid/content/Context;

    const p2, 0x7f0c00b7

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/allinone/callerid/mvc/controller/report/a$c;

    invoke-direct {p2, p0, p3}, Lcom/allinone/callerid/mvc/controller/report/a$c;-><init>(Lcom/allinone/callerid/mvc/controller/report/a;Lcom/allinone/callerid/mvc/controller/report/a$a;)V

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/a;->k0:Lcom/allinone/callerid/mvc/controller/report/a$c;

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/a;->v0:Landroid/content/Context;

    invoke-static {p2}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p2

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/a;->k0:Lcom/allinone/callerid/mvc/controller/report/a$c;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.allinone.callerid.REPROT_NUMBER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-object p1
.end method

.method public H0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a;->v0:Landroid/content/Context;

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->k0:Lcom/allinone/callerid/mvc/controller/report/a$c;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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

    .line 2
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/report/a;->w2(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/a;->u2()V

    return-void
.end method

.method public y0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->v0:Landroid/content/Context;

    .line 3
    check-cast p1, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a;->w0:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    return-void
.end method
