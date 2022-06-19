.class Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Landroid/view/View;ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;ZLandroid/view/View;ZI)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->e:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->b:Landroid/view/View;

    iput-boolean p4, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->c:Z

    iput p5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1121
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->a:Z

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f06003c

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1123
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->c:Z

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f0601ec

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f06010d

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1129
    :goto_0
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->d:I

    if-eqz v0, :cond_2

    .line 1130
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$14;->b:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method
