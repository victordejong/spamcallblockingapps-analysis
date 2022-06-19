.class public Lcom/allinone/callerid/b/z/c;
.super Lcom/allinone/callerid/b/z/b;
.source "ContactRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/b/z/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/allinone/callerid/b/z/b<",
        "Lcom/allinone/callerid/bean/recorder/RecordCall;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Landroid/graphics/Typeface;

.field private g:Landroid/content/Context;

.field private h:Landroid/app/Activity;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/recorder/RecordCall;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/b/z/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/b/z/c;->g:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/allinone/callerid/b/z/c;->f:Landroid/graphics/Typeface;

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/b/z/c;->g:Landroid/content/Context;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p2, v0}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/allinone/callerid/b/z/c;->i:I

    .line 5
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/allinone/callerid/b/z/c;->h:Landroid/app/Activity;

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/z/c;->g:Landroid/content/Context;

    const p2, 0x7f04006e

    const v0, 0x7f08008b

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/c;->j:I

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/b/z/c;->g:Landroid/content/Context;

    const p2, 0x7f04006d

    const v0, 0x7f08008a

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/c;->k:I

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/z/c;->g:Landroid/content/Context;

    const p2, 0x7f04006f

    const v0, 0x7f08008c

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/c;->l:I

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/z/c;->g:Landroid/content/Context;

    const p2, 0x7f040070

    const v0, 0x7f08008d

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/b/z/c;->m:I

    return-void
.end method

.method static synthetic D(Lcom/allinone/callerid/b/z/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/c;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic E(Lcom/allinone/callerid/b/z/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/c;->h:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic F(Lcom/allinone/callerid/b/z/c;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/b/z/c;->f:Landroid/graphics/Typeface;

    return-object p0
.end method


# virtual methods
.method public p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/allinone/callerid/b/z/c$b;

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/bean/recorder/RecordCall;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/c;->i:I

    invoke-static {v1, v2, v2, v2, v2}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/c;->k:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 6
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/c;->i:I

    invoke-static {v1, v2, v2, v2, v3}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/c;->m:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_2

    .line 9
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/c;->i:I

    invoke-static {v1, v2, v3, v2, v2}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/c;->j:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/c;->i:I

    invoke-static {v1, v2, v3, v2, v3}, Lcom/allinone/callerid/util/recorder/f;->z(Landroid/view/View;IIII)V

    .line 12
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->M(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget v2, p0, Lcom/allinone/callerid/b/z/c;->l:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    if-nez p2, :cond_3

    .line 13
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->N(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->N(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    :goto_1
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->O(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->P(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getRecordcount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {p1}, Lcom/allinone/callerid/b/z/c$b;->Q(Lcom/allinone/callerid/b/z/c$b;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/b/z/c$a;

    invoke-direct {p2, p0, v0}, Lcom/allinone/callerid/b/z/c$a;-><init>(Lcom/allinone/callerid/b/z/c;Lcom/allinone/callerid/bean/recorder/RecordCall;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    .line 1
    new-instance p2, Lcom/allinone/callerid/b/z/c$b;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/b;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/allinone/callerid/b/z/c$b;-><init>(Lcom/allinone/callerid/b/z/c;Landroid/view/View;)V

    return-object p2
.end method
