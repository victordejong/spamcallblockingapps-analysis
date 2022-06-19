.class public Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;
.super Lcom/android/mms/dom/smil/SmilElementImpl;
.source ""

# interfaces
.implements Lorg/w3c/dom/smil/SMILRootLayoutElement;


# static fields
.field private static final BACKGROUND_COLOR_ATTRIBUTE_NAME:Ljava/lang/String; = "backgroundColor"

.field private static final HEIGHT_ATTRIBUTE_NAME:Ljava/lang/String; = "height"

.field private static final TITLE_ATTRIBUTE_NAME:Ljava/lang/String; = "title"

.field private static final WIDTH_ATTRIBUTE_NAME:Ljava/lang/String; = "width"


# direct methods
.method public constructor <init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilElementImpl;-><init>(Lcom/android/mms/dom/smil/SmilDocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method private parseAbsoluteLength(Ljava/lang/String;)I
    .locals 3

    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const-string v0, "height"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->parseAbsoluteLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const-string v0, "width"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilRootLayoutElementImpl;->parseAbsoluteLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "backgroundColor"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "px"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "px"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
