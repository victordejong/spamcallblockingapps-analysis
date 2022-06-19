.class public Lcom/callapp/contacts/activity/EditUserProfileActivity;
.super Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/UserProfileManager$UserProfileEvents;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# static fields
.field private static final BUCKET_NAME:Ljava/lang/String; = "callapp-profile-pictures"

.field private static changeableFields:[Lcom/callapp/contacts/model/contact/ContactField;


# instance fields
.field private final fieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private isWaitingForS3Upload:Z

.field private phoneAuthCallBack:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

.field private randomCompress:Ljava/io/File;

.field private randomFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 95
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->userDefinition:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->changeableFields:[Lcom/callapp/contacts/model/contact/ContactField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;-><init>()V

    .line 105
    new-instance v0, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    sget-object v1, Lcom/callapp/contacts/activity/EditUserProfileActivity;->changeableFields:[Lcom/callapp/contacts/model/contact/ContactField;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->fieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    .line 108
    new-instance v0, Lcom/callapp/contacts/activity/EditUserProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$1;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->phoneAuthCallBack:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->isWaitingForS3Upload:Z

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->startContactDetailsActivity(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->showMandatoryVerifyNumberPopup()V

    return-void
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->openAddUserDefinitionDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresenterManager;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresenterManager;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->notifyOnNewContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/callapp/contacts/activity/EditUserProfileActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->isWaitingForS3Upload:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Ljava/io/File;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->randomFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Ljava/io/File;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getRandomCompressFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Ljava/io/File;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->randomCompress:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->showErrorDialog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->fieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/EditUserProfileActivity;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->showOptionalVerifyNumberPopup(Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method private getRandomCompressFile()Ljava/io/File;
    .locals 3

    .line 767
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v1

    const-string v2, "RANDOM_COMPRESS"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->randomCompress:Ljava/io/File;

    return-object v0
.end method

.method private getRandomFile()Ljava/io/File;
    .locals 3

    const/16 v0, 0xc

    const/4 v1, 0x1

    .line 760
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->a(IZ)Ljava/lang/String;

    move-result-object v0

    .line 761
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->randomFile:Ljava/io/File;

    return-object v1
.end method

.method private hideUnusedViews()V
    .locals 2

    const v0, 0x7f0a0953

    .line 444
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0145

    .line 445
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private notifyOnNewContact(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPastChangedFields()Ljava/util/Set;

    move-result-object v0

    .line 374
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private openAddUserDefinitionDialog()V
    .locals 7

    .line 321
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getUserDefinition()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getUserDefinition()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getUserDefinition()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 322
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogEditText;

    const v2, 0x7f120293

    const v1, 0x7f120614

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/callapp/contacts/activity/EditUserProfileActivity$9;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$9;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/popup/contact/DialogEditText;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    .line 339
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private saveDataToEmptyFields()V
    .locals 5

    .line 608
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 611
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFullName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->setUserFullName(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_0
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->onUserFieldChanged(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 621
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserDefinition()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 623
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserDefinition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 624
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->setUserDefinition(Ljava/lang/String;)V

    goto :goto_1

    .line 626
    :cond_2
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->userDefinition:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->onUserFieldChanged(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 632
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getCurrentPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 633
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserChosenImageDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    if-nez v2, :cond_4

    .line 634
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    iget v3, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getContactPhotoUrlOnSocial(Lcom/callapp/contacts/model/contact/ContactData;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)Z

    goto :goto_2

    .line 636
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 637
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->onUserFieldChanged(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 641
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 642
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/UserProfileManager;->getBirthdate()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v2

    if-nez v2, :cond_6

    .line 643
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->setBirthdate(Lcom/callapp/common/model/json/JSONDate;)V

    .line 647
    :cond_6
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 649
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 651
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/UserProfileManager;->setUserAddress(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private sendChangedDataToServer()V
    .locals 8

    .line 658
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->fieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->isAnyFieldChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 663
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    invoke-direct {v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;-><init>()V

    .line 664
    sget-object v1, Lcom/callapp/contacts/activity/EditUserProfileActivity;->changeableFields:[Lcom/callapp/contacts/model/contact/ContactField;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 665
    iget-object v5, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->fieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 666
    sget-object v5, Lcom/callapp/contacts/activity/EditUserProfileActivity$17;->a:[I

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactField;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 5095
    :pswitch_0
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserDefinition()Ljava/lang/String;

    move-result-object v4

    const-string v5, "usrdef"

    invoke-virtual {v0, v5, v4}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    goto/16 :goto_1

    .line 4099
    :pswitch_1
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getBirthdate()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONDate;->getFormattedDay()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONDate;->getFormattedMonth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONDate;->getFormattedYear()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "birthdate"

    .line 4102
    invoke-virtual {v0, v5, v4}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    goto :goto_1

    .line 3107
    :pswitch_2
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserProfileImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 3108
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "content://"

    invoke-static {v4, v5}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ciu"

    .line 3109
    invoke-virtual {v0, v5, v4}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    goto :goto_1

    .line 3091
    :pswitch_3
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v0, v5, v4}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    goto :goto_1

    .line 3087
    :pswitch_4
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserWebsites()Ljava/util/List;

    move-result-object v4

    const-string v5, "websites"

    invoke-virtual {v0, v5, v4}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_1

    .line 3083
    :pswitch_5
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserEmails()Ljava/util/List;

    move-result-object v4

    const-string v5, "email"

    invoke-virtual {v0, v5, v4}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_1

    .line 3078
    :pswitch_6
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFirstName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fn"

    invoke-virtual {v0, v5, v4}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    .line 3079
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserLastName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ln"

    invoke-virtual {v0, v5, v4}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 692
    :cond_2
    new-instance v1, Lcom/callapp/contacts/activity/EditUserProfileActivity$15;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$15;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    .line 5114
    iget-object v2, v0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5115
    :cond_3
    new-instance v2, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;

    invoke-direct {v2, v0, v1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;-><init>(Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;Lcom/callapp/contacts/event/Callback;)V

    .line 5137
    invoke-virtual {v2}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setChangedFieldsResult()V
    .locals 2

    .line 598
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 599
    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->fieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 601
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private showErrorDialog()V
    .locals 2

    .line 558
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/EditUserProfileActivity$14;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$14;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showMandatoryVerifyNumberPopup()V
    .locals 4

    .line 142
    new-instance v0, Lcom/callapp/contacts/activity/EditUserProfileActivity$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$3;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    const v1, 0x7f12049b

    const v2, 0x7f12049a

    const v3, 0x7f1201a9

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->showVerifyDialog(IIILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method private showOptionalVerifyNumberPopup(Lcom/callapp/framework/phone/Phone;)V
    .locals 3

    .line 128
    new-instance v0, Lcom/callapp/contacts/activity/EditUserProfileActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity$2;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/framework/phone/Phone;)V

    const p1, 0x7f120640

    const v1, 0x7f12063f

    const v2, 0x7f12063e

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->showVerifyDialog(IIILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method private showVerifyDialog(IIILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 9

    .line 156
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    .line 157
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p1, 0x7f120499

    .line 159
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/activity/EditUserProfileActivity$4;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$4;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    move-object v1, v8

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 156
    invoke-virtual {v0, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private startContactDetailsActivity(Lcom/callapp/framework/phone/Phone;)V
    .locals 3

    .line 124
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->startActivity(Landroid/content/Context;JLjava/lang/String;Z)Z

    return-void
.end method

.method public static trackUserProfileEvent(Ljava/lang/String;)V
    .locals 2

    .line 749
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Edit User Profile"

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uploadToS3(Ljava/lang/String;)V
    .locals 2

    .line 512
    new-instance v0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    const v1, 0x7f1207f8

    .line 513
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 514
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setCancelable(Z)V

    .line 515
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 517
    new-instance v1, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 552
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/EditUserProfileActivity$13;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method


# virtual methods
.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->randomFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getRandomFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->randomFile:Ljava/io/File;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->randomFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getParallaxImpl(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
    .locals 9

    .line 720
    new-instance v8, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const v0, 0x7f0a026f

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    .line 6083
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;->b()Z

    move-result v5

    .line 720
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v6

    move-object v0, v8

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;ZLandroidx/lifecycle/j;Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V

    return-object v8
.end method

.method public getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
    .locals 1

    .line 382
    new-instance v0, Lcom/callapp/contacts/activity/EditUserProfileActivity$11;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$11;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    return-object v0
.end method

.method public getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 396
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->EDIT_USER_PROFILE_ACTIVITY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method public getStoreItemAssetManager(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;
    .locals 1

    .line 175
    new-instance v0, Lcom/callapp/contacts/activity/-$$Lambda$EditUserProfileActivity$L4EviRF0lvMbD9cCWd3tZdjl0Xo;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/-$$Lambda$EditUserProfileActivity$L4EviRF0lvMbD9cCWd3tZdjl0Xo;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    .line 1133
    iput-object v0, p1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    return-object p1
.end method

.method public handleIncognitoMode()V
    .locals 0

    return-void
.end method

.method public isBackPressedHandled()Z
    .locals 5

    .line 725
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->isBackPressedHandled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 731
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f120640

    const v2, 0x7f12063f

    const v3, 0x7f12063e

    .line 732
    new-instance v4, Lcom/callapp/contacts/activity/EditUserProfileActivity$16;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$16;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->showVerifyDialog(IIILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapOnUpRulesOk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$getStoreItemAssetManager$1$EditUserProfileActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/-$$Lambda$EditUserProfileActivity$VK7h1uAKg8_T8_-m2p34CFJfd_k;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/-$$Lambda$EditUserProfileActivity$VK7h1uAKg8_T8_-m2p34CFJfd_k;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$null$0$EditUserProfileActivity(Ljava/lang/String;)V
    .locals 3

    const/high16 v0, -0x1000000

    .line 177
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->setStatusBarColor(I)V

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->coverImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 179
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v2, p1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 6376
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 179
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method public synthetic lambda$onContactChanged$2$EditUserProfileActivity(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 776
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getUserDefinition()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getUserDefinition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 452
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(IILandroid/content/Intent;)Z

    const/16 v0, 0x1d1d

    const/4 v1, -0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3a98

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x61a8

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne p2, v1, :cond_7

    if-eqz p3, :cond_7

    .line 481
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 483
    new-instance p2, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;-><init>()V

    const/4 p3, 0x1

    .line 485
    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setIsFromGallery(Z)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p2

    .line 486
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 487
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 483
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V

    :cond_1
    return-void

    :cond_2
    const/16 p1, 0x3e8

    if-ne p2, p1, :cond_7

    .line 467
    invoke-static {p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 469
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->uploadToS3(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-ne p2, v1, :cond_7

    .line 458
    new-instance p1, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;-><init>()V

    .line 460
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 461
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 458
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V

    return-void

    :cond_5
    if-ne p2, v1, :cond_7

    const-string p1, "RESULT_USER_PHONE_NUMBER"

    .line 494
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RESULT_USER_CALLAPP_TOKEN"

    .line 495
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "RESULT_USER_CALLAPP_TOKEN_TYPE"

    .line 496
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 498
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 499
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p3

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p3, p1, p2, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    return-void

    .line 500
    :cond_6
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 501
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p3

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p3, p1, p2, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->isWaitingForS3Upload:Z

    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->saveDataToEmptyFields()V

    .line 403
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onButtonBarIconClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 775
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->userDefinition:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 776
    new-instance p2, Lcom/callapp/contacts/activity/-$$Lambda$EditUserProfileActivity$bIff-Bk_r_PP5EOZW3MW3SEgjas;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/-$$Lambda$EditUserProfileActivity$bIff-Bk_r_PP5EOZW3MW3SEgjas;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 185
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Edit User Profile"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->hideUnusedViews()V

    .line 190
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;I)V

    .line 191
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->f(Landroid/view/View;I)V

    .line 194
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    .line 197
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V

    .line 199
    new-instance p1, Lcom/callapp/contacts/activity/EditUserProfileActivity$5;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$5;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    .line 204
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity$5;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 205
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 207
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    .line 208
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoLongClickedListener(Landroid/view/View$OnLongClickListener;)V

    .line 209
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    new-instance v1, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$6;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoClickedListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance p1, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-direct {p1, v1, v3, v4, v2}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 260
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->reloadContact()V

    .line 262
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->phoneAuthCallBack:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    .line 2088
    iput-object v1, p1, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    const p1, 0x7f0a027d

    .line 263
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    const p1, 0x7f0a06e8

    .line 264
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    const v1, 0x7f08035d

    .line 265
    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    const v1, 0x7f0601cc

    .line 266
    invoke-static {p0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(IZ)Lcom/callapp/contacts/widget/ProfilePictureView;

    const/high16 v1, 0x41800000    # 16.0f

    .line 267
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->c(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    const/high16 v1, 0x41d80000    # 27.0f

    .line 268
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 269
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->d(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 270
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setBadgeBorderWidth(I)V

    const/4 v1, -0x1

    .line 271
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(I)Lcom/callapp/contacts/widget/ProfilePictureView;

    const p1, 0x7f0a02ad

    .line 272
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 273
    invoke-static {}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->getUserBadgeContribution()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 275
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 278
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a0276

    .line 281
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0802cf

    .line 282
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 284
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->setTopBarClickedListeners([I)V

    .line 286
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getPreviewLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    new-instance v1, Lcom/callapp/contacts/activity/EditUserProfileActivity$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$7;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getUserDefinition()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getUserDefinition()Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/activity/EditUserProfileActivity$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$8;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Z)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0101
        0x7f0a0276
    .end array-data
.end method

.method public onDestroy()V
    .locals 4

    .line 592
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->phoneAuthCallBack:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;)V

    .line 593
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Edit User Profile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 578
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onResume()V

    .line 579
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    .line 2500
    iget-object v1, v0, Lcom/callapp/contacts/manager/UserProfileManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 2501
    :try_start_0
    iput-object p0, v0, Lcom/callapp/contacts/manager/UserProfileManager;->a:Lcom/callapp/contacts/manager/UserProfileManager$UserProfileEvents;

    .line 2502
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStop()V
    .locals 3

    .line 584
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->saveDataToEmptyFields()V

    .line 585
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    .line 2506
    iget-object v1, v0, Lcom/callapp/contacts/manager/UserProfileManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 2507
    :try_start_0
    iget-object v2, v0, Lcom/callapp/contacts/manager/UserProfileManager;->a:Lcom/callapp/contacts/manager/UserProfileManager$UserProfileEvents;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    .line 2508
    iput-object v2, v0, Lcom/callapp/contacts/manager/UserProfileManager;->a:Lcom/callapp/contacts/manager/UserProfileManager$UserProfileEvents;

    .line 2510
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->sendChangedDataToServer()V

    .line 587
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onStop()V

    return-void

    :catchall_0
    move-exception v0

    .line 2510
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTopBarIconClicked(Landroid/view/View;)V
    .locals 7

    .line 408
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 410
    invoke-static {p0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0101

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0276

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 418
    new-instance v6, Lcom/callapp/contacts/popup/contact/DialogEditText;

    const v1, 0x7f1202d6

    .line 419
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f12029a

    .line 420
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x60

    new-instance v5, Lcom/callapp/contacts/activity/EditUserProfileActivity$12;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$12;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/DialogEditText;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    .line 430
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v6}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUserFieldChanged(Lcom/callapp/contacts/model/contact/ContactField;)V
    .locals 5

    .line 708
    sget-object v0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->changeableFields:[Lcom/callapp/contacts/model/contact/ContactField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 709
    invoke-virtual {v3, p1}, Lcom/callapp/contacts/model/contact/ContactField;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 710
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity;->fieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 711
    invoke-direct {p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->setChangedFieldsResult()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reloadContact()V
    .locals 1

    .line 352
    new-instance v0, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;-><init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V

    .line 368
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity$10;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public setParallaxAndStatusBarColors(ZZ)V
    .locals 0

    return-void
.end method
