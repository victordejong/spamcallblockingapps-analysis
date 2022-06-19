.class public Lcom/explorestack/iab/vast/tags/l;
.super Lcom/explorestack/iab/vast/tags/r;
.source "SourceFile"


# static fields
.field static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/explorestack/iab/utils/h;

.field public final b:Lcom/explorestack/iab/utils/h;

.field public final c:Lcom/explorestack/iab/utils/h;

.field public final d:Lcom/explorestack/iab/utils/h;

.field public e:Ljava/lang/String;

.field public f:F

.field public g:F

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/explorestack/iab/vast/tags/r;-><init>()V

    .line 15
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/l;->a:Lcom/explorestack/iab/utils/h;

    .line 17
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/l;->b:Lcom/explorestack/iab/utils/h;

    .line 19
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/l;->c:Lcom/explorestack/iab/utils/h;

    .line 21
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/l;->d:Lcom/explorestack/iab/utils/h;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/explorestack/iab/vast/tags/l;->f:F

    .line 28
    iput v0, p0, Lcom/explorestack/iab/vast/tags/l;->g:F

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/l;->h:Z

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/l;->m:Z

    .line 31
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/l;->i:Z

    .line 33
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/l;->j:Z

    .line 34
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/l;->k:Z

    return-void
.end method


# virtual methods
.method protected final a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Postbanner"

    .line 42
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 48
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CloseTime"

    .line 49
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/l;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    sget-boolean v4, Lcom/explorestack/iab/vast/tags/l;->l:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 53
    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/explorestack/iab/vast/tags/l;->f:F

    goto :goto_0

    :cond_3
    const-string v4, "Duration"

    .line 55
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 56
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/l;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    sget-boolean v4, Lcom/explorestack/iab/vast/tags/l;->l:Z

    if-nez v4, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 59
    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/explorestack/iab/vast/tags/l;->g:F

    goto :goto_0

    :cond_6
    const-string v4, "ClosableView"

    .line 61
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 62
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/l;->a:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/l;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_7
    const-string v4, "Countdown"

    .line 63
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 64
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/l;->b:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/l;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_8
    const-string v4, "LoadingView"

    .line 65
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 66
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/l;->c:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/l;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "Progress"

    .line 67
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 68
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/l;->d:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/l;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto/16 :goto_0

    :cond_a
    const-string v4, "UseNativeClose"

    .line 69
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 70
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/l;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/l;->i:Z

    goto/16 :goto_0

    :cond_b
    const-string v4, "IgnoresSafeAreaLayoutGuide"

    .line 71
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 72
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/l;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/l;->m:Z

    goto/16 :goto_0

    :cond_c
    const-string v4, "ProductLink"

    .line 73
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 74
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/l;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/l;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v4, "R1"

    .line 75
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 76
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/l;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/l;->j:Z

    goto/16 :goto_0

    :cond_e
    const-string v4, "R2"

    .line 77
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 78
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/l;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/l;->k:Z

    goto/16 :goto_0

    .line 80
    :cond_f
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/l;->f(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "VastXmlTag"

    .line 83
    invoke-static {v4, v3}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 86
    :cond_10
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
