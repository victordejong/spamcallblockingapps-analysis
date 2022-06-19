.class public Lcom/callerid/block/b/a;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/a$c;
    }
.end annotation


# instance fields
.field private final b:I

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Landroid/widget/ListView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/a;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/callerid/block/b/a;->d:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/a;->e:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/callerid/block/b/a;->f:Landroid/widget/ListView;

    iget-object p1, p0, Lcom/callerid/block/b/a;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/b/a;->g:Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/callerid/block/b/a;->c:Landroid/app/Activity;

    const p2, 0x7f040525

    const p3, 0x7f0801ab

    invoke-static {p1, p2, p3}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/b/a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/a;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/a;->f:Landroid/widget/ListView;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/a;->d:Ljava/util/List;

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
    .locals 6

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/callerid/block/b/a;->e:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0040

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/callerid/block/b/a$c;

    invoke-direct {v0, p3}, Lcom/callerid/block/b/a$c;-><init>(Lcom/callerid/block/b/a$a;)V

    const v1, 0x7f09028c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/callerid/block/b/a$c;->a:Landroid/widget/TextView;

    const v1, 0x7f0902a0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/callerid/block/b/a$c;->b:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/callerid/block/b/a$c;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/a;->g:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/b/a$c;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/b/a;->g:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0902b8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callerid/block/b/a$c;->c:Landroid/widget/ImageView;

    const v1, 0x7f0902d8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/Button;

    iput-object v1, v0, Lcom/callerid/block/b/a$c;->d:Lcom/rey/material/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/callerid/block/b/a$c;->d:Lcom/rey/material/widget/Button;

    new-instance v2, Lcom/callerid/block/b/a$a;

    invoke-direct {v2, p0}, Lcom/callerid/block/b/a$a;-><init>(Lcom/callerid/block/b/a;)V

    invoke-virtual {v1, v2}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/b/a$c;

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/b/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/callerid/block/b/a;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1001e0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v4, v0, Lcom/callerid/block/b/a$c;->c:Landroid/widget/ImageView;

    add-int/lit16 v5, p1, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/callerid/block/b/a$c;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/callerid/block/b/a$c;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/callerid/block/b/a$c;->d:Lcom/rey/material/widget/Button;

    new-instance v4, Lcom/callerid/block/b/a$b;

    invoke-direct {v4, p0, p1}, Lcom/callerid/block/b/a$b;-><init>(Lcom/callerid/block/b/a;I)V

    invoke-virtual {v2, v4}, Lcom/rey/material/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->s()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/b/a;->c:Landroid/app/Activity;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/callerid/block/b/a;->b:I

    iget-object v0, v0, Lcom/callerid/block/b/a$c;->c:Landroid/widget/ImageView;

    invoke-static {p1, v1, p3, v2, v0}, Lcom/callerid/block/util/p;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lcom/callerid/block/b/a$c;->c:Landroid/widget/ImageView;

    iget p3, p0, Lcom/callerid/block/b/a;->b:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-object p2
.end method
