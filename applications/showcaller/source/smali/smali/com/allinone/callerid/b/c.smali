.class public Lcom/allinone/callerid/b/c;
.super Landroid/widget/BaseAdapter;
.source "BlockedCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/c$b;
    }
.end annotation


# instance fields
.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Landroid/app/Activity;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/view/LayoutInflater;

.field private q:Landroid/widget/ListView;

.field r:Lcom/allinone/callerid/b/c$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/c;->n:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/b/c;->p:Landroid/view/LayoutInflater;

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/b/c;->q:Landroid/widget/ListView;

    const p2, 0x7f040117

    const p3, 0x7f060047

    .line 6
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/c;->d:I

    const v0, 0x7f040146

    const v1, 0x7f06004d

    .line 7
    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/c;->e:I

    const v0, 0x7f04011a

    const v1, 0x7f060051

    .line 8
    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/b/c;->f:I

    .line 9
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/c;->g:I

    const p2, 0x7f04006e

    const p3, 0x7f08008b

    .line 10
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/c;->h:I

    const p2, 0x7f04006d

    const p3, 0x7f08008a

    .line 11
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/c;->i:I

    const p2, 0x7f04006f

    const p3, 0x7f08008c

    .line 12
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/c;->j:I

    const p2, 0x7f040070

    const p3, 0x7f08008d

    .line 13
    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/c;->k:I

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/b/c;->n:Landroid/app/Activity;

    const p2, 0x7f04007c

    const p3, 0x7f0800bb

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/c;->l:I

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/b/c;->n:Landroid/app/Activity;

    const p2, 0x7f04007d

    const p3, 0x7f0800be

    invoke-static {p1, p2, p3}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/c;->m:I

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/b/c;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/c;->q:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/b/c;->p:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0069

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/allinone/callerid/b/c$b;

    const/4 v2, 0x0

    invoke-direct {p3, v2}, Lcom/allinone/callerid/b/c$b;-><init>(Lcom/allinone/callerid/b/c$a;)V

    iput-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f09041a

    .line 3
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->a:Landroid/widget/TextView;

    .line 4
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f090794

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->b:Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f09071a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    .line 6
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f090765

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f090663

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    .line 8
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f0904dd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->e:Landroid/widget/RelativeLayout;

    .line 9
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/allinone/callerid/b/c;->l:I

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/allinone/callerid/b/c;->f:I

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f0904bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->g:Landroid/widget/FrameLayout;

    .line 16
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f0904be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    .line 17
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f0904ce

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    .line 18
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f090509

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->j:Landroid/view/View;

    .line 20
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->j:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    const v2, 0x7f090491

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/allinone/callerid/b/c$b;->k:Landroid/widget/ImageView;

    .line 22
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/b/c$b;

    iput-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    .line 29
    :goto_0
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->k:Landroid/widget/ImageView;

    const v2, 0x7f0801b4

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->a:Landroid/widget/TextView;

    iget v3, p0, Lcom/allinone/callerid/b/c;->d:I

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    iget v3, p0, Lcom/allinone/callerid/b/c;->e:I

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p3, p3, Lcom/allinone/callerid/b/c$b;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/allinone/callerid/b/c;->e:I

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object p3, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/allinone/callerid/search/CallLogBean;

    .line 34
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 36
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->j:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    .line 38
    :try_start_0
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    if-lez p1, :cond_2

    .line 39
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->j:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 45
    :cond_1
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 47
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->j:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 48
    iget-object v5, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v5, v5, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v5, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v5, v5, Lcom/allinone/callerid/b/c$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 50
    iget-object v5, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v5, v5, Lcom/allinone/callerid/b/c$b;->j:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 52
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->j:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_9

    if-lez p1, :cond_9

    .line 56
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 57
    iget-object v5, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 59
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq p1, v4, :cond_5

    .line 60
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 61
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->j:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 64
    :cond_4
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->h:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 65
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 66
    :cond_5
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->h:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 67
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 68
    :cond_6
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq p1, v4, :cond_8

    .line 69
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 70
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 72
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->k:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 73
    :cond_7
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->i:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 74
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 75
    :cond_8
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->i:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 76
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 77
    :cond_9
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq p1, v4, :cond_d

    .line 78
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 79
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->o:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez p1, :cond_a

    .line 81
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->k:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 82
    :cond_a
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->k:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    :cond_b
    if-nez p1, :cond_c

    .line 83
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->i:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 84
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 85
    :cond_c
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->i:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 86
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 87
    :cond_d
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/allinone/callerid/b/c;->i:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 88
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 89
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->h:Landroid/widget/RelativeLayout;

    iget v5, p0, Lcom/allinone/callerid/b/c;->i:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 90
    iget-object v4, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v4, v4, Lcom/allinone/callerid/b/c$b;->i:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :goto_2
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_e

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 93
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/allinone/callerid/b/c;->n:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10025c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 95
    :cond_e
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 96
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 98
    :cond_f
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 99
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 101
    :cond_10
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v3, v3, Lcom/allinone/callerid/b/c$b;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_3
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result v3

    if-nez v3, :cond_13

    .line 104
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 105
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/c;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/c;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 109
    :cond_11
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 110
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    iget v3, p0, Lcom/allinone/callerid/b/c;->m:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 111
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/allinone/callerid/b/c;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/b/c;->n:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1001aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 114
    :cond_12
    iget-object v1, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 115
    :cond_13
    iget-object v1, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/c$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_4
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5

    .line 118
    :cond_14
    iget-object v1, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 119
    :cond_15
    :goto_5
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 120
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 121
    :cond_16
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_6
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->b()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/i;->i(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->g:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/allinone/callerid/b/c$a;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/b/c$a;-><init>(Lcom/allinone/callerid/b/c;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 125
    iget-object p1, p0, Lcom/allinone/callerid/b/c;->n:Landroid/app/Activity;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->v()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v1, v1, Lcom/allinone/callerid/b/c$b;->k:Landroid/widget/ImageView;

    invoke-static {p1, v0, p3, v2, v1}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_8

    .line 126
    :cond_17
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0801b5

    if-eqz p1, :cond_18

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->P()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 127
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 128
    iget-object p1, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p1, p1, Lcom/allinone/callerid/b/c$b;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f0801b5

    goto :goto_7

    .line 129
    :cond_18
    iget-object p1, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object p1, p1, Lcom/allinone/callerid/b/c$b;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    :goto_7
    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 131
    iget-object p1, p0, Lcom/allinone/callerid/b/c;->n:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/allinone/callerid/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/allinone/callerid/b/c;->r:Lcom/allinone/callerid/b/c$b;

    iget-object v0, v0, Lcom/allinone/callerid/b/c$b;->k:Landroid/widget/ImageView;

    invoke-static {p1, p3, v2, v0}, Lcom/allinone/callerid/util/t;->a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_19
    :goto_8
    return-object p2
.end method
