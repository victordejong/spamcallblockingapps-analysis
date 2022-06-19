.class public Lcom/unknownphone/callblocker/i/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/i/a$a;,
        Lcom/unknownphone/callblocker/i/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a",
        "<",
        "Landroidx/recyclerview/widget/RecyclerView$x;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/unknownphone/callblocker/custom/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method constructor <init>(Ljava/util/List;ZLcom/unknownphone/callblocker/custom/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/i/c;",
            ">;Z",
            "Lcom/unknownphone/callblocker/custom/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 29
    iput-object p3, p0, Lcom/unknownphone/callblocker/i/a;->a:Lcom/unknownphone/callblocker/custom/f;

    .line 30
    iput-boolean p2, p0, Lcom/unknownphone/callblocker/i/a;->d:Z

    .line 31
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/a;->b:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b3

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x377

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 55
    const/16 v0, 0x377

    if-ne p2, v0, :cond_0

    .line 56
    new-instance v0, Lcom/unknownphone/callblocker/i/a$a;

    const v2, 0x7f0c0091

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unknownphone/callblocker/i/a$a;-><init>(Landroid/view/View;)V

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/unknownphone/callblocker/i/a$b;

    const v2, 0x7f0c0092

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/unknownphone/callblocker/i/a;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/unknownphone/callblocker/i/a;->d:Z

    iget-object v4, p0, Lcom/unknownphone/callblocker/i/a;->a:Lcom/unknownphone/callblocker/custom/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unknownphone/callblocker/i/a$b;-><init>(Landroid/view/View;Ljava/lang/String;ZLcom/unknownphone/callblocker/custom/f;)V

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .prologue
    .line 38
    instance-of v0, p1, Lcom/unknownphone/callblocker/i/a$b;

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    check-cast p1, Lcom/unknownphone/callblocker/i/a$a;

    .line 42
    iget-object v0, p0, Lcom/unknownphone/callblocker/i/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/i/c;

    .line 44
    iget-object v1, p1, Lcom/unknownphone/callblocker/i/a$a;->q:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%s %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/unknownphone/callblocker/i/a$a;->a:Landroid/view/View;

    .line 45
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1001ff

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 46
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/i/c;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/unknownphone/callblocker/i/a$a;->a:Landroid/view/View;

    .line 47
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/i/c;->a()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6, v7}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 44
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, Lcom/unknownphone/callblocker/i/a$a;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/i/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/unknownphone/callblocker/i/a;->c:Ljava/lang/String;

    .line 112
    return-void
.end method
