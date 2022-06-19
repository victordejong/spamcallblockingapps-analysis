.class public Lcom/mglab/scm/visual/BWLItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lh8/c;

.field public c:Lh8/w;

.field public checkBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public contactImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public d:Z

.field public phoneDetailsTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public phoneTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh8/c;Lh8/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    .line 3
    iput-object p2, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/mglab/scm/visual/BWLItem;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0029

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->a:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->checkBox:Landroid/widget/CheckBox;

    invoke-static {p1}, Lf8/h;->b(Landroid/content/Context;)Z

    move-result p1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/mglab/scm/visual/BWLItem;->d:Z

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->phoneTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v1, :cond_2

    iget v1, v1, Lh8/c;->b:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget v1, v1, Lh8/w;->b:I

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->phoneTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lh8/c;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object v1, v1, Lh8/w;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->phoneDetailsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lh8/c;->c:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object v1, v1, Lh8/w;->c:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lh8/c;->c:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object p1, p1, Lh8/w;->c:Ljava/lang/String;

    :goto_4
    invoke-static {p1}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->phoneTextView:Landroid/widget/TextView;

    const v1, 0x7f1100ee

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz p1, :cond_7

    iget-object v1, p1, Lh8/c;->d:Ljava/lang/String;

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object v1, v1, Lh8/w;->d:Ljava/lang/String;

    :goto_5
    if-eqz v1, :cond_b

    if-eqz p1, :cond_8

    iget-object p1, p1, Lh8/c;->d:Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object p1, p1, Lh8/w;->d:Ljava/lang/String;

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_8

    .line 12
    :cond_9
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->phoneTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lh8/c;->d:Ljava/lang/String;

    goto :goto_7

    :cond_a
    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object v1, v1, Lh8/w;->d:Ljava/lang/String;

    :goto_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->phoneDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 14
    :cond_b
    :goto_8
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->phoneDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_9
    invoke-static {}, Lg9/s;->d()Lg9/s;

    move-result-object p1

    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lh8/c;->e:Ljava/lang/String;

    goto :goto_a

    :cond_c
    iget-object v1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object v1, v1, Lh8/w;->e:Ljava/lang/String;

    :goto_a
    invoke-virtual {p1, v1}, Lg9/s;->e(Ljava/lang/String;)Lg9/w;

    move-result-object p1

    const v1, 0x7f0800e0

    .line 16
    invoke-virtual {p1, v1}, Lg9/w;->c(I)Lg9/w;

    new-instance v2, Lo8/c;

    const/4 v3, 0x1

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/mglab/scm/visual/BWLItem;->a:Landroid/content/Context;

    const v6, 0x7f060059

    .line 17
    invoke-static {v5, v6}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lo8/c;-><init>(III)V

    invoke-virtual {p1, v2}, Lg9/w;->d(Lg9/b0;)Lg9/w;

    iget-object v2, p0, Lcom/mglab/scm/visual/BWLItem;->contactImageView:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {p1, v2, v0}, Lg9/w;->b(Landroid/widget/ImageView;Lg9/e;)V

    .line 19
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    const v2, 0x7f0800f8

    const/4 v3, -0x1

    if-eqz p1, :cond_d

    .line 20
    iget p1, p1, Lh8/c;->f:I

    if-ne p1, v3, :cond_d

    .line 21
    invoke-static {}, Lg9/s;->d()Lg9/s;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v4, Lg9/w;

    invoke-direct {v4, p1, v0, v2}, Lg9/w;-><init>(Lg9/s;Landroid/net/Uri;I)V

    .line 23
    invoke-virtual {v4, v1}, Lg9/w;->c(I)Lg9/w;

    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->contactImageView:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {v4, p1, v0}, Lg9/w;->b(Landroid/widget/ImageView;Lg9/e;)V

    .line 25
    :cond_d
    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    if-eqz p1, :cond_e

    .line 26
    iget p1, p1, Lh8/w;->f:I

    if-ne p1, v3, :cond_e

    .line 27
    invoke-static {}, Lg9/s;->d()Lg9/s;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v3, Lg9/w;

    invoke-direct {v3, p1, v0, v2}, Lg9/w;-><init>(Lg9/s;Landroid/net/Uri;I)V

    .line 29
    invoke-virtual {v3, v1}, Lg9/w;->c(I)Lg9/w;

    iget-object p1, p0, Lcom/mglab/scm/visual/BWLItem;->contactImageView:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v3, p1, v0}, Lg9/w;->b(Landroid/widget/ImageView;Lg9/e;)V

    :cond_e
    return-object p2
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v0, :cond_0

    iget v0, v0, Lh8/c;->b:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget v0, v0, Lh8/w;->b:I

    :goto_0
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lh8/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    iget-object v0, v0, Lh8/w;->c:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/BWLItem;->b:Lh8/c;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, v0, Lh8/c;->f:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/mglab/scm/visual/BWLItem;->c:Lh8/w;

    if-eqz v0, :cond_3

    .line 4
    iget v0, v0, Lh8/w;->f:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    return v3
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mglab/scm/visual/BWLItem;->d:Z

    iget-object v0, p0, Lcom/mglab/scm/visual/BWLItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
