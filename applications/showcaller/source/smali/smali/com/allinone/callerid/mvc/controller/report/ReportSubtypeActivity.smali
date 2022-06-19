.class public Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "ReportSubtypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/allinone/callerid/b/y;

.field private C:Z

.field private D:Landroid/view/View;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/content/Intent;

.field private G:Landroid/widget/FrameLayout;

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/SubType;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/ImageView;

.field private K:Lcom/allinone/callerid/dialog/j;

.field private L:Lcom/allinone/callerid/search/EZSearchResult;

.field private M:Lcom/allinone/callerid/search/CallLogBean;

.field private N:Z

.field private O:Lcom/allinone/callerid/customview/BaseEditText;

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/LinearLayout;

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/TextView;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "ReportSubtypeActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->u:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Lcom/allinone/callerid/search/EZSearchResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Lcom/allinone/callerid/search/CallLogBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->o0()V

    return-void
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Lcom/allinone/callerid/dialog/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->K:Lcom/allinone/callerid/dialog/j;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Lcom/allinone/callerid/customview/BaseEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->O:Lcom/allinone/callerid/customview/BaseEditText;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Lcom/allinone/callerid/bean/SubType;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z0(Lcom/allinone/callerid/bean/SubType;ZZ)V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->w0()V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->u0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->q0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->p0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private l0(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "subtype"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v2, "subtype_id"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    const-string v2, "count"

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/bean/SubType;->setCount(I)V

    const-string v2, "type"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/SubType;->getCount()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/SubType;->setCount(I)V

    .line 12
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 13
    iput-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/allinone/callerid/bean/SubType;->getCount()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/SubType;->setCount(I)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 17
    iput-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private m0()V
    .locals 2

    const v0, 0x7f09036a

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090184

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/customview/BaseEditText;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->O:Lcom/allinone/callerid/customview/BaseEditText;

    const v0, 0x7f090517

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f09020b

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090397

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->P:Landroid/widget/LinearLayout;

    const v0, 0x7f090384

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Q:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private n0(Z)V
    .locals 9

    const-string v0, "silent-call"

    const-string v1, "abandoned-call"

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "Silent Call"

    const-string v5, "Abandoned Call"

    const-string v6, "Spam"

    const-string v7, "Scam"

    const/4 v8, 0x1

    if-eqz p1, :cond_13

    .line 1
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 2
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 9
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 12
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v5, 0xa

    if-ge v1, v5, :cond_2

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 16
    invoke-virtual {p1, v4}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    const-string v1, "Silent call"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 23
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 26
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_5
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v0, "Phishing Scam"

    .line 30
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v0, "phishing-scam"

    .line 31
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    const-string v1, "Phishing scam"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 37
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 40
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_8

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_8
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v0, "Nuisance Call"

    .line 44
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v0, "nuisance-call"

    .line 45
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    const-string v1, "Nuisance call"

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 51
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 52
    :cond_9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 54
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 55
    :cond_a
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_b

    .line 56
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_b
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v0, "Prizes Scam"

    .line 58
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v0, "sweepstakes-lottery-prizes-scam"

    .line 59
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    const-string v1, "Prizes scam"

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 64
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 65
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 66
    :cond_c
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 68
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_e

    .line 70
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_e
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v0, "Travel Scam"

    .line 72
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v0, "travel-scam"

    .line 73
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Travel scam"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 78
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 79
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 80
    :cond_f
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Travel scam"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 81
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 82
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 83
    :cond_10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_11

    .line 84
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 86
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 92
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_custom(Z)V

    .line 93
    iput-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 94
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_29

    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 96
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 102
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_custom(Z)V

    .line 103
    iput-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 104
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :cond_13
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 106
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 112
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 113
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 114
    :cond_14
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 115
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 116
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 117
    :cond_15
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "Loan Scam"

    .line 119
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v5, "advance-fee-loan-scam"

    .line 120
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 122
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 125
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 126
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 127
    :cond_16
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 128
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 129
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 130
    :cond_17
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "Caller ID spoofing"

    .line 132
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v5, "caller-id-spoofing"

    .line 133
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 135
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 137
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 138
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 139
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 140
    :cond_18
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 141
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 142
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 143
    :cond_19
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "Charity Scam"

    .line 145
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v5, "charity-scam"

    .line 146
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 148
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 149
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 150
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 151
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 152
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 153
    :cond_1a
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 154
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 155
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 156
    :cond_1b
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "Computer Scam"

    .line 158
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v5, "computer-scam"

    .line 159
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 161
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 162
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 163
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 164
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 165
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 166
    :cond_1c
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 167
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 168
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 169
    :cond_1d
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "Credit Card Scam"

    .line 171
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v5, "credit-card-scam"

    .line 172
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 177
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 178
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 179
    :cond_1e
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 180
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 181
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 182
    :cond_1f
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "Government Grant Scam"

    .line 184
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v5, "government-grant-scam"

    .line 185
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 188
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 189
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 190
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 191
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 192
    :cond_20
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v5, :cond_21

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 193
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 194
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 195
    :cond_21
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "Debt Collection Scam"

    .line 197
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v5, "debt-collection-scam"

    .line 198
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 202
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 203
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 204
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 205
    :cond_22
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 206
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 207
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 208
    :cond_23
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    const-string v1, "IRS Imposter"

    .line 210
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v5, "irs-imposter"

    .line 211
    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1, v7}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 213
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 214
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 216
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 217
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 218
    :cond_24
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 219
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 220
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 221
    :cond_25
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 223
    invoke-virtual {p1, v4}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype_id(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 229
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 230
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 231
    :cond_26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 232
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 233
    iput-boolean v8, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 234
    :cond_27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz p1, :cond_28

    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    if-nez v0, :cond_28

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 236
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 237
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 242
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_custom(Z)V

    .line 243
    iput-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 244
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_28
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_29

    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 246
    new-instance p1, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 247
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_pdt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, v6}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_has_bg(Z)V

    .line 252
    invoke-virtual {p1, v8}, Lcom/allinone/callerid/bean/SubType;->setIs_custom(Z)V

    .line 253
    iput-boolean v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->N:Z

    .line 254
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    :goto_0
    return-void
