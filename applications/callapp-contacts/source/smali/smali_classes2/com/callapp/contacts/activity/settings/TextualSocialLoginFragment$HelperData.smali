.class final Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HelperData"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

.field private final b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Landroid/widget/TextView;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 7

    .line 512
    invoke-virtual {p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;)V
    .locals 0

    .line 504
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method

.method private constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 518
    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c:Landroid/view/View;

    .line 519
    iput-object p6, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->f:Ljava/lang/String;

    .line 520
    iput-object p5, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->e:Landroid/widget/TextView;

    .line 521
    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->d:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$1;)V
    .locals 0

    .line 504
    invoke-direct/range {p0 .. p6}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/view/View;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Ljava/lang/String;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Landroid/widget/TextView;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->e:Landroid/widget/TextView;

    return-object p0
.end method
