.class Lcom/callapp/contacts/widget/login/SocialLoginButton$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/login/SocialLoginButton;->setButtonData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/login/SocialLoginButton;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/login/SocialLoginButton;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/widget/login/SocialLoginButton$1;->a:Lcom/callapp/contacts/widget/login/SocialLoginButton;

    sget-object v0, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;->SOCIAL:Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/login/SocialLoginButton;->a(Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;)V

    return-void
.end method
