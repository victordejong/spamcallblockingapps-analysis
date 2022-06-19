.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 309
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$5;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object p1

    .line 1143
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->e:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p4

    const p5, 0x7f060244

    invoke-static {p4, p5}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p4

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1144
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->f:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p4

    invoke-static {p4, p5}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p4

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1145
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    if-nez p2, :cond_0

    .line 1146
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p4

    invoke-static {p4, p5}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p4

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, p5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1148
    :cond_0
    iget-object p2, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    if-eqz p2, :cond_1

    .line 1149
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
