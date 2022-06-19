.class Lcom/mglab/scm/visual/ContactItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/i;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public checkBox:Landroid/widget/CheckBox;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public contactImageView:Landroid/widget/ImageView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:Z

.field public nameTextView:Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public numberTextView:Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/ContactItem;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mglab/scm/visual/ContactItem;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/mglab/scm/visual/ContactItem;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/mglab/scm/visual/ContactItem;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0c0032

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mglab/scm/visual/ContactItem;->a:Landroid/content/Context;

    .line 4
    iget-object p1, p0, Lcom/mglab/scm/visual/ContactItem;->nameTextView:Landroid/widget/TextView;

    .line 5
    iget-object v1, p0, Lcom/mglab/scm/visual/ContactItem;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mglab/scm/visual/ContactItem;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mglab/scm/visual/ContactItem;->b:Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/mglab/scm/visual/ContactItem;->numberTextView:Landroid/widget/TextView;

    .line 8
    iget-object v1, p0, Lcom/mglab/scm/visual/ContactItem;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/mglab/scm/visual/ContactItem;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/mglab/scm/visual/ContactItem;->numberTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mglab/scm/visual/ContactItem;->numberTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/mglab/scm/visual/ContactItem;->checkBox:Landroid/widget/CheckBox;

    .line 15
    iget-boolean v1, p0, Lcom/mglab/scm/visual/ContactItem;->e:Z

    .line 16
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 17
    invoke-static {}, Lg9/s;->d()Lg9/s;

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/mglab/scm/visual/ContactItem;->d:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v1}, Lg9/s;->e(Ljava/lang/String;)Lg9/w;

    move-result-object p1

    const v1, 0x7f0800e0

    .line 20
    invoke-virtual {p1, v1}, Lg9/w;->c(I)Lg9/w;

    new-instance v1, Lo8/c;

    const/4 v2, 0x1

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/mglab/scm/visual/ContactItem;->a:Landroid/content/Context;

    const v5, 0x7f060059

    .line 21
    invoke-static {v4, v5}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lo8/c;-><init>(III)V

    invoke-virtual {p1, v1}, Lg9/w;->d(Lg9/b0;)Lg9/w;

    iget-object v1, p0, Lcom/mglab/scm/visual/ContactItem;->contactImageView:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p1, v1, v0}, Lg9/w;->b(Landroid/widget/ImageView;Lg9/e;)V

    return-object p2
.end method
