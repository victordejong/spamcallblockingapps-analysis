.class public Lcom/android/mms/layout/LayoutManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "LayoutManager"

.field private static sInstance:Lcom/android/mms/layout/LayoutManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/layout/LayoutManager;
    .locals 2

    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;
    .locals 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/android/mms/layout/HVGALayoutParameters;

    iget-object v1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(Landroid/content/Context;I)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported display type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/android/mms/layout/HVGALayoutParameters;

    iget-object v1, p0, Lcom/android/mms/layout/LayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/android/mms/layout/HVGALayoutParameters;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    if-eqz v0, :cond_0

    const-string v0, "LayoutManager"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/mms/layout/LayoutManager;

    invoke-direct {v0, p0}, Lcom/android/mms/layout/LayoutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/layout/LayoutManager;->sInstance:Lcom/android/mms/layout/LayoutManager;

    return-void
.end method

.method private initLayoutParameters(Landroid/content/res/Configuration;)V
    .locals 1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xb

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters(I)Lcom/android/mms/layout/LayoutParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    return-void
.end method


# virtual methods
.method public getLayoutHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    return-object v0
.end method

.method public getLayoutType()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getType()I

    move-result v0

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/layout/LayoutManager;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v0}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/layout/LayoutManager;->initLayoutParameters(Landroid/content/res/Configuration;)V

    return-void
.end method
