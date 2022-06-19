.class Lcom/allinone/callerid/g/c$j;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Lcom/allinone/callerid/customview/SideBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c;->Q2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$j;->a:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/c$j;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v0}, Lcom/allinone/callerid/g/c;->J2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/b/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/b/i;->getPositionForSection(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/g/c$j;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v2}, Lcom/allinone/callerid/g/c;->K2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/NestedScrollingListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/g/c$j;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v2}, Lcom/allinone/callerid/g/c;->K2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/NestedScrollingListView;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/allinone/callerid/g/c$j;->a:Lcom/allinone/callerid/g/c;

    invoke-static {v2}, Lcom/allinone/callerid/g/c;->K2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/NestedScrollingListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    :goto_0
    const-string v0, "\u2606"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/c$j;->a:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->K2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/NestedScrollingListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2
    return-void
.end method
