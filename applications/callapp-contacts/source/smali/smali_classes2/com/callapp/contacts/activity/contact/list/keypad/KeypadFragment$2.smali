.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 213
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 214
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;->a:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;Landroid/widget/ImageView;)V

    .line 215
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$2;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
