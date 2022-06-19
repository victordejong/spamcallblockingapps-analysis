.class public Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;->a:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;->b:I

    return-void
.end method


# virtual methods
.method public getScreenBackground()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;->b:I

    return v0
.end method

.method public getScreenPrefixName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingViewData;->a:Ljava/lang/String;

    return-object v0
.end method
