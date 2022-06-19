.class public Lcom/telguarder/features/phoneEventHistory/SpamCallsActivity;
.super Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;
.source "SpamCallsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpamCallsActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;-><init>()V

    return-void
.end method

.method public static openSpamCalls(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 3

    .line 21
    const-class v0, Lcom/telguarder/features/phoneEventHistory/SpamCallsActivity;

    sget-object v1, Lcom/telguarder/helpers/ui/UiHelper$PageType;->SPAMCALLS:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->openMainFeatureActivity(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/Class;Lcom/telguarder/helpers/ui/UiHelper$PageType;Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f100176

    .line 26
    iput v0, p0, Lcom/telguarder/features/phoneEventHistory/SpamCallsActivity;->pageTitle:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/telguarder/features/phoneEventHistory/SpamCallsActivity;->spamFilter:Z

    .line 28
    invoke-super {p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
