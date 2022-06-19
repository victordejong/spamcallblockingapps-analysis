.class Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;
.super Landroidx/fragment/app/q;
.source "ReportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/report/ReportListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final j:Ljava/lang/reflect/Field;


# instance fields
.field k:[Landroidx/fragment/app/Fragment;

.field l:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.support.v4.app.FragmentManagerImpl"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mActive"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    sput-object v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->j:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->l:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    .line 3
    array-length p2, p2

    new-array p2, p2, [Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->k:[Landroidx/fragment/app/Fragment;

    .line 4
    :try_start_0
    sget-object p2, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->j:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 6
    instance-of v0, p2, Lcom/allinone/callerid/mvc/controller/report/b;

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->d:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    invoke-direct {p0, v0, p2}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->w(Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v0, p2, Lcom/allinone/callerid/mvc/controller/report/a;

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->e:Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    invoke-direct {p0, v0, p2}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->w(Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private w(Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->l:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->k:[Landroidx/fragment/app/Fragment;

    aput-object p2, p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->k:[Landroidx/fragment/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public g(I)Ljava/lang/CharSequence;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/d;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/d;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->l:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public v(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->k:[Landroidx/fragment/app/Fragment;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$b;->a:[I

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->l:[Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$Tab;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->k:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/allinone/callerid/mvc/controller/report/a;->x2()Lcom/allinone/callerid/mvc/controller/report/a;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->k:[Landroidx/fragment/app/Fragment;

    invoke-static {}, Lcom/allinone/callerid/mvc/controller/report/b;->f2()Lcom/allinone/callerid/mvc/controller/report/b;

    move-result-object v1

    aput-object v1, v0, p1

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/ReportListActivity$c;->k:[Landroidx/fragment/app/Fragment;

    aget-object p1, v0, p1

    return-object p1
.end method
