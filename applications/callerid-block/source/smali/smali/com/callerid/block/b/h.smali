.class public Lcom/callerid/block/b/h;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/b/h$b;
    }
.end annotation


# instance fields
.field private final b:I

.field private c:Landroid/app/Activity;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/b/h;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/callerid/block/b/h;->d:Ljava/util/ArrayList;

    const p2, 0x7f040525

    const v0, 0x7f0801ab

    invoke-static {p1, p2, v0}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/b/h;->b:I

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/b/h;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/b/h;->c:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/callerid/block/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 p3, 0x0

    if-nez p2, :cond_0

    new-instance p2, Lcom/callerid/block/b/h$b;

    invoke-direct {p2}, Lcom/callerid/block/b/h$b;-><init>()V

    iget-object v0, p0, Lcom/callerid/block/b/h;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/callerid/block/b/h$b;->a:Landroid/widget/TextView;

    const v1, 0x7f09028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/callerid/block/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0902b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/callerid/block/b/h$b;->b:Landroid/widget/ImageView;

    const v1, 0x7f0901b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/callerid/block/b/h$b;->c:Landroid/widget/ImageView;

    const v1, 0x7f0902d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/callerid/block/b/h$b;->e:Landroid/widget/FrameLayout;

    :try_start_0
    iget-object v1, p2, Lcom/callerid/block/b/h$b;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p2, Lcom/callerid/block/b/h$b;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/b/h$b;

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    :goto_1
    iget-object v1, p0, Lcom/callerid/block/b/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, ""

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, p2, Lcom/callerid/block/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->n()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/callerid/block/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_2
    :goto_3
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/callerid/block/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->w()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    iget-object v1, p2, Lcom/callerid/block/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p2, Lcom/callerid/block/b/h$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SIM Account"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SIM0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p2, Lcom/callerid/block/b/h$b;->c:Landroid/widget/ImageView;

    const v2, 0x7f0800b9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p2, Lcom/callerid/block/b/h$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_5
    const-string v4, "SIM1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/callerid/block/b/h$b;->c:Landroid/widget/ImageView;

    const v2, 0x7f0800ba

    goto :goto_5

    :cond_6
    iget-object p3, p2, Lcom/callerid/block/b/h$b;->c:Landroid/widget/ImageView;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object p3, p2, Lcom/callerid/block/b/h$b;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/callerid/block/b/h;->b:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p3, p0, Lcom/callerid/block/b/h;->c:Landroid/app/Activity;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/callerid/block/b/h;->b:I

    iget-object v4, p2, Lcom/callerid/block/b/h$b;->b:Landroid/widget/ImageView;

    invoke-static {p3, v1, v3, v2, v4}, Lcom/callerid/block/util/p;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    iget-object p2, p2, Lcom/callerid/block/b/h$b;->e:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/callerid/block/b/h$a;

    invoke-direct {p3, p0, p1}, Lcom/callerid/block/b/h$a;-><init>(Lcom/callerid/block/b/h;Lcom/callerid/block/search/CallLogBean;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
