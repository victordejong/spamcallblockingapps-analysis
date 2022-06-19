.class public Lcom/explorestack/iab/mraid/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/h$b;,
        Lcom/explorestack/iab/mraid/h$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "h"

.field static final synthetic g:Z = true


# instance fields
.field final b:Lcom/explorestack/iab/mraid/MraidWebView;

.field c:Z

.field d:Z

.field e:Z

.field f:Lcom/explorestack/iab/mraid/b;

.field private final h:Lcom/explorestack/iab/mraid/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/h$a;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/h;->e:Z

    .line 68
    iput-object p2, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    .line 69
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/h;->d:Z

    .line 70
    new-instance p2, Lcom/explorestack/iab/mraid/MraidWebView;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/mraid/MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 71
    new-instance p1, Lcom/explorestack/iab/mraid/h$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/explorestack/iab/mraid/h$b;-><init>(Lcom/explorestack/iab/mraid/h;Lcom/explorestack/iab/mraid/h$1;)V

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/mraid/MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 72
    new-instance p1, Lcom/explorestack/iab/mraid/h$1;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/mraid/h$1;-><init>(Lcom/explorestack/iab/mraid/h;)V

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/mraid/MraidWebView;->setListener(Lcom/explorestack/iab/mraid/MraidWebView$b;)V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/mraid/h;Ljava/lang/String;)V
    .locals 7

    .line 6247
    sget-object v0, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleJsCommand "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6249
    :try_start_0
    invoke-static {p1}, Lcom/explorestack/iab/mraid/f;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "command"

    .line 6253
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p1, "handleJsCommand: not found"

    .line 6255
    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6267
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "useCustomClose"

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "setOrientationProperties"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "resize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "noFill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v2, "loaded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v2, "expand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v2, "playVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "url"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 6326
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/h$a;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    const-string v0, "allowOrientationChange"

    .line 6316
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "forceOrientation"

    .line 6319
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "portrait"

    const-string v2, "landscape"

    const-string v4, "none"

    .line 7027
    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7028
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v6, :cond_3

    move v3, p1

    .line 6320
    :cond_3
    new-instance p1, Lcom/explorestack/iab/mraid/b;

    invoke-direct {p1, v0, v3}, Lcom/explorestack/iab/mraid/b;-><init>(ZI)V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/h;->f:Lcom/explorestack/iab/mraid/b;

    .line 6322
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/h$a;->a(Lcom/explorestack/iab/mraid/b;)V

    goto/16 :goto_3

    .line 6307
    :pswitch_2
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 6308
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/h;->d:Z

    if-eq v0, p1, :cond_7

    .line 6309
    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/h;->d:Z

    .line 6310
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/h$a;->a(Z)V

    goto/16 :goto_3

    .line 6303
    :pswitch_3
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/h$a;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6291
    :pswitch_4
    new-instance v0, Lcom/explorestack/iab/mraid/d;

    invoke-direct {v0}, Lcom/explorestack/iab/mraid/d;-><init>()V

    const-string v1, "width"

    .line 6292
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/h;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/mraid/d;->a:I

    const-string v1, "height"

    .line 6293
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/h;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/mraid/d;->b:I

    const-string v1, "offsetX"

    .line 6294
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/h;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/mraid/d;->c:I

    const-string v1, "offsetY"

    .line 6295
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/h;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/mraid/d;->d:I

    const-string v1, "allowOffscreen"

    .line 6296
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/explorestack/iab/mraid/d;->f:Z

    const-string v1, "customClosePosition"

    .line 6298
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/j;->fromJsString(Ljava/lang/String;)Lcom/explorestack/iab/mraid/j;

    move-result-object p1

    iput-object p1, v0, Lcom/explorestack/iab/mraid/d;->e:Lcom/explorestack/iab/mraid/j;

    .line 6299
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {p1, v0}, Lcom/explorestack/iab/mraid/h$a;->a(Lcom/explorestack/iab/mraid/d;)V

    goto :goto_3

    .line 6281
    :pswitch_5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "url is null or empty"

    .line 6283
    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 6285
    :cond_4
    sget-boolean v0, Lcom/explorestack/iab/mraid/h;->g:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6286
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/h;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 6277
    :pswitch_6
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {p1}, Lcom/explorestack/iab/mraid/h$a;->b()V

    goto :goto_3

    .line 6273
    :pswitch_7
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {p1}, Lcom/explorestack/iab/mraid/h$a;->a()V

    goto :goto_3

    .line 6269
    :pswitch_8
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {p1, v4}, Lcom/explorestack/iab/mraid/h$a;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 6260
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    const-string p1, "mraid.nativeCallComplete();"

    .line 7174
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_8
        -0x4cd72166 -> :sswitch_7
        -0x416acffb -> :sswitch_6
        -0x3e0d511c -> :sswitch_5
        -0x37b2634c -> :sswitch_4
        0x34264a -> :sswitch_3
        0x5a5ddf8 -> :sswitch_2
        0x7f3dfe1 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/explorestack/iab/mraid/h;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/h;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/explorestack/iab/mraid/h;)Lcom/explorestack/iab/mraid/h$a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    return-object p0
