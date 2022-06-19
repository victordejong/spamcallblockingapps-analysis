.class public Lcom/mglab/scm/visual/CallItem_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/CallItem;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/CallItem;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/CallItem_ViewBinding;->b:Lcom/mglab/scm/visual/CallItem;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090398

    const-string v2, "field \'nameTextView\'"

    .line 4
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    const v0, 0x7f090399

    const-string v1, "field \'numberTextView\'"

    .line 7
    const-class v2, Landroid/widget/TextView;

    .line 8
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    const v0, 0x7f0901a7

    const-string v1, "field \'simImageView\'"

    .line 11
    const-class v2, Landroid/widget/ImageView;

    .line 12
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 13
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    const v0, 0x7f09019d

    const-string v1, "field \'callImageView\'"

    .line 15
    const-class v2, Landroid/widget/ImageView;

    .line 16
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->callImageView:Landroid/widget/ImageView;

    const v0, 0x7f09019e

    const-string v1, "field \'contactImageView\'"

    .line 19
    const-class v2, Landroid/widget/ImageView;

    .line 20
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 21
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->contactImageView:Landroid/widget/ImageView;

    const v0, 0x7f090395

    const-string v1, "field \'durationTextView\'"

    .line 23
    const-class v2, Landroid/widget/TextView;

    .line 24
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->durationTextView:Landroid/widget/TextView;

    const v0, 0x7f090394

    const-string v1, "field \'callTimeTextView\'"

    .line 27
    const-class v2, Landroid/widget/TextView;

    .line 28
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 29
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->callTimeTextView:Landroid/widget/TextView;

    const v0, 0x7f0902a9

    const-string v1, "field \'presetLayout\'"

    .line 31
    const-class v2, Landroid/widget/RelativeLayout;

    .line 32
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->presetLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902af

    const-string v1, "field \'presetTextView\'"

    .line 35
    const-class v2, Landroid/widget/TextView;

    .line 36
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 37
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->presetTextView:Landroid/widget/TextView;

    const v0, 0x7f090128

    const-string v1, "field \'dndLayout\'"

    .line 39
    const-class v2, Landroid/widget/RelativeLayout;

    .line 40
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 41
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->dndLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900eb

    const-string v1, "field \'contactLayout\'"

    .line 43
    const-class v2, Landroid/widget/LinearLayout;

    .line 44
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 45
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->contactLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e5

    const-string v1, "field \'mainLL\'"

    .line 47
    const-class v2, Landroid/widget/LinearLayout;

    .line 48
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 49
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->mainLL:Landroid/widget/LinearLayout;

    const v0, 0x7f090248

    const-string v1, "field \'nameAndPhoneLL\'"

    .line 51
    const-class v2, Landroid/widget/LinearLayout;

    .line 52
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 53
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->nameAndPhoneLL:Landroid/widget/LinearLayout;

    const v0, 0x7f0902f8

    const-string v1, "field \'simAndTimeLL\'"

    .line 55
    const-class v2, Landroid/widget/LinearLayout;

    .line 56
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 57
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->simAndTimeLL:Landroid/widget/LinearLayout;

    const v0, 0x7f09024a

    const-string v1, "field \'namePhoneSimTimeLL\'"

    .line 59
    const-class v2, Landroid/widget/LinearLayout;

    .line 60
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 61
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/CallItem;->namePhoneSimTimeLL:Landroid/widget/LinearLayout;

    const v0, 0x7f0900cf

    const-string v1, "field \'checkBox\'"

    .line 63
    const-class v2, Landroid/widget/CheckBox;

    .line 64
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 65
    invoke-static {p2, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 66
    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p1, Lcom/mglab/scm/visual/CallItem;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/CallItem_ViewBinding;->b:Lcom/mglab/scm/visual/CallItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/CallItem_ViewBinding;->b:Lcom/mglab/scm/visual/CallItem;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->nameTextView:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->numberTextView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->simImageView:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->callImageView:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->contactImageView:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->durationTextView:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->callTimeTextView:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->presetLayout:Landroid/widget/RelativeLayout;

    .line 11
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->presetTextView:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->dndLayout:Landroid/widget/RelativeLayout;

    .line 13
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->contactLayout:Landroid/widget/LinearLayout;

    .line 14
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->mainLL:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->nameAndPhoneLL:Landroid/widget/LinearLayout;

    .line 16
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->simAndTimeLL:Landroid/widget/LinearLayout;

    .line 17
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->namePhoneSimTimeLL:Landroid/widget/LinearLayout;

    .line 18
    iput-object v1, v0, Lcom/mglab/scm/visual/CallItem;->checkBox:Landroid/widget/CheckBox;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
