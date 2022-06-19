.class public Lcom/allinone/callerid/b/z/a;
.super Lcom/allinone/callerid/b/z/b;
.source "AddCustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/z/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/b/z/b<",
        "Lcom/allinone/callerid/bean/recorder/CustomRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/app/Activity;

.field private g:Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/recorder/CustomRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/recorder/CustomRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/b/z/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/allinone/callerid/b/z/a;->h:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/b/z/a;->f:Landroid/app/Activity;

    .line 4
    check-cast p1, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    iput-object p1, p0, Lcom/allinone/callerid/b/z/a;->g:Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    return-void
.end method

.method static synthetic D(Lcom/allinone/callerid/b/z/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/a;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic E(Lcom/allinone/callerid/b/z/a;)Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/a;->g:Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    return-object p0
.end method


# virtual methods
.method public F()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/recorder/CustomRecord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/z/a;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 7

    .line 1
    check-cast p1, Lcom/allinone/callerid/b/z/a$b;

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/bean/recorder/CustomRecord;

    .line 3
    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->M(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->M(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->M(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->N(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->O(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    const v4, 0x7f0801b4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->Q(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v5, Lcom/allinone/callerid/b/z/a$a;

    invoke-direct {v5, p0, p2, p1}, Lcom/allinone/callerid/b/z/a$a;-><init>(Lcom/allinone/callerid/b/z/a;Lcom/allinone/callerid/bean/recorder/CustomRecord;Lcom/allinone/callerid/b/z/a$b;)V

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->isSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p2, v0}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 13
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->O(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->P(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->Q(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/FrameLayout;

    move-result-object p1

    const p2, 0x7f060060

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p2, v3}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 17
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->O(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->P(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->O(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getContactId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getContactId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/b/z/a;->f:Landroid/app/Activity;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->getContactId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->O(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, p2, v1, v4, v2}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 22
    :cond_2
    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->Q(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/FrameLayout;

    move-result-object p1

    const p2, 0x7f060126

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/b/z/a$b;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/a;->g:Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/allinone/callerid/b/z/a$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
