.class final Lcom/hbb20/d;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"

# interfaces
.implements Lcom/futuremind/recyclerviewfastscroll/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/hbb20/d$a;",
        ">;",
        "Lcom/futuremind/recyclerviewfastscroll/b;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/widget/TextView;

.field d:Lcom/hbb20/CountryCodePicker;

.field e:Landroid/view/LayoutInflater;

.field f:Landroid/widget/EditText;

.field g:Landroid/app/Dialog;

.field h:Landroid/content/Context;

.field i:Landroid/widget/RelativeLayout;

.field j:Landroid/widget/ImageView;

.field k:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;",
            "Lcom/hbb20/CountryCodePicker;",
            "Landroid/widget/RelativeLayout;",
            "Landroid/widget/EditText;",
            "Landroid/widget/TextView;",
            "Landroid/app/Dialog;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hbb20/d;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/hbb20/d;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/hbb20/d;->k:I

    .line 41
    iput-object p1, p0, Lcom/hbb20/d;->h:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/hbb20/d;->b:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 44
    iput-object p7, p0, Lcom/hbb20/d;->g:Landroid/app/Dialog;

    .line 45
    iput-object p6, p0, Lcom/hbb20/d;->c:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/hbb20/d;->f:Landroid/widget/EditText;

    .line 47
    iput-object p4, p0, Lcom/hbb20/d;->i:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p8, p0, Lcom/hbb20/d;->j:Landroid/widget/ImageView;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/d;->e:Landroid/view/LayoutInflater;

    const-string p1, ""

    .line 50
    invoke-virtual {p0, p1}, Lcom/hbb20/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/d;->a:Ljava/util/List;

    .line 3055
    iget-object p1, p0, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 3106
    iget-boolean p1, p1, Lcom/hbb20/CountryCodePicker;->H:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    .line 3056
    iget-object p1, p0, Lcom/hbb20/d;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4077
    iget-object p1, p0, Lcom/hbb20/d;->f:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 4078
    new-instance p2, Lcom/hbb20/d$2;

    invoke-direct {p2, p0}, Lcom/hbb20/d$2;-><init>(Lcom/hbb20/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4099
    iget-object p1, p0, Lcom/hbb20/d;->f:Landroid/widget/EditText;

    new-instance p2, Lcom/hbb20/d$3;

    invoke-direct {p2, p0}, Lcom/hbb20/d$3;-><init>(Lcom/hbb20/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5065
    :cond_0
    iget-object p1, p0, Lcom/hbb20/d;->j:Landroid/widget/ImageView;

    new-instance p2, Lcom/hbb20/d$1;

    invoke-direct {p2, p0}, Lcom/hbb20/d$1;-><init>(Lcom/hbb20/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 3060
    :cond_1
    iget-object p1, p0, Lcom/hbb20/d;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/hbb20/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/a;

    .line 203
    iget v1, p0, Lcom/hbb20/d;->k:I

    if-le v1, p1, :cond_0

    const-string p1, "\u2605"

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 5697
    iget-object p1, v0, Lcom/hbb20/a;->j:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 206
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "\u263a"

    return-object p1
.end method

.method final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lcom/hbb20/d;->k:I

    .line 142
    iget-object v1, p0, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    iget-object v1, v1, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/a;

    .line 144
    invoke-virtual {v2, p1}, Lcom/hbb20/a;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget v2, p0, Lcom/hbb20/d;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/hbb20/d;->k:I

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget v1, p0, Lcom/hbb20/d;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hbb20/d;->k:I

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/hbb20/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hbb20/a;

    .line 158
    invoke-virtual {v2, p1}, Lcom/hbb20/a;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/hbb20/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 6

    .line 28
    check-cast p1, Lcom/hbb20/d$a;

    .line 6174
    iget-object v0, p0, Lcom/hbb20/d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/a;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_5

    .line 6251
    iget-object v3, p1, Lcom/hbb20/d$a;->w:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6252
    iget-object v3, p1, Lcom/hbb20/d$a;->s:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6253
    iget-object v3, p1, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6254
    iget-object v3, p1, Lcom/hbb20/d$a;->x:Lcom/hbb20/d;

    iget-object v3, v3, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 6537
    iget-boolean v3, v3, Lcom/hbb20/CountryCodePicker;->B:Z

    if-eqz v3, :cond_0

    .line 6255
    iget-object v3, p1, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6257
    :cond_0
    iget-object v3, p1, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v3, ""

    .line 6262
    iget-object v4, p1, Lcom/hbb20/d$a;->x:Lcom/hbb20/d;

    iget-object v4, v4, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 6585
    iget-boolean v4, v4, Lcom/hbb20/CountryCodePicker;->G:Z

    if-eqz v4, :cond_1

    .line 6262
    iget-object v4, p1, Lcom/hbb20/d$a;->x:Lcom/hbb20/d;

    iget-object v4, v4, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    iget-boolean v4, v4, Lcom/hbb20/CountryCodePicker;->O:Z

    if-eqz v4, :cond_1

    .line 6264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/hbb20/a;->a(Lcom/hbb20/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6267
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6697
    iget-object v3, v0, Lcom/hbb20/a;->j:Ljava/lang/String;

    .line 6267
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6269
    iget-object v4, p1, Lcom/hbb20/d$a;->x:Lcom/hbb20/d;

    iget-object v4, v4, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 7553
    iget-boolean v4, v4, Lcom/hbb20/CountryCodePicker;->M:Z

    if-eqz v4, :cond_2

    .line 6270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7681
    iget-object v3, v0, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 6270
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6273
    :cond_2
    iget-object v4, p1, Lcom/hbb20/d$a;->s:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6274
    iget-object v3, p1, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7689
    iget-object v5, v0, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 6274
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6276
    iget-object v3, p1, Lcom/hbb20/d$a;->x:Lcom/hbb20/d;

    iget-object v3, v3, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    .line 8585
    iget-boolean v3, v3, Lcom/hbb20/CountryCodePicker;->G:Z

    if-eqz v3, :cond_4

    .line 6276
    iget-object v3, p1, Lcom/hbb20/d$a;->x:Lcom/hbb20/d;

    iget-object v3, v3, Lcom/hbb20/d;->d:Lcom/hbb20/CountryCodePicker;

    iget-boolean v3, v3, Lcom/hbb20/CountryCodePicker;->O:Z

    if-eqz v3, :cond_3

    goto :goto_1

    .line 6279
    :cond_3
    iget-object v2, p1, Lcom/hbb20/d$a;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6280
    iget-object v1, p1, Lcom/hbb20/d$a;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/hbb20/a;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 6277
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/hbb20/d$a;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 6283
    :cond_5
    iget-object v0, p1, Lcom/hbb20/d$a;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6284
    iget-object v0, p1, Lcom/hbb20/d$a;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6285
    iget-object v0, p1, Lcom/hbb20/d$a;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6286
    iget-object v0, p1, Lcom/hbb20/d$a;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6175
    :goto_2
    iget-object v0, p0, Lcom/hbb20/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_6

    iget-object v0, p0, Lcom/hbb20/d;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9291
    iget-object p1, p1, Lcom/hbb20/d$a;->r:Landroid/widget/RelativeLayout;

    .line 6176
    new-instance v0, Lcom/hbb20/d$4;

    invoke-direct {v0, p0, p2}, Lcom/hbb20/d$4;-><init>(Lcom/hbb20/d;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 10291
    :cond_6
    iget-object p1, p1, Lcom/hbb20/d$a;->r:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    .line 6190
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 11167
    iget-object p2, p0, Lcom/hbb20/d;->e:Landroid/view/LayoutInflater;

    sget v0, Lcom/hbb20/h$g;->layout_recycler_country_tile:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11168
    new-instance p2, Lcom/hbb20/d$a;

    invoke-direct {p2, p0, p1}, Lcom/hbb20/d$a;-><init>(Lcom/hbb20/d;Landroid/view/View;)V

    return-object p2
.end method
