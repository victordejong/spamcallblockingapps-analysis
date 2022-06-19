.class public Lcom/callerid/block/b/l;
.super Lcom/callerid/block/b/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/l$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callerid/block/b/c<",
        "Lcom/callerid/block/search/CallLogBean;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:I

.field private g:Landroid/content/Context;

.field private h:Landroid/app/Activity;

.field private i:Landroidx/recyclerview/widget/RecyclerView;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/callerid/block/b/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/b/l;->j:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/callerid/block/b/l;->g:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/callerid/block/b/l;->h:Landroid/app/Activity;

    iput-object p2, p0, Lcom/callerid/block/b/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f040525

    const v0, 0x7f0801ab

    invoke-static {p1, p2, v0}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/b/l;->f:I

    return-void
.end method

.method static synthetic A(Lcom/callerid/block/b/l;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic B(Lcom/callerid/block/b/l;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l;->h:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic y(Lcom/callerid/block/b/l;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l;->j:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic z(Lcom/callerid/block/b/l;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/l;->i:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public m(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 11

    check-cast p1, Lcom/callerid/block/b/l$c;

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/callerid/block/b/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->M(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->M(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->N(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {p1}, Lcom/callerid/block/b/l$c;->O(Lcom/callerid/block/b/l$c;)Landroid/widget/ImageView;

    move-result-object v3

    iget v4, p0, Lcom/callerid/block/b/l;->f:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->O(Lcom/callerid/block/b/l$c;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/callerid/block/b/l;->j:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/callerid/block/b/l;->j:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->O(Lcom/callerid/block/b/l$c;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/callerid/block/b/l$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/b/l$a;-><init>(Lcom/callerid/block/b/l;)V

    invoke-static {v0, v3}, Lcom/callerid/block/h/a/f/f;->a(Ljava/lang/String;Lcom/callerid/block/h/a/f/n;)V

    :goto_1
    const/16 v3, 0x7a

    const/16 v4, 0x5a

    const/16 v5, 0x61

    const/16 v6, 0x41

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v1, :cond_9

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_4

    if-le v9, v4, :cond_5

    :cond_4
    if-lt v9, v5, :cond_6

    if-gt v9, v3, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/callerid/block/util/q$a;

    iget-object v9, v9, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    if-eqz v9, :cond_8

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "[0-9]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v1

    const-string v9, "#"

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_9
    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/callerid/block/b/c;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    if-le v1, v9, :cond_13

    if-lez p2, :cond_13

    iget-object v1, p0, Lcom/callerid/block/b/c;->d:Ljava/util/ArrayList;

    add-int/lit8 v9, p2, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/callerid/block/b/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p2}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_d

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    if-le v9, v4, :cond_b

    :cond_a
    if-lt v9, v5, :cond_c

    if-gt v9, v3, :cond_c

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/util/q$a;

    iget-object v1, v1, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_d
    move-object v1, v2

    :goto_4
    if-eqz p2, :cond_11

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_e

    if-le v9, v4, :cond_f

    :cond_e
    if-lt v9, v5, :cond_10

    if-gt v9, v3, :cond_10

    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_10
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callerid/block/util/q$a;

    iget-object p2, p2, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_11
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_12
    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object p2

    :goto_6
    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_13
    if-nez p2, :cond_14

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p2

    invoke-static {p1}, Lcom/callerid/block/b/l$c;->P(Lcom/callerid/block/b/l$c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_7
    invoke-static {p1}, Lcom/callerid/block/b/l$c;->Q(Lcom/callerid/block/b/l$c;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lcom/callerid/block/b/l$b;

    invoke-direct {p2, p0, v0}, Lcom/callerid/block/b/l$b;-><init>(Lcom/callerid/block/b/l;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 3

    new-instance p2, Lcom/callerid/block/b/l$c;

    iget-object v0, p0, Lcom/callerid/block/b/c;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/callerid/block/b/l$c;-><init>(Lcom/callerid/block/b/l;Landroid/view/View;)V

    return-object p2
.end method
