.class public final Lcom/millennialmedia/CreativeInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private creativeId:Ljava/lang/String;

.field private demandSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/millennialmedia/CreativeInfo;->setCreativeId(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/millennialmedia/CreativeInfo;->setDemandSource(Ljava/lang/String;)V

    return-void
.end method

.method private setCreativeId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/millennialmedia/CreativeInfo;->creativeId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setDemandSource(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/millennialmedia/CreativeInfo;->demandSource:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCreativeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/CreativeInfo;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getDemandSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/CreativeInfo;->demandSource:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreativeInfo{ creativeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/CreativeInfo;->creativeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', demandSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/CreativeInfo;->demandSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
