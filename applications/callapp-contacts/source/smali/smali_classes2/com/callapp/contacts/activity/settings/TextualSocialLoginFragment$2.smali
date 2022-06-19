.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
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

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$2;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 185
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$2;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    return-void
.end method