.end method

.method private o0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "isrefush"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x77

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private p0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private q0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Charity scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "Abandoned Call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "Travel scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "Prizes scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Nuisance call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "Credit Card Scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "Loan Scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_7
    const-string v0, "Caller ID spoofing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v0, "Phishing scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_9
    const-string v0, "Government Grant Scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_a
    const-string v0, "Debt Collection Scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_b
    const-string v0, "IRS Imposter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string v0, "Silent call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_d
    const-string v0, "Computer Scam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x0

    :goto_0
    const-string p1, "is_spam"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "is_scam"

    :goto_1
    :pswitch_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f95eb9f -> :sswitch_d
        -0x7c3414d7 -> :sswitch_c
        -0x760b0559 -> :sswitch_b
        -0x557bf2af -> :sswitch_a
        -0x45bc0b51 -> :sswitch_9
        -0x4445d2a0 -> :sswitch_8
        -0x2e6e1b57 -> :sswitch_7
        -0x2830e454 -> :sswitch_6
        -0x1d7256bb -> :sswitch_5
        -0xd152ba2 -> :sswitch_4
        0x46988c7b -> :sswitch_3
        0x4c913fa2 -> :sswitch_2
        0x70879d6a -> :sswitch_1
        0x7ad58c24 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private r0()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->F:Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f090060

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->E:Landroid/widget/TextView;

    const v1, 0x7f09060a

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09077b

    .line 6
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->I:Landroid/widget/TextView;

    const v2, 0x7f090334

    .line 7
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->J:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0904d1

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->v:Landroid/widget/RelativeLayout;

    const v1, 0x7f0905ea

    .line 11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->D:Landroid/view/View;

    const v1, 0x7f090369

    .line 12
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 13
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09077d

    .line 15
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->w:Landroid/widget/TextView;

    const v1, 0x7f090784

    .line 16
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 17
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0903a4

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0903b0

    .line 20
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->G:Landroid/widget/FrameLayout;

    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0904ae

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    new-instance v1, Lcom/allinone/callerid/b/y;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/allinone/callerid/b/y;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->B:Lcom/allinone/callerid/b/y;

    .line 25
    new-instance v1, Lcom/allinone/callerid/customview/FlowLayoutManager;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/customview/FlowLayoutManager;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 27
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->B:Lcom/allinone/callerid/b/y;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->B:Lcom/allinone/callerid/b/y;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/y;->K(Lcom/allinone/callerid/b/y$b;)V

    return-void
.end method

