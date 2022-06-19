.class public Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCloseText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResumeText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/rewardedad/renderer/POBSkipConfirmationInfo;->a:Ljava/lang/String;

    return-object v0
.end method
