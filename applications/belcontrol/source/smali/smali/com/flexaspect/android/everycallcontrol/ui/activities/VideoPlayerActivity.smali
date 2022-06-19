.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;
.super Lcom/kedlin/cca/ui/CCAFragmentActivity;
.source ""


# static fields
.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/VideoView;

.field public b:Z

.field public c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".videoId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->b:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->d:I

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->b:Z

    return p1
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)Landroid/widget/VideoView;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    return-object p0
.end method

.method public static synthetic C(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->H()V

    return-void
.end method

.method public static D(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 17

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.youtube.com/get_video_info?&video_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLConnection;

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x1000

    new-array v8, v8, [B

    :goto_0
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v8, v5, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-object v6, v1

    :catchall_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_1
    move-object v7, v1

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":\n response status code:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v7, :cond_3

    return-object v1

    :cond_3
    const-string v2, "&"

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    array-length v7, v3

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x2

    const-string v10, "="

    if-ge v8, v7, :cond_5

    aget-object v11, v3, v8

    invoke-virtual {v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    if-lt v11, v9, :cond_4

    aget-object v9, v10, v5

    aget-object v10, v10, v4

    invoke-static {v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :try_start_4
    const-string v3, "fmt_list"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, ","

    if-eqz v3, :cond_6

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v11, v3

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_6

    aget-object v13, v3, v12

    :try_start_5
    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v5

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    sget-object v14, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->f:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse format "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const-string v1, "url_encoded_fmt_stream_map"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v1

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_9

    aget-object v11, v1, v8

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    array-length v13, v11

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_8

    aget-object v15, v11, v14

    invoke-virtual {v15, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v4, v15

    if-lt v4, v9, :cond_7

    aget-object v4, v15, v5

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-interface {v12, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    const/16 v16, 0x1

    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/16 v16, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "url"

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "&signature="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "sig"

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    if-eqz p1, :cond_b

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->E(I)I

    move-result v2

    if-ne v1, v2, :cond_a

    goto :goto_9

    :cond_a
    move v1, v2

    goto :goto_8

    :cond_b
    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_c

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_6
    invoke-static {v1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    :catchall_3
    :goto_a
    return-object v1

    :catchall_4
    move-exception v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->f:Ljava/lang/String;

    const-string v2, "OOPS"

    :goto_b
    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1

    :catchall_5
    move-exception v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->f:Ljava/lang/String;

    const-string v2, "Error"

    goto :goto_b
.end method

.method public static E(I)I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x5

    move v2, p0

    :goto_0
    if-ltz v1, :cond_1

    aget v3, v0, v1

    if-ne p0, v3, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v2

    :array_0
    .array-data 4
        0xd
        0x11
        0x12
        0x16
        0x24
        0x2b
    .end array-data
.end method

.method public static G(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->b:Z

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$5;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "load"

    invoke-static {v0, p0, v1, v2}, Lcom/kedlin/cca/core/service/BackgroundWorker;->g(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method

.method public final H()V
    .locals 4

    const v0, 0x7f0a05dd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1104fc

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a04ca

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-static {p0}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->c(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->b(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->b(Ljava/lang/Object;)V

    const p1, 0x7f0d0192

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a05dd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f0a01db

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$a;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a06b7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$c;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$d;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-static {}, Lk91;->a()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->F()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->d:I

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_1
    return-void
.end method

.method public on_load_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 0

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->c:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->c:I

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->F()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->H()V

    return-void
.end method

.method public on_load_success(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/VideoPlayerActivity;->a:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method
