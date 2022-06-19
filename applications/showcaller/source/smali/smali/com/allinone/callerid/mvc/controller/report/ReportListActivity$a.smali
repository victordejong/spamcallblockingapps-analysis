.class Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;
.super Ljava/lang/Object;
.source "ReportListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    const v1, 0x7f09079d

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    const v2, 0x7f090252

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f08015b

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :cond_0
    new-instance v2, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    const v1, 0x7f0903dd

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/CustomViewPager;

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    const v2, 0x7f0903dc

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    const v3, 0x7f040124

    const v4, 0x7f06004f

    invoke-static {v2, v3, v4}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v2

    iput v2, v1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->r:I

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    const v3, 0x7f040145

    const v4, 0x7f06005e

    invoke-static {v2, v3, v4}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v2

    iput v2, v1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->q:I

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    invoke-static {v2, v3, v4}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->setIndicatorColor(I)V

    const/16 v2, 0x10

    .line 12
    iput v2, v1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->B:I

    const/4 v2, 0x0

    .line 13
    iput v2, v1, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->s:I

    .line 14
    new-instance v3, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;

    iget-object v4, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->A()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;

    invoke-static {v5}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;->X(Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;)[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;-><init>(Landroidx/fragment/app/FragmentManager;[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;)V

    .line 15
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 16
    invoke-virtual {v1, v0}, Lcom/allinone/callerid/mvc/view/recorder/LTabIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 18
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
