.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$6;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 219
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$6;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 220
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$6;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->b()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;Lcom/callapp/contacts/manager/sim/SimManager$SimId;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 221
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$6;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$6;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->d(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->c(Lcom/callapp/contacts/manager/sim/SimManager$SimId;)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f0600ed

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    return-void
.end method
