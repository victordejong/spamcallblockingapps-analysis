.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->setupSocialButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    return-void
.end method
