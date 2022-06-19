.class public Lcom/mglab/scm/intro/Intro4_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/intro/Intro4;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/intro/Intro4;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/intro/Intro4_ViewBinding;->b:Lcom/mglab/scm/intro/Intro4;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09019f

    const-string v2, "field \'contacts\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->contacts:Landroid/widget/ImageView;

    const v0, 0x7f0901a6

    const-string v1, "field \'phone\'"

    .line 7
    const-class v2, Landroid/widget/ImageView;

    .line 8
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->phone:Landroid/widget/ImageView;

    const v0, 0x7f0902be

    const-string v1, "field \'pbCallLog\'"

    .line 11
    const-class v2, Landroid/widget/ProgressBar;

    .line 12
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->pbCallLog:Landroid/widget/ProgressBar;

    const v0, 0x7f0902bf

    const-string v1, "field \'pbContacts\'"

    .line 15
    const-class v2, Landroid/widget/ProgressBar;

    .line 16
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->pbContacts:Landroid/widget/ProgressBar;

    const v0, 0x7f0902c0

    const-string v1, "field \'pbDb\'"

    .line 19
    const-class v2, Landroid/widget/ProgressBar;

    .line 20
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->pbDb:Landroid/widget/ProgressBar;

    const v0, 0x7f0901a1

    const-string v1, "field \'copyContactsIV\'"

    .line 23
    const-class v2, Landroid/widget/ImageView;

    .line 24
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->copyContactsIV:Landroid/widget/ImageView;

    const v0, 0x7f0901a0

    const-string v1, "field \'copyCallLogIV\'"

    .line 27
    const-class v2, Landroid/widget/ImageView;

    .line 28
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->copyCallLogIV:Landroid/widget/ImageView;

    const v0, 0x7f0901a3

    const-string v1, "field \'downloadDBIV\' and method \'onRetryClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 32
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'downloadDBIV\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->downloadDBIV:Landroid/widget/ImageView;

    .line 33
    iput-object v1, p0, Lcom/mglab/scm/intro/Intro4_ViewBinding;->c:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/mglab/scm/intro/Intro4_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/intro/Intro4_ViewBinding$a;-><init>(Lcom/mglab/scm/intro/Intro4_ViewBinding;Lcom/mglab/scm/intro/Intro4;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090105

    const-string v1, "field \'dbDownloadTextView\'"

    .line 35
    const-class v2, Landroid/widget/TextView;

    .line 36
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 37
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->dbDownloadTextView:Landroid/widget/TextView;

    const v0, 0x7f0901b2

    const-string v1, "field \'descriptionTV\'"

    .line 39
    const-class v2, Landroid/widget/TextView;

    .line 40
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 41
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/intro/Intro4;->descriptionTV:Landroid/widget/TextView;

    const v0, 0x7f0903be

    const-string v1, "field \'waitTV\'"

    .line 43
    const-class v2, Landroid/widget/TextView;

    .line 44
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    invoke-static {p2, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 46
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mglab/scm/intro/Intro4;->waitTV:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4_ViewBinding;->b:Lcom/mglab/scm/intro/Intro4;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/intro/Intro4_ViewBinding;->b:Lcom/mglab/scm/intro/Intro4;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->contacts:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->phone:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->pbCallLog:Landroid/widget/ProgressBar;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->pbContacts:Landroid/widget/ProgressBar;

    .line 7
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->pbDb:Landroid/widget/ProgressBar;

    .line 8
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->copyContactsIV:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->copyCallLogIV:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->downloadDBIV:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->dbDownloadTextView:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->descriptionTV:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/mglab/scm/intro/Intro4;->waitTV:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/mglab/scm/intro/Intro4_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