.method private s0(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[`~!@#$%^&*()+=|{}\':;\',\\[\\].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private t0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "_"

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p3, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    move-object v6, p3

    goto :goto_1

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->x:Ljava/lang/String;

    if-eqz p3, :cond_1

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->x:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->x:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 7
    :goto_1
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/h1;->G()Ljava/lang/String;

    move-result-object v8

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    new-instance p1, Lcom/allinone/callerid/util/r0;

    const-string v4, "android"

    move-object v2, p1

    move-object v3, p2

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/allinone/callerid/util/r0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private u0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v1, p2

    move-object v7, p3

    move-object/from16 v0, p6

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    .line 4
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "_"

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v10

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 7
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/h1;->Q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/h1;->G()Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    new-instance v11, Lcom/allinone/callerid/util/u0;

    const-string v2, "android"

    move-object v0, v11

    move-object v1, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/allinone/callerid/util/u0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v11, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method private v0()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->F:Landroid/content/Intent;

    if-eqz v0, :cond_d

    const-string v1, "contact_subtype"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/EZSearchResult;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->F:Landroid/content/Intent;

    const-string v1, "is_answer_end"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->C:Z

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "subtype_shownun"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->F:Landroid/content/Intent;

    const-string v3, "contact_subtype_activity"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/CallLogBean;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "subtype_pdt_show"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v3, "subtype_it_show"

    invoke-virtual {v0, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_d

    :cond_1
    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 12
    :try_start_1
    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getT_p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->x:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getOld_tel_number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getTel_number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype_cc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype()Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->J:Landroid/widget/ImageView;

    const v5, 0x7f08021c

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 20
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v3, "subtype_haschildshow"

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 21
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 23
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 24
    invoke-direct {p0, v3}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->l0(Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    :cond_3
    invoke-direct {p0, v4}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->n0(Z)V

    goto/16 :goto_3

    .line 28
    :cond_4
    invoke-direct {p0, v2}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->n0(Z)V

    goto/16 :goto_3

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->J()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->x:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->F()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1001ea

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->J:Landroid/widget/ImageView;

    const v6, 0x7f08021e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "1"

    .line 38
    iput-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    .line 39
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 41
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 43
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 44
    invoke-direct {p0, v3}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->l0(Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 46
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47
    :cond_8
    invoke-direct {p0, v4}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->n0(Z)V

    goto :goto_3

    .line 48
    :cond_9
    invoke-direct {p0, v2}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->n0(Z)V

    .line 49
    :goto_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 50
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 51
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_5
    if-le v0, v2, :cond_b

    .line 52
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/SubType;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/SubType;->getSubtype_id()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/bean/SubType;

    invoke-virtual {v3}, Lcom/allinone/callerid/bean/SubType;->getSubtype_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 53
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 54
    :cond_c
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->B:Lcom/allinone/callerid/b/y;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 56
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->B:Lcom/allinone/callerid/b/y;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_6
    return-void
.end method

.method private w0()V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->x0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->x0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private x0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/allinone/callerid/dialog/j;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$c;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    const v3, 0x7f1100f6

    invoke-direct {v0, v1, v3, v2}, Lcom/allinone/callerid/dialog/j;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->K:Lcom/allinone/callerid/dialog/j;

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->K:Lcom/allinone/callerid/dialog/j;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private y0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "edittype"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x78

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private z0(Lcom/allinone/callerid/bean/SubType;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/allinone/callerid/i/a/w/f;->a(Lcom/allinone/callerid/bean/SubType;ZZLjava/lang/String;Lcom/allinone/callerid/search/CallLogBean;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f010049

    const-string v2, "com.allinone.callerid.RELOAD_DATA"

    const-wide/16 v3, 0x79

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->P:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$f;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "subtype_it_back"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->C:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0, v6}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    invoke-virtual {p0, v7, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_2

    .line 12
    :sswitch_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y:Ljava/lang/String;

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/contact"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/person"

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/contact"

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/raw_contact"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phone_type"

    const/4 v2, 0x2

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 27
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 28
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 29
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "subtype_deletechild"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 30
    invoke-direct {p0, p1, v7, v7}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z0(Lcom/allinone/callerid/bean/SubType;ZZ)V

    .line 31
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 32
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 34
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->o0()V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 36
    :sswitch_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->P:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->O:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 39
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->O:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 40
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->O:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->O:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->findFocus()Landroid/view/View;

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$h;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 43
    :sswitch_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_5

    .line 44
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "subtype_it_close"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 45
    :cond_5
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->C:Z

    if-eqz p1, :cond_6

    .line 46
    invoke-virtual {p0, v6}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 47
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    invoke-virtual {p0, v7, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 49
    :sswitch_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->P:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$g;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 52
    :sswitch_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->O:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 55
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    .line 56
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 57
    :cond_8
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->s0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/allinone/callerid/bean/SubType;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/SubType;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/SubType;->setSubtype(Ljava/lang/String;)V

    const-string v1, "Spam"

    .line 60
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SubType;->setType(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SubType;->setTel_number(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/SubType;->setCc(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v0, v6, v7}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z0(Lcom/allinone/callerid/bean/SubType;ZZ)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 67
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_9

    .line 68
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "subtype_it_commitnewtype"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_9
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->y0(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->M:Lcom/allinone/callerid/search/CallLogBean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->H()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 71
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "subtype_editchild"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 72
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->w0()V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->z:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->t0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09020b -> :sswitch_5
        0x7f090369 -> :sswitch_3
        0x7f09036a -> :sswitch_4
        0x7f0903a4 -> :sswitch_2
        0x7f0903b0 -> :sswitch_1
        0x7f0904d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060121

    .line 2
    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/h1;->C0(Landroid/app/Activity;I)V

    const p1, 0x7f0c005a

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->r0()V

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->v0()V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 p1, 0x0

    .line 14
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->m0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->O:Lcom/allinone/callerid/customview/BaseEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->Q:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->P:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;)V

    const-wide/16 v1, 0x79

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->L:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v1, "subtype_it_back"

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportSubtypeActivity;->C:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, p2}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const p1, 0x7f010049

    .line 10
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return p2

    .line 11
    :cond_3
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
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "subtype_activity"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
