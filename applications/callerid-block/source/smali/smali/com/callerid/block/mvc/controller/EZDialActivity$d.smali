.class Lcom/callerid/block/mvc/controller/EZDialActivity$d;
.super Landroid/widget/ResourceCursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/mvc/controller/EZDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final b:I

.field c:Lfydialer/IContactSplit;

.field private d:Landroid/content/Context;

.field final synthetic e:Lcom/callerid/block/mvc/controller/EZDialActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZDialActivity;Landroid/content/Context;Landroid/database/Cursor;Lfydialer/IContactSplit;)V
    .locals 1

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->e:Lcom/callerid/block/mvc/controller/EZDialActivity;

    const p1, 0x7f0c0050

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p3, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object p4, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->c:Lfydialer/IContactSplit;

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->d:Landroid/content/Context;

    const p1, 0x7f040525

    const p3, 0x7f0801ab

    invoke-static {p2, p1, p3}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->e:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->m0(Landroid/text/Spannable;Ljava/lang/String;Z)V

    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 p2, 0x3

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->e:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lcom/callerid/block/mvc/controller/EZDialActivity;->m0(Landroid/text/Spannable;Ljava/lang/String;Z)V

    iget-object v0, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->b:Lcom/rey/material/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->c:Lfydialer/IContactSplit;

    invoke-interface {p2, p3}, Lfydialer/IContactSplit;->getLookupUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->e:Landroid/net/Uri;

    invoke-static {}, Lcom/callerid/block/mvc/controller/EZDialActivity;->n0()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-wide/16 v0, -0x1

    const/4 p2, 0x6

    invoke-interface {p3, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_1
    iget-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->d:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p2, v0, v1, p3}, Lcom/callerid/block/mvc/controller/EZDialActivity;->E0(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->f:Landroid/widget/ImageView;

    iget p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->b:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;

    invoke-direct {p3}, Lcom/callerid/block/mvc/controller/EZDialActivity$e;-><init>()V

    const v0, 0x7f09028a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->a:Landroid/widget/TextView;

    const v0, 0x7f09009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/ImageButton;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->b:Lcom/rey/material/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->e:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f090205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->c:Landroid/widget/TextView;

    const v0, 0x7f0900d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->d:Landroid/widget/TextView;

    const v0, 0x7f0902b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->f:Landroid/widget/ImageView;

    const v0, 0x7f0902d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/ImageButton;

    iput-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->g:Lcom/rey/material/widget/ImageButton;

    iget-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->e:Lcom/callerid/block/mvc/controller/EZDialActivity;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/EZDialActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->e:Lcom/callerid/block/mvc/controller/EZDialActivity;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/EZDialActivity;->E:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->g:Lcom/rey/material/widget/ImageButton;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object p2, p3, Lcom/callerid/block/mvc/controller/EZDialActivity$e;->g:Lcom/rey/material/widget/ImageButton;

    new-instance p3, Lcom/callerid/block/mvc/controller/EZDialActivity$d$a;

    invoke-direct {p3, p0, p1}, Lcom/callerid/block/mvc/controller/EZDialActivity$d$a;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity$d;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
