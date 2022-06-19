.class Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;
.super Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/verizonnativecontroller/NativeTextComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent$Factory;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/widget/TextView;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a:Lcom/verizon/ads/Logger;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 94
    iput-object p5, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Lcom/verizon/ads/Logger;
    .locals 1

    .line 33
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a:Lcom/verizon/ads/Logger;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 2728
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Must be on the UI thread to get the view"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 160
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Context is null"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 164
    :cond_1
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->prepareView(Landroid/view/View;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 166
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a:Lcom/verizon/ads/Logger;

    invoke-virtual {p1}, Lcom/verizon/ads/ErrorInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method public isDescendantOf(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public prepareView(Landroid/view/View;)Lcom/verizon/ads/ErrorInfo;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 102
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->b:Ljava/lang/String;

    const-string v2, "View already exists for component"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 105
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 106
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->b:Ljava/lang/String;

    const-string v2, "View is not an instance of TextView"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 1728
    :cond_1
    invoke-static {}, Lcom/verizon/ads/utils/ThreadUtils;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->b:Ljava/lang/String;

    const-string v2, "Must be on the UI thread to prepare the view"

    invoke-direct {p1, v0, v2, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p1

    .line 113
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->b(Landroid/view/View;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public queueFilesForDownload(Lcom/verizon/ads/support/FileStorageCache;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    .line 133
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing text component"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 136
    invoke-static {v0}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->release()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
