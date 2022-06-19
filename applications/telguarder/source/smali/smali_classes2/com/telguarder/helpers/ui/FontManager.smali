.class public Lcom/telguarder/helpers/ui/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/helpers/ui/FontManager;


# instance fields
.field private mRobotoBold:Landroid/graphics/Typeface;

.field private mRobotoLight:Landroid/graphics/Typeface;

.field private mRobotoRegular:Landroid/graphics/Typeface;

.field private mRobotoThin:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/telguarder/helpers/ui/FontManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/telguarder/helpers/ui/FontManager;->mInstance:Lcom/telguarder/helpers/ui/FontManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/telguarder/helpers/ui/FontManager;

    invoke-direct {v0}, Lcom/telguarder/helpers/ui/FontManager;-><init>()V

    sput-object v0, Lcom/telguarder/helpers/ui/FontManager;->mInstance:Lcom/telguarder/helpers/ui/FontManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/telguarder/helpers/ui/FontManager;->mInstance:Lcom/telguarder/helpers/ui/FontManager;

    return-object v0
.end method


# virtual methods
.method public getActionBarTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/ui/FontManager;->getRegularTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public getBoldTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoBold:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Roboto-Bold.ttf"

    .line 68
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoBold:Landroid/graphics/Typeface;

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoBold:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public getLightTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoLight:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Roboto-Light.ttf"

    .line 59
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoLight:Landroid/graphics/Typeface;

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoLight:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public getRegularTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoRegular:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Roboto-Regular.ttf"

    .line 41
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoRegular:Landroid/graphics/Typeface;

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoRegular:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public getThinTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoThin:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Roboto-Thin.ttf"

    .line 50
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoThin:Landroid/graphics/Typeface;

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/telguarder/helpers/ui/FontManager;->mRobotoThin:Landroid/graphics/Typeface;

    return-object p1
.end method
