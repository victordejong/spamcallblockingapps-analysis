.class public Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;->a:I

    .line 11
    iput-object p2, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawableRes()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;->a:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/OnboardingDrawableAndTextPair;->b:Ljava/lang/String;

    return-object v0
.end method