.end method

.method static synthetic b(Lcom/explorestack/iab/mraid/h;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 4096
    iget-object v0, v0, Lcom/explorestack/iab/mraid/MraidWebView;->a:Lcom/explorestack/iab/mraid/k;

    .line 5028
    iget-object v0, v0, Lcom/explorestack/iab/mraid/k;->a:Lcom/explorestack/iab/mraid/k$a;

    .line 5039
    iget-boolean v0, v0, Lcom/explorestack/iab/mraid/k$a;->a:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h;->h:Lcom/explorestack/iab/mraid/h$a;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/h$a;->b(Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 5100
    iget-object p1, p1, Lcom/explorestack/iab/mraid/MraidWebView;->a:Lcom/explorestack/iab/mraid/k;

    .line 6024
    iget-object p1, p1, Lcom/explorestack/iab/mraid/k;->a:Lcom/explorestack/iab/mraid/k$a;

    const/4 v0, 0x0

    .line 6035
    iput-boolean v0, p1, Lcom/explorestack/iab/mraid/k$a;->a:Z

    return-void

    .line 241
    :cond_0
    sget-object p1, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    const-string v0, "Can\'t open url because webView wasn\'t clicked"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v1, 0xa

    .line 336
    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/explorestack/iab/mraid/h;)Z
    .locals 1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/h;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/explorestack/iab/mraid/h;)Z
    .locals 1

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/h;->e:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 4095
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 224
    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/view/View;)V

    .line 225
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/a;)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/explorestack/iab/mraid/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/a;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {}, Lcom/explorestack/iab/mraid/a;->c()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {}, Lcom/explorestack/iab/mraid/a;->d()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {}, Lcom/explorestack/iab/mraid/a;->e()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/c;)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.setPlacementType(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/c;->toJsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/e;)V
    .locals 4

    .line 1082
    iget-object v0, p1, Lcom/explorestack/iab/mraid/e;->b:Landroid/graphics/Rect;

    .line 1099
    iget-object v1, p1, Lcom/explorestack/iab/mraid/e;->d:Landroid/graphics/Rect;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mraid.setScreenSize("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");mraid.setMaxSize("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");mraid.setCurrentPosition("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    iget-object v0, p1, Lcom/explorestack/iab/mraid/e;->f:Landroid/graphics/Rect;

    .line 133
    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");mraid.setDefaultPosition("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    iget-object v0, p1, Lcom/explorestack/iab/mraid/e;->h:Landroid/graphics/Rect;

    .line 135
    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");mraid.fireSizeChangeEvent("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    iget-object p1, p1, Lcom/explorestack/iab/mraid/e;->f:Landroid/graphics/Rect;

    .line 137
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->b(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/g;)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.fireStateChangeEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/g;->toJsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 4

    .line 3095
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 3192
    iget-boolean v1, v0, Lcom/explorestack/iab/mraid/MraidWebView;->c:Z

    if-eqz v1, :cond_0

    .line 196
    sget-object p1, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    const-string v0, "can\'t evaluating js: WebView is destroyed"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 199
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    sget-object p1, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    const-string v0, "can\'t evaluating js: js is empty"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 205
    :try_start_0
    sget-object v1, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    const-string v2, "evaluating js: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/explorestack/iab/mraid/h$2;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/mraid/h$2;-><init>(Lcom/explorestack/iab/mraid/h;)V

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/mraid/MraidWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 214
    sget-object v2, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/explorestack/iab/mraid/MraidLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_2
    sget-object v1, Lcom/explorestack/iab/mraid/h;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loading url: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "javascript:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mraid.fireViewableChangeEvent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void
.end method
