.class Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->setButtonsClickable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/login/LoginButton;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;Lcom/callapp/contacts/widget/login/LoginButton;Z)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$4;->c:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    iput-object p2, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$4;->a:Lcom/callapp/contacts/widget/login/LoginButton;

    iput-boolean p3, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$4;->a:Lcom/callapp/contacts/widget/login/LoginButton;

    if-eqz v0, :cond_0

    .line 141
    iget-boolean v1, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$4;->b:Z

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/login/LoginButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method
