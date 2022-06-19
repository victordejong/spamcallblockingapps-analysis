.class public final Lcom/bytedance/sdk/openadsdk/TTAdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/bytedance/sdk/adnet/face/IHttpStack;

.field private l:[Ljava/lang/String;

.field private m:Z

.field private n:I

.field private o:I

.field private p:Lcom/bytedance/sdk/openadsdk/TTSecAbs;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    .line 19
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    .line 21
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:Z

    .line 26
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:Z

    .line 27
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:I

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 170
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 172
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getCoppa()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:I

    return v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getGDPR()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:I

    return v0
.end method

.method public final getHttpStack()Lcom/bytedance/sdk/adnet/face/IHttpStack;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    return-object v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeedClearTaskReset()[Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public final getTTSecAbs()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    return-object v0
.end method

.method public final getTitleBarTheme()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    return v0
.end method

.method public final isAllowShowNotify()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    return v0
.end method

.method public final isAsyncInit()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:Z

    return v0
.end method

.method public final isDebug()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    return v0
.end method

.method public final isPaid()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    return v0
.end method

.method public final isSupportMultiProcess()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:Z

    return v0
.end method

.method public final isUseTextureView()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    return v0
.end method

.method public final setAllowShowNotify(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->g:Z

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public final setAsyncInit(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->m:Z

    return-void
.end method

.method public final setCoppa(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->n:I

    return-void
.end method

.method public final setData(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->h:Z

    return-void
.end method

.method public final setGDPR(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->o:I

    return-void
.end method

.method public final setHttpStack(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->k:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public final varargs setNeedClearTaskReset([Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->l:[Ljava/lang/String;

    return-void
.end method

.method public final setPaid(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->c:Z

    return-void
.end method

.method public final setSupportMultiProcess(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->j:Z

    return-void
.end method

.method public final setTTSecAbs(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->p:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    return-void
.end method

.method public final setTitleBarTheme(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->f:I

    return-void
.end method

.method public final setUseTextureView(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->i:Z

    return-void
.end method
