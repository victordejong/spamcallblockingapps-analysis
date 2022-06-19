.class public Lit/gmariotti/cardslib/library/view/CardGridView;
.super Landroid/widget/GridView;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/a/a$a;


# static fields
.field protected static a:Ljava/lang/String; = "CardGridView"


# instance fields
.field protected b:Lit/gmariotti/cardslib/library/a/g;

.field protected c:Lit/gmariotti/cardslib/library/a/h;

.field protected d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 86
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1121
    invoke-direct {p0, p1, v0}, Lit/gmariotti/cardslib/library/view/CardGridView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    const/4 p1, 0x0

    .line 2121
    invoke-direct {p0, p2, p1}, Lit/gmariotti/cardslib/library/view/CardGridView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    sget p1, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p1, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    .line 3121
    invoke-direct {p0, p2, p3}, Lit/gmariotti/cardslib/library/view/CardGridView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 134
    sget v0, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    .line 136
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/view/CardGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lit/gmariotti/cardslib/library/a$g;->card_options:[I

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 140
    :try_start_0
    sget p2, Lit/gmariotti/cardslib/library/a$g;->card_options_list_card_layout_resourceID:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public final a(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V
    .locals 0

    .line 238
    sget-object p1, Lit/gmariotti/cardslib/library/view/CardGridView;->a:Ljava/lang/String;

    const-string p2, "Don\'t use this kind of animation in a grid"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V
    .locals 0

    .line 244
    sget-object p1, Lit/gmariotti/cardslib/library/view/CardGridView;->a:Ljava/lang/String;

    const-string p2, "Don\'t use this kind of animation in a grid"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 65
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 157
    instance-of v0, p1, Lit/gmariotti/cardslib/library/a/g;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lit/gmariotti/cardslib/library/a/g;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardGridView;->setAdapter(Lit/gmariotti/cardslib/library/a/g;)V

    return-void

    .line 159
    :cond_0
    instance-of v0, p1, Lit/gmariotti/cardslib/library/a/h;

    if-eqz v0, :cond_1

    .line 160
    check-cast p1, Lit/gmariotti/cardslib/library/a/h;

    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardGridView;->setAdapter(Lit/gmariotti/cardslib/library/a/h;)V

    return-void

    .line 162
    :cond_1
    sget-object v0, Lit/gmariotti/cardslib/library/view/CardGridView;->a:Ljava/lang/String;

    const-string v1, "You are using a generic adapter. Pay attention: your adapter has to call cardGridArrayAdapter#getView method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Lit/gmariotti/cardslib/library/a/g;)V
    .locals 1

    .line 173
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/g;->a(I)V

    .line 178
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/g;->a(Lit/gmariotti/cardslib/library/view/CardGridView;)V

    .line 179
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->b:Lit/gmariotti/cardslib/library/a/g;

    return-void
.end method

.method public setAdapter(Lit/gmariotti/cardslib/library/a/h;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget v0, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    invoke-virtual {p1, v0}, Lit/gmariotti/cardslib/library/a/h;->a(I)V

    .line 193
    invoke-virtual {p1, p0}, Lit/gmariotti/cardslib/library/a/h;->a(Lit/gmariotti/cardslib/library/view/CardGridView;)V

    .line 194
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->c:Lit/gmariotti/cardslib/library/a/h;

    return-void
.end method

.method public setExternalAdapter(Landroid/widget/ListAdapter;Lit/gmariotti/cardslib/library/a/g;)V
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->b:Lit/gmariotti/cardslib/library/a/g;

    .line 209
    invoke-virtual {p2, p0}, Lit/gmariotti/cardslib/library/a/g;->a(Lit/gmariotti/cardslib/library/view/CardGridView;)V

    .line 210
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->b:Lit/gmariotti/cardslib/library/a/g;

    iget p2, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    invoke-virtual {p1, p2}, Lit/gmariotti/cardslib/library/a/g;->a(I)V

    return-void
.end method

.method public setExternalAdapter(Landroid/widget/ListAdapter;Lit/gmariotti/cardslib/library/a/h;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/view/CardGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->c:Lit/gmariotti/cardslib/library/a/h;

    .line 225
    invoke-virtual {p2, p0}, Lit/gmariotti/cardslib/library/a/h;->a(Lit/gmariotti/cardslib/library/view/CardGridView;)V

    .line 226
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->c:Lit/gmariotti/cardslib/library/a/h;

    iget p2, p0, Lit/gmariotti/cardslib/library/view/CardGridView;->d:I

    invoke-virtual {p1, p2}, Lit/gmariotti/cardslib/library/a/h;->a(I)V

    return-void
.end method
