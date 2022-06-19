.class Lcom/allinone/callerid/g/d$a;
.super Ljava/lang/Object;
.source "EZCallScreenFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/d;->a2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/d$a;->d:Lcom/allinone/callerid/g/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 2

    const-string v0, "callscreen"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "latestFragment"

    .line 2
    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_list_last_show_new"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "popularFragment"

    .line 5
    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_list_download_show_new"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
