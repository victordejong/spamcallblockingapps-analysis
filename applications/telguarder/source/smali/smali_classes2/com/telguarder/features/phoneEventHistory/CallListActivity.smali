.class public Lcom/telguarder/features/phoneEventHistory/CallListActivity;
.super Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;
.source "CallListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallListActivity"


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

.method public static openCallList(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 3

    .line 21
    const-class v0, Lcom/telguarder/features/phoneEventHistory/CallListActivity;

    sget-object v1, Lcom/telguarder/helpers/ui/UiHelper$PageType;->CALLLIST:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->openMainFeatureActivity(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/Class;Lcom/telguarder/helpers/ui/UiHelper$PageType;Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f1000dd

    .line 26
    iput v0, p0, Lcom/telguarder/features/phoneEventHistory/CallListActivity;->pageTitle:I

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/telguarder/features/phoneEventHistory/CallListActivity;->spamFilter:Z

    .line 28
    invoke-super {p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
