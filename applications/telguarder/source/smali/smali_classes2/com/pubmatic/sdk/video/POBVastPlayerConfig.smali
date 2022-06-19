.class public Lcom/pubmatic/sdk/video/POBVastPlayerConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method private constructor <init>(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->a(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->a:I

    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->b(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I

    move-result v0

    iput v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->b:I

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->c(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I

    move-result p2

    iput p2, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->c:I

    :cond_0
    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->d(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I

    move-result p2

    iput p2, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->d:I

    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->e(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I

    move-result p2

    iput p2, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->e:I

    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->f(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I

    move-result p2

    iput p2, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->f:I

    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->g(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)I

    move-result p2

    iput p2, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->g:I

    invoke-static {p1}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;->h(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;ZLcom/pubmatic/sdk/video/POBVastPlayerConfig$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;-><init>(Lcom/pubmatic/sdk/video/POBVastPlayerConfig$ConfigBuilder;Z)V

    return-void
.end method


# virtual methods
.method public getMaxDuration()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->b:I

    return v0
.end method

.method public getMediaUriTimeout()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->g:I

    return v0
.end method

.method public getMinDuration()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->a:I

    return v0
.end method

.method public getSkip()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->c:I

    return v0
.end method

.method public getSkipAfter()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->e:I

    return v0
.end method

.method public getSkipMin()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->d:I

    return v0
.end method

.method public getWrapperUriTimeout()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->f:I

    return v0
.end method

.method public isPlayOnMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pubmatic/sdk/video/POBVastPlayerConfig;->h:Z

    return v0
.end method
