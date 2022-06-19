.class public Lcom/mglab/scm/visual/CallItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public callImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public callTimeTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public checkBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public contactImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public contactLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public d:Lh8/l;

.field public dndLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public durationTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Date;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public mainLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public n:Z

.field public nameAndPhoneLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public namePhoneSimTimeLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public nameTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public numberTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public presetLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public presetTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public simAndTimeLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public simImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh8/l;)V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->n:Z

    .line 14
    iput-object p1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    .line 15
    iget-object v1, p1, Lh8/l;->d:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    .line 16
    iget-object v3, p1, Lh8/l;->g:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/mglab/scm/visual/CallItem;->b:Z

    .line 17
    iput-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->f:Z

    .line 18
    iget v0, p1, Lh8/l;->L:I

    iput v0, p0, Lcom/mglab/scm/visual/CallItem;->m:I

    .line 19
    iput-boolean v2, p0, Lcom/mglab/scm/visual/CallItem;->l:Z

    if-eqz v3, :cond_3

    .line 20
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p1, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x29a

    if-ne v0, v1, :cond_3

    .line 21
    :cond_2
    iget-object p1, p1, Lh8/l;->D:Ljava/lang/String;

    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/CallItem;->g:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mglab/scm/visual/CallItem;->h:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/mglab/scm/visual/CallItem;->i:Ljava/util/Date;

    .line 5
    iput-object p4, p0, Lcom/mglab/scm/visual/CallItem;->j:Ljava/lang/Integer;

    .line 6
    iput-object p5, p0, Lcom/mglab/scm/visual/CallItem;->k:Ljava/lang/String;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->l:Z

    .line 8
    iput-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->f:Z

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/mglab/scm/visual/CallItem;->e:Z

    .line 10
    iput-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->n:Z

    .line 11
    iput-boolean p2, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c002b

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    .line 4
    iget-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->f:Z

    const v1, 0x7f060059

    const/16 v2, 0x64

    const v3, 0x7f0800e0

    const/16 v4, -0x29a

    const/4 v5, 0x1

    const v6, 0x7f1100ee

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz p1, :cond_8

    .line 5
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->g:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->n:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->checkBox:Landroid/widget/CheckBox;

    .line 10
    iget-boolean v9, p0, Lcom/mglab/scm/visual/CallItem;->e:Z

    .line 11
    invoke-virtual {p1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->presetLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->dndLayout:Landroid/widget/RelativeLayout;

    iget v9, p0, Lcom/mglab/scm/visual/CallItem;->m:I

    if-ne v9, v5, :cond_3

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v9, v9, Lh8/l;->d:Ljava/lang/Integer;

    .line 14
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gtz v9, :cond_2

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v9, v9, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/16 v4, 0x8

    .line 15
    :goto_0
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->h:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->h:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 19
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_2
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->h:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->h:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->g:Ljava/lang/String;

    invoke-static {p1}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->durationTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->j:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lf8/g;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->callTimeTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/mglab/scm/visual/CallItem;->i:Ljava/util/Date;

    invoke-static {v4, v6}, Lf8/g;->m(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->callImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mglab/scm/visual/CallItem;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-static {}, Lg9/s;->d()Lg9/s;

    move-result-object p1

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lg9/s;->e(Ljava/lang/String;)Lg9/w;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v3}, Lg9/w;->c(I)Lg9/w;

    new-instance v3, Lo8/c;

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    .line 32
    invoke-static {v4, v1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v3, v5, v2, v1}, Lo8/c;-><init>(III)V

    invoke-virtual {p1, v3}, Lg9/w;->d(Lg9/b0;)Lg9/w;

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->contactImageView:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {p1, v1, v0}, Lg9/w;->b(Landroid/widget/ImageView;Lg9/e;)V

    goto/16 :goto_c

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v9, v9, Lh8/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v9, v9, Lh8/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->n:Z

    if-eqz p1, :cond_9

    .line 37
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->checkBox:Landroid/widget/CheckBox;

    .line 39
    iget-boolean v9, p0, Lcom/mglab/scm/visual/CallItem;->e:Z

    .line 40
    invoke-virtual {p1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 41
    :cond_9
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object p1, p1, Lh8/l;->h:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_3

    .line 42
    :cond_a
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v9, v9, Lh8/l;->h:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 44
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    :goto_4
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object p1, p1, Lh8/l;->h:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 46
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v9, v9, Lh8/l;->h:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_c
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object p1, p1, Lh8/l;->c:Ljava/lang/String;

    invoke-static {p1}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 48
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :cond_d
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->durationTextView:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/mglab/scm/visual/CallItem;->b:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v6, v6, Lh8/l;->k:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Lf8/g;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->callTimeTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    iget-boolean v9, p0, Lcom/mglab/scm/visual/CallItem;->b:Z

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v9, v9, Lh8/l;->i:Ljava/sql/Date;

    goto :goto_6

    :cond_f
    iget-object v9, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v9, v9, Lh8/l;->e:Ljava/sql/Date;

    :goto_6
    invoke-static {v6, v9}, Lf8/g;->m(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz p1, :cond_11

    .line 54
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->presetLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v6, v6, Lh8/l;->G:I

    if-nez v6, :cond_10

    const/16 v6, 0x8

    goto :goto_7

    :cond_10
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->presetTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v6, v6, Lh8/l;->G:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 56
    :cond_11
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->presetLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 57
    :goto_8
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->dndLayout:Landroid/widget/RelativeLayout;

    iget v6, p0, Lcom/mglab/scm/visual/CallItem;->m:I

    if-ne v6, v5, :cond_13

    iget-object v6, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v6, v6, Lh8/l;->d:Ljava/lang/Integer;

    .line 58
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_12

    iget-object v6, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v6, v6, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_13

    :cond_12
    const/4 v4, 0x0

    goto :goto_9

    :cond_13
    const/16 v4, 0x8

    .line 59
    :goto_9
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    invoke-static {p1}, Lf8/h;->T(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz p1, :cond_15

    .line 61
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object p1, p1, Lh8/l;->f:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    invoke-static {v4}, Lf8/h;->b0(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le p1, v4, :cond_14

    .line 62
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    const v4, 0x7f080114

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    sget-object v4, Lo8/g;->a:Lo8/g;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_a

    .line 64
    :cond_14
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    const v4, 0x7f080112

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    sget-object v4, Lo8/h;->a:Lo8/h;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 66
    :goto_a
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 67
    :cond_15
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_b
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->callImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mglab/scm/visual/CallItem;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-static {}, Lg9/s;->d()Lg9/s;

    move-result-object p1

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v4, v4, Lh8/l;->v:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lg9/s;->e(Ljava/lang/String;)Lg9/w;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v3}, Lg9/w;->c(I)Lg9/w;

    new-instance v3, Lo8/c;

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    .line 71
    invoke-static {v4, v1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v3, v5, v2, v1}, Lo8/c;-><init>(III)V

    invoke-virtual {p1, v3}, Lg9/w;->d(Lg9/b0;)Lg9/w;

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->contactImageView:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p1, v1, v0}, Lg9/w;->b(Landroid/widget/ImageView;Lg9/e;)V

    .line 73
    :goto_c
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-ne p1, v7, :cond_16

    .line 74
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameAndPhoneLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->namePhoneSimTimeLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_d

    .line 77
    :cond_16
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameAndPhoneLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->namePhoneSimTimeLL:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_d
    return-object p2
.end method

.method public c(Z)Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v2, 0x7f1100bb

    const-string v3, ": "

    invoke-static {v1, v2, v0, v3}, Landroid/support/v4/media/b;->f(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v1, v1, Lh8/l;->c:Ljava/lang/String;

    invoke-static {v1}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v2, 0x7f1100ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v1, v1, Lh8/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    iget-boolean v1, p0, Lcom/mglab/scm/visual/CallItem;->b:Z

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v5, "\n"

    if-eqz v1, :cond_5

    .line 6
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    const-string v6, ""

    if-eqz v1, :cond_2

    invoke-static {v5}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v8, 0x7f110055

    new-array v9, v4, [Ljava/lang/Object;

    .line 7
    iget-object v10, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v10, v10, Lh8/l;->f:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    invoke-static {v11}, Lf8/h;->b0(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_1

    const-string v10, "2"

    goto :goto_1

    :cond_1
    const-string v10, "1"

    :goto_1
    aput-object v10, v9, v2

    .line 8
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v6

    .line 9
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object p1, p1, Lh8/l;->h:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v5}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v6, 0x7f1100b8

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v1, v1, Lh8/l;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f11020f

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v1, v1, Lh8/l;->i:Ljava/sql/Date;

    invoke-static {p1, v1}, Lf8/g;->s(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v1, v1, Lh8/l;->i:Ljava/sql/Date;

    invoke-static {p1, v1}, Lf8/g;->m(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f110053

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object p1, p1, Lh8/l;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_5
    iget-boolean p1, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    const-string v1, "\n\n"

    if-nez p1, :cond_6

    .line 14
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v2, 0x7f110054

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f1100b4

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_6

    .line 16
    :cond_6
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f110056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v0, v0, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v0, v0, Lh8/l;->G:I

    if-nez v0, :cond_7

    .line 19
    invoke-static {p1, v5}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f1101af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 20
    :cond_7
    invoke-static {p1, v5}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f1100e7

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget v4, v4, Lh8/l;->G:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    :cond_8
    :goto_4
    invoke-static {p1, v5}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v1, v1, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const v1, 0x7f110050

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :sswitch_0
    const v1, 0x7f110049

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :sswitch_1
    const v1, 0x7f110046

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_2
    const v1, 0x7f110047

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_3
    const v1, 0x7f11004b

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_4
    const v1, 0x7f110045

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_5
    const v1, 0x7f110044

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_6
    const v1, 0x7f11004c

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_7
    const v1, 0x7f11004d

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_8
    const v1, 0x7f110048

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_9
    const v1, 0x7f110051

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_a
    const v1, 0x7f110052

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_b
    const v1, 0x7f11004a

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_c
    const v1, 0x7f11004f

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :sswitch_d
    const v1, 0x7f11004e

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_6
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_d
        -0x309 -> :sswitch_c
        -0x29a -> :sswitch_b
        -0x64 -> :sswitch_a
        -0x5a -> :sswitch_9
        -0xa -> :sswitch_8
        0x0 -> :sswitch_7
        0x1 -> :sswitch_6
        0x5 -> :sswitch_5
        0x7 -> :sswitch_4
        0xa -> :sswitch_3
        0x14 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->h:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v0, v0, Lh8/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->g:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v0, v0, Lh8/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v0, v0, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v1, v1, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    const/16 v2, 0x19

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800cc

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800d6

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 7
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800d5

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 9
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800d4

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800d3

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800d9

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 15
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800d8

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 17
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800d1

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 19
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800d0

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 21
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_8
    if-eqz v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800cf

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    .line 24
    :cond_9
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f0800ce

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 25
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_4
    return-object v0

    .line 26
    :cond_a
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->b:Z

    const v1, 0x7f08011d

    if-eqz v0, :cond_13

    .line 27
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->d:Lh8/l;

    iget-object v0, v0, Lh8/l;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eq v0, v2, :cond_12

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_d

    .line 28
    :pswitch_0
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz v0, :cond_c

    .line 29
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->l:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f08011a

    :goto_5
    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 30
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6

    .line 31
    :cond_b
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f08011c

    goto :goto_5

    .line 32
    :cond_c
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f08011b

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 33
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_6
    return-object v0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:drawable/ic_btn_speak_now"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 35
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 36
    :pswitch_2
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz v0, :cond_e

    .line 37
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->l:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f080121

    :goto_7
    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 38
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_8

    .line 39
    :cond_d
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f080123

    goto :goto_7

    .line 40
    :cond_e
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f080122

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 41
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_8
    return-object v0

    .line 42
    :pswitch_3
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f080124

    :goto_9
    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 43
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    .line 44
    :cond_f
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f080125

    goto :goto_9

    :goto_a
    return-object v0

    .line 45
    :pswitch_4
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->c:Z

    if-eqz v0, :cond_11

    .line 46
    iget-boolean v0, p0, Lcom/mglab/scm/visual/CallItem;->l:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    :goto_b
    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 47
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    .line 48
    :cond_10
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f080120

    goto :goto_b

    .line 49
    :cond_11
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    const v1, 0x7f08011e

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 50
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    return-object v0

    .line 51
    :cond_12
    :pswitch_5
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android:drawable/ic_menu_directions"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 52
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 53
    :cond_13
    :goto_d
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem;->a:Landroid/content/Context;

    sget-object v2, Ld0/a;->a:Ljava/lang/Object;

    .line 54
    invoke-static {v0, v1}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
