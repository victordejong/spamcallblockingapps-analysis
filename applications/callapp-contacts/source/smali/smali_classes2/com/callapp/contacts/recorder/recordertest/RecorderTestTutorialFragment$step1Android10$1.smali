.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    iput-boolean p2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 129
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->d:Landroid/widget/ImageView;

    const v3, 0x7f08005f

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;IIZ)V

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->g:Landroid/view/View;

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->p:Landroid/widget/TextView;

    const v1, 0x7f120037

    .line 132
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f060088

    .line 133
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->r:Landroid/widget/TextView;

    const v2, 0x7f120588

    .line 136
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0601ec

    .line 137
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->t:Landroid/widget/TextView;

    const-string v3, "binding.step2Text"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f120038

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->g:Landroid/view/View;

    const-string v3, "binding.divider"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->a:Landroid/widget/Button;

    const v4, 0x7f120097

    .line 143
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 145
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->c:Landroid/widget/TextView;

    const v1, 0x7f120292

    .line 152
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$2;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->b:Z

    const-string v1, "binding.accessibilityPermissionContainer"

    const/16 v2, 0x8

    const-string v4, "binding.step2Container"

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->r:Landroid/widget/TextView;

    const v5, 0x7f06010f

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->e:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->s:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->o:Landroid/widget/LinearLayout;

    const-string v5, "binding.step1Container"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->s:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->f:Landroid/widget/ImageView;

    const-string v2, "binding.arrowToggle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 172
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->e:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->q:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
