.class public Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultOnboardingViewData()Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;
    .locals 3

    .line 12
    new-instance v0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;

    const-string v1, "Default_N_Screen"

    const v2, 0x7f08068f

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
