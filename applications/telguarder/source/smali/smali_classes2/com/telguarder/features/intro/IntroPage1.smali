.class public Lcom/telguarder/features/intro/IntroPage1;
.super Landroidx/fragment/app/Fragment;
.source "IntroPage1.java"


# instance fields
.field private mPrivacyUrl:Ljava/lang/String;

.field private mTermsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/intro/IntroPage1;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/telguarder/features/intro/IntroPage1;->mTermsUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/intro/IntroPage1;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/telguarder/features/intro/IntroPage1;->mPrivacyUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/intro/IntroPage1;)Ljava/util/Map;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/telguarder/features/intro/IntroPage1;->getCustomHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getCustomHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-DeviceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private preloadWebView(Ljava/lang/String;)V
    .locals 2

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/telguarder/features/intro/IntroPage1$2;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/intro/IntroPage1$2;-><init>(Lcom/telguarder/features/intro/IntroPage1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0b0052

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v1, "https://api.advista.no/docs/%s/terms_and_conditions"

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/telguarder/features/intro/IntroPage1;->mTermsUrl:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "https://api.advista.no/docs/%s/privacy_policy"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/intro/IntroPage1;->mPrivacyUrl:Ljava/lang/String;

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "<b><font color=\"#ffffff\" face=\"arial\">"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f100030

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</font></b> - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v0, 0x7f1001a5

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    const p3, 0x7f0802da

    .line 56
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f1001a3

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "<termlink>"

    const-string v0, "<br><a href=\"terms:\"><b>"

    .line 59
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "</termlink>"

    const-string v0, "</a></b>"

    .line 60
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "<privacylink>"

    const-string v1, "<a href=\"privacy:\"><b>"

    .line 61
    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "</privacylink>"

    .line 62
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0802d8

    .line 63
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 64
    invoke-static {p2}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {p3}, Lorg/bluecabin/textoo/Textoo;->config(Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p2

    new-instance p3, Lcom/telguarder/features/intro/IntroPage1$1;

    invoke-direct {p3, p0}, Lcom/telguarder/features/intro/IntroPage1$1;-><init>(Lcom/telguarder/features/intro/IntroPage1;)V

    invoke-virtual {p2, p3}, Lorg/bluecabin/textoo/TextViewConfigurator;->addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Lorg/bluecabin/textoo/TextViewConfigurator;->apply()Landroid/widget/TextView;

    .line 81
    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/telguarder/features/intro/IntroActivity;

    iget p2, p2, Lcom/telguarder/features/intro/IntroActivity;->mBottomPaddingOffset:I

    if-lez p2, :cond_0

    const p2, 0x7f080086

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 83
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/telguarder/features/intro/IntroPage1;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/intro/IntroActivity;

    iget v3, v3, Lcom/telguarder/features/intro/IntroActivity;->mBottomPaddingOffset:I

    add-int/2addr v2, v3

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/telguarder/features/intro/IntroPage1;->mTermsUrl:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/telguarder/features/intro/IntroPage1;->preloadWebView(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/telguarder/features/intro/IntroPage1;->mPrivacyUrl:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/telguarder/features/intro/IntroPage1;->preloadWebView(Ljava/lang/String;)V

    return-object p1
.end method
