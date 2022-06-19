.class public Lcom/telguarder/features/advertisements/AdInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AdInfoActivity.java"


# static fields
.field public static adDebugInfoEnabled:Z = false


# instance fields
.field private mDescriptionText:Landroid/widget/TextView;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/AdInfoActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method private applyThemeValues()V
    .locals 3

    const v0, 0x7f0802b8

    .line 80
    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/telguarder/features/advertisements/AdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 81
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f100023

    invoke-static {p0, v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;I)V

    return-void
.end method

.method private getAdInformationDescriptionText()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font face=\"arial\"><big> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f10001c

    invoke-virtual {p0, v1}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f10001d

    invoke-virtual {p0, v2}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f10001e

    invoke-virtual {p0, v2}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f10001f

    invoke-virtual {p0, v2}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100020

    invoke-virtual {p0, v1}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100021

    invoke-virtual {p0, v1}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<br></big></font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdInformationDescriptionTitleText()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<br><font color=\"#148820\" face=\"arial\"><big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100022

    invoke-virtual {p0, v1}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</big></font><br><br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f080058

    .line 74
    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0802b8

    .line 75
    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mDescriptionText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$AdInfoActivity(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "coarselocation:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Lcom/telguarder/features/advertisements/AdvertManager;->mLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "http://www.google.com/maps/place/%s,%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 41
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/telguarder/features/advertisements/AdInfoActivity;->startActivity(Landroid/content/Intent;)V

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, ""

    .line 108
    sput-object v0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->finish()V

    .line 110
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    .line 30
    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/AdInfoActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->initViews()V

    .line 32
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->applyThemeValues()V

    .line 33
    sget-boolean p1, Lcom/telguarder/features/advertisements/AdInfoActivity;->adDebugInfoEnabled:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 34
    sget-object p1, Lcom/telguarder/features/advertisements/AdvertManager;->mLocation:Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "&#160;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "<br />"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<br />COARSE LOCATION:<br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; - &#160;<a href=\"coarselocation:\"><b>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/telguarder/features/advertisements/AdvertManager;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "</a></b>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mDescriptionText:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/bluecabin/textoo/Textoo;->config(Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/advertisements/-$$Lambda$AdInfoActivity$aIeKTUzPd5GA1srYRDneQ3G_b50;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/-$$Lambda$AdInfoActivity$aIeKTUzPd5GA1srYRDneQ3G_b50;-><init>(Lcom/telguarder/features/advertisements/AdInfoActivity;)V

    invoke-virtual {p1, v0}, Lorg/bluecabin/textoo/TextViewConfigurator;->addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lorg/bluecabin/textoo/TextViewConfigurator;->apply()Landroid/widget/TextView;

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mDescriptionText:Landroid/widget/TextView;

    sget-object v0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mDescriptionText:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/AdInfoActivity;->mDescriptionText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getAdInformationDescriptionTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->getAdInformationDescriptionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2

    const p1, 0x7f08014b

    .line 56
    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/AdInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/advertisements/AdInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/AdInfoActivity$1;-><init>(Lcom/telguarder/features/advertisements/AdInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 102
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/AdInfoActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onStop()V
    .locals 1

    const-string v0, ""

    .line 68
    sput-object v0, Lcom/telguarder/features/advertisements/AdvertManager;->mAdNetwqorkDebugFlow:Ljava/lang/String;

    .line 69
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
