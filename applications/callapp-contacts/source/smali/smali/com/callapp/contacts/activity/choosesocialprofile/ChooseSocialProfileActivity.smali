.class public Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;
.implements Lcom/callapp/contacts/event/listener/BackgroundFragmentListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;",
        "Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;",
        "Lcom/callapp/contacts/event/listener/BackgroundFragmentListener<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;"
    }
.end annotation


# static fields
.field private static final CALLAPP_AUTO_SELECT_ID:I = 0x3e8

.field private static final CALLAPP_DEFAULT_INDEX:I = 0x0

.field public static final CONTACT_ID_EXTRA:Ljava/lang/String; = "CONTACT_ID_EXTRA"

.field public static final CONTACT_NAME_EXTRA:Ljava/lang/String; = "CONTACT_NAME_EXTRA"

.field public static final CONTACT_PHONE_EXTRA:Ljava/lang/String; = "CONTACT_PHONE_EXTRA"

.field private static final FACEBOOK_INDEX:I = 0x2

.field private static final GOOGLEPLACES_INDEX:I = 0x3

.field private static final INDEX_NOT_FOUND:I = -0x1

.field private static final INSTAGRAM_INDEX:I = 0x5

.field private static final OPEN_LOGIN_DIALOG_BACKGROUND_FRAGMENT:Ljava/lang/String; = "openLoginDialogBackgroundFragment"

.field public static final PREFIX_CUSTOM_PROFILE_:Ljava/lang/String; = "custom_profile_"

.field public static final REQUEST_CODE_CONTACT_SOCIAL:I = 0x2599

.field private static final TWITTER_INDEX:I = 0x4

.field private static final USER_MEDIA_INDEX:I = 0x1

.field private static final VK_INDEX:I = 0x6


# instance fields
.field private candidateImageTask:Lcom/callapp/contacts/manager/task/Task;

.field private chooseImageAdapter:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

.field private contact:Lcom/callapp/contacts/model/contact/ContactData;

.field private contactId:J

.field private contactName:Ljava/lang/String;

.field private final dataSourceFieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler<",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPhotoResId:I

.field private defaultUnknownPhotoResId:I

.field private fqlType:Ljava/lang/String;

.field private hasSearchResultsResId:I

.field private imageUri:Landroid/net/Uri;

.field private phoneNum:Ljava/lang/String;

.field private final photoUrlFieldChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private socialMatchesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private socialNetworkPersons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end field

.field private socialNetworkUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/callapp/common/model/json/JSONSocialNetworkID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkPersons:Landroid/util/SparseArray;

    const-string v0, ""

    .line 131
    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->fqlType:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->ACTIVE_SOCIAL_DATA_SOURCES_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->dataSourceFieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    .line 134
    new-instance v0, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->photoUrlFieldChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->chooseImageAdapter:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->updateName(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->updatePhoto(Ljava/lang/Integer;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->notifyForUpdatesAndUpdateCandidate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->dataSourceFieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->doesntChosePerson(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->markProfileAsSure(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getSocialId(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->handleOpenInstagramPrivateProfile(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)I
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onDefaultPictureChecked()V

    return-void
.end method

.method static synthetic access$2100(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->photoUrlFieldChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Ljava/util/List;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultUnknownPhotoResId:I

    return p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->fqlType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->fqlType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)Landroid/util/SparseArray;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkPersons:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->handleCannotGetDataFromSocialId(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Integer;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->updateSureButtons(Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Integer;)V

    return-void
.end method

.method private doesntChosePerson(I)V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;)V

    return-void
.end method

.method public static findPrivateUsers(Ljava/lang/String;Ljava/lang/String;I)Lcom/callapp/contacts/model/PersonData;
    .locals 3

    const/4 v0, 0x0

    .line 710
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 714
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 716
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/PersonData;

    .line 717
    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    move-object v0, p2

    :catch_1
    :cond_1
    return-object v0
.end method

.method private getCheckedImagePosition(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "CONTACT_ID_EXTRA"

    const-wide/16 v1, -0x1

    .line 193
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "CONTACT_PHONE_EXTRA"

    .line 194
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 196
    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p1

    iget p1, p1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getEmptyDevicePhotoData()Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;
    .locals 2

    .line 243
    new-instance v0, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;-><init>()V

    const v1, 0x7f1206ed

    .line 244
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method private getFileUri()Landroid/net/Uri;
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 554
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "custom_profile_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 556
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 557
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 555
    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 554
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->imageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 559
    const-class v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 562
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getIndexInSocialsList(Ljava/lang/Integer;)I
    .locals 2

    .line 205
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x6

    return p1

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x3

    return p1

    :cond_4
    return v0

    :cond_5
    const/4 p1, 0x2

    return p1

    :cond_6
    return v0
.end method

.method private getSocialId(I)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object p1
.end method

.method private getSocialId(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 994
    instance-of p1, p1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#@@#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->fqlType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method private handleCannotGetDataFromSocialId(Ljava/lang/Integer;)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    .line 735
    sget-object v1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->UNKNOWN:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    const/4 v0, 0x1

    .line 736
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;Z)V

    return-void
.end method

.method private handleHadSocialId(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 622
    new-instance v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    .line 702
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private handleNotHaveId(Ljava/lang/Integer;)V
    .locals 3

    .line 392
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    .line 394
    instance-of v1, v0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->HIDE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->NOT_CONNECTED:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->HIDE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    sget-object v2, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->UNKNOWN:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 409
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->updatePhoto(Ljava/lang/Integer;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Z)V

    .line 410
    invoke-direct {p0, p1, v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->updateName(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 413
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->notifyForUpdatesAndUpdateCandidate()V

    return-void
.end method

.method private handleOpenInstagramPrivateProfile(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkPersons:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/PersonData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 905
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->findPrivateUsers(Ljava/lang/String;Ljava/lang/String;I)Lcom/callapp/contacts/model/PersonData;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 909
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->get()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object p1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0, p2}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private initDevicePhotoData()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserMediaData()Lcom/callapp/contacts/model/objectbox/UserMediaData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getUserMediaData()Lcom/callapp/contacts/model/objectbox/UserMediaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/UserMediaData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->setPhotoUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initNetUi(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;Z)V

    return-void
.end method

.method private initNetUi(Ljava/lang/Integer;Z)V
    .locals 4

    .line 375
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_5

    .line 376
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getSocialId(I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    .line 380
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    .line 384
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->handleHadSocialId(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_2

    .line 382
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->handleNotHaveId(Ljava/lang/Integer;)V

    .line 388
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->notifyForUpdatesAndUpdateCandidate()V

    return-void
.end method

.method private initSocialIds(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-static {p1, v1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initDevicePhotoData()V

    return-void
.end method

.method private loadBasicData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    .line 227
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    new-instance v2, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    const v3, 0x7f060088

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    iget v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultPhotoResId:I

    const/16 v5, 0x3e8

    const v6, 0x7f080351

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/callapp/contacts/model/contact/SocialMatchesData;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getEmptyDevicePhotoData()Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    new-instance v2, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    const v4, 0x7f060102

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v4

    iget v6, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultPhotoResId:I

    const v7, 0x7f0803bc

    invoke-direct {v2, v3, v7, v4, v6}, Lcom/callapp/contacts/model/contact/SocialMatchesData;-><init>(IIII)V

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    new-instance v2, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    const v3, 0x7f060109

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    iget v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultPhotoResId:I

    const/4 v6, 0x5

    const v7, 0x7f0803cd

    invoke-direct {v2, v6, v7, v3, v4}, Lcom/callapp/contacts/model/contact/SocialMatchesData;-><init>(IIII)V

    const/4 v3, 0x3

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    new-instance v2, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    const v3, 0x7f060230

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    iget v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultPhotoResId:I

    const/4 v7, 0x4

    const v8, 0x7f0804d2

    invoke-direct {v2, v7, v8, v3, v4}, Lcom/callapp/contacts/model/contact/SocialMatchesData;-><init>(IIII)V

    invoke-interface {v1, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    new-instance v2, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    const v3, 0x7f060120

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    iget v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultPhotoResId:I

    const/4 v7, 0x7

    const v8, 0x7f0803ee

    invoke-direct {v2, v7, v8, v3, v4}, Lcom/callapp/contacts/model/contact/SocialMatchesData;-><init>(IIII)V

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    new-instance v2, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    const v3, 0x7f060235

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iget v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultPhotoResId:I

    const/16 v4, 0xa

    const v6, 0x7f0804df

    invoke-direct {v2, v4, v6, v0, v3}, Lcom/callapp/contacts/model/contact/SocialMatchesData;-><init>(IIII)V

    const/4 v0, 0x6

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 238
    check-cast v0, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    sget-object v1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->AUTO_SELECT:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    .line 239
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    return-object v0
.end method

.method private markProfileAsSure(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 3

    .line 765
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string v0, "Contact Social"

    const-string v1, "Marked profile as sure at 6-pack"

    const-string v2, "Clicked"

    invoke-virtual {p2, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 766
    invoke-virtual {p3, p2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->setSure(Z)V

    .line 767
    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->dataSourceFieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 768
    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    .line 769
    sget-object v0, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->SURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    .line 770
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->setProfileAndPhotoToContact(ILjava/lang/String;)V

    return-void
.end method

.method private notifyForUpdatesAndUpdateCandidate()V
    .locals 2

    .line 457
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->updateCandidate()V

    .line 459
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$1;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onDefaultPictureChecked()V
    .locals 2

    .line 740
    new-instance v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V

    .line 754
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$5;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 756
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->photoUrlFieldChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    return-void
.end method

.method private onPictureChecked(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V
    .locals 1

    .line 604
    new-instance v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 617
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->photoUrlFieldChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 618
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f1200ce

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private onSelectedLocalImage(Ljava/lang/String;)V
    .locals 3

    .line 1082
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/callapp/contacts/loader/UserMediaManager;->a(JLcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    new-instance v1, Lcom/callapp/contacts/model/objectbox/UserMediaData;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/model/objectbox/UserMediaData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->setUserMediaData(Lcom/callapp/contacts/model/objectbox/UserMediaData;)V

    .line 1084
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initDevicePhotoData()V

    const/4 p1, 0x1

    .line 1086
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onRadioClicked(I)V

    return-void
.end method

.method public static openContactProfile(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 888
    const-class v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber()Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 890
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 895
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Intent;)V

    const/16 p1, 0x2599

    .line 896
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string p0, "Contact is null or isUnsearchableNumber"

    .line 898
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private openLoginDialog(Ljava/lang/Integer;)V
    .locals 5

    .line 998
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "openLoginDialogBackgroundFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;

    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2020
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2022
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v2

    .line 2023
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment$1;

    invoke-direct {v4, v0, v2, p1}, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment$1;-><init>(Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;I)V

    invoke-static {v2, v1, v3, v4}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;)V

    :cond_0
    return-void
.end method

.method private openSocialProfileInNewTask(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Lcom/callapp/contacts/manager/task/Task;
    .locals 1

    .line 916
    new-instance v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/lang/Integer;)V

    .line 990
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    move-result-object p1

    return-object p1
.end method

.method private setProfileAndPhotoToContact(ILjava/lang/String;)V
    .locals 2

    .line 774
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V

    .line 778
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->notifyForUpdatesAndUpdateCandidate()V

    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2

    .line 137
    const-class v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;

    if-eqz p1, :cond_0

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 140
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Intent;)V

    const/16 p1, 0x2599

    .line 142
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string p0, "Contact is null"

    .line 144
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private showChooseImageDialog()V
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "User corrected info"

    const-string v2, "Click on add image"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    sget-object v2, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    invoke-direct {v0, v2}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;-><init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V

    .line 569
    new-instance v2, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->setListener(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;)V

    .line 570
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    return-void
.end method

.method private updateCandidate()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->candidateImageTask:Lcom/callapp/contacts/manager/task/Task;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->candidateImageTask:Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    .line 473
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;)V

    .line 494
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->candidateImageTask:Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private updateName(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    if-nez p2, :cond_0

    const-string p2, ""

    .line 421
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setName(Ljava/lang/String;)V

    return-void

    .line 423
    :cond_0
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private updatePhoto(Ljava/lang/Integer;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Z)V
    .locals 3

    .line 428
    invoke-virtual {p3, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;)Z

    move-result v0

    .line 429
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object v1

    .line 432
    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    if-eqz p4, :cond_0

    .line 435
    iget p4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultPhotoResId:I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 436
    iget-object p4, v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    if-eqz p4, :cond_1

    iget-object p4, v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 v1, 0x1

    if-le p4, v1, :cond_1

    .line 437
    iget p4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->hasSearchResultsResId:I

    .line 438
    sget-object v1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->MULTI_MATCH:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    goto :goto_0

    .line 440
    :cond_1
    iget p4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultUnknownPhotoResId:I

    :goto_0
    if-nez v0, :cond_3

    .line 443
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 447
    :cond_2
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setPhotoUrl(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    return-void

    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 444
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setPhotoUrl(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1, p4}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setPhotoResId(I)V

    return-void
.end method

.method private updateSureButtons(Lcom/callapp/common/model/json/JSONSocialNetworkID;Ljava/lang/Integer;)V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    if-nez p1, :cond_0

    .line 1011
    sget-object p1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->PLACES_SURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    .line 1012
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 1014
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1015
    sget-object p1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->SURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    return-void

    .line 1017
    :cond_1
    sget-object p1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->UNSURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->setState(Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;)V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0029

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 808
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 809
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(IILandroid/content/Intent;)Z

    const/16 v0, 0x3e4

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3a98

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x61a8

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-ne p2, v2, :cond_c

    .line 837
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 839
    new-instance p2, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;-><init>()V

    .line 841
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 842
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 843
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setIsFromGallery(Z)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 844
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setShouldDelete(Z)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->phoneNum:Ljava/lang/String;

    .line 845
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setPhoneNumber(Ljava/lang/String;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    iget-wide p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactId:J

    .line 846
    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setContactId(J)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 839
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V

    :cond_1
    return-void

    :cond_2
    const/16 p1, 0x3e8

    if-ne p2, p1, :cond_c

    .line 828
    invoke-static {p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 830
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onSelectedLocalImage(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-ne p2, v2, :cond_c

    .line 814
    new-instance p1, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;-><init>()V

    .line 816
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 817
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 818
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setShouldDelete(Z)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->phoneNum:Ljava/lang/String;

    .line 819
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setPhoneNumber(Ljava/lang/String;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    iget-wide p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactId:J

    .line 820
    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setContactId(J)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 814
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V

    return-void

    :cond_5
    if-eqz p3, :cond_b

    const-string p1, "PERSON_SELECT_NET_ID"

    .line 853
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p2, v2, :cond_9

    .line 855
    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->dataSourceFieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    const-string p2, "PERSON_SELECT_SELECTED_USER_ID"

    .line 856
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eq p1, v2, :cond_8

    .line 857
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "DONTHAVE"

    .line 862
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 863
    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 864
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p2

    iget-wide v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactId:J

    iget-object p3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->phoneNum:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 866
    :cond_7
    new-instance v0, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v0, p2, v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 867
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "PERSON_SELECT_PERSON_DATA"

    .line 868
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/model/PersonData;

    .line 869
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkPersons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->setProfileAndPhotoToContact(ILjava/lang/String;)V

    .line 871
    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 872
    iget-object p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->updateSocialNetwork(Lcom/callapp/contacts/model/contact/ContactData;ILcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 874
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    if-nez p2, :cond_a

    if-eq p1, v2, :cond_a

    .line 877
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->doesntChosePerson(I)V

    :cond_a
    return-void

    .line 881
    :cond_b
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->notifyForUpdatesAndUpdateCandidate()V

    :cond_c
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 784
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 785
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->dataSourceFieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Landroid/content/Intent;)Z

    .line 786
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->photoUrlFieldChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Landroid/content/Intent;)Z

    const/4 v1, -0x1

    .line 788
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->setResult(ILandroid/content/Intent;)V

    .line 790
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 791
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onBackPressed()V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onComplete(Ljava/lang/Integer;)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->dataSourceFieldsChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactName:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->fqlType:Ljava/lang/String;

    invoke-static {p0, v0, p1, v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onComplete(Ljava/lang/Integer;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 329
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->googlePlaces:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;)V

    :cond_0
    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 333
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 334
    iput-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->fqlType:Ljava/lang/String;

    .line 337
    :cond_1
    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->SOCIAL_NETWORKS_DATA_SOURCE:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/contact/DataSource;

    .line 338
    iget v4, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIndexInSocialsList(Ljava/lang/Integer;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    new-array v4, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 339
    iget-object v5, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v5, v4, v3

    invoke-static {p2, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 340
    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    iget v5, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 341
    iget v5, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p1, v5}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 343
    invoke-virtual {v5, v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 344
    iget-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    iget v6, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    iget v4, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;)V

    :cond_3
    new-array v4, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 349
    iget-object v5, v2, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v5, v4, v3

    invoke-static {p2, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    iget v4, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p1, v4}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->getSocialNetworkID(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-nez v4, :cond_2

    .line 351
    iget v2, v2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;)V

    goto :goto_0

    .line 357
    :cond_4
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->notifyForUpdatesAndUpdateCandidate()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 151
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0939

    .line 153
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f060088

    .line 154
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 157
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0804c7

    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    const v0, 0x7f08058f

    .line 160
    iput v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultPhotoResId:I

    .line 161
    iput v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->defaultUnknownPhotoResId:I

    const v1, 0x7f080597

    .line 162
    iput v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->hasSearchResultsResId:I

    const v1, 0x7f0a073e

    .line 164
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 167
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getCheckedImagePosition(Landroid/content/Intent;)I

    move-result v2

    .line 169
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->loadBasicData()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    .line 170
    new-instance v4, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    invoke-direct {v4, v3, v2, v0, p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;-><init>(Ljava/util/List;IILcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    iput-object v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->chooseImageAdapter:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    .line 171
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    if-nez p1, :cond_0

    .line 174
    new-instance p1, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/fragments/OpenLoginDialogBackgroundFragment;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    const-string v1, "openLoginDialogBackgroundFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    .line 177
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->b()Z

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 181
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bZ:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 798
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 801
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onDestroy()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .line 266
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onNewIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "EXTRA_BRING_TO_FRONT_RETRY"

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "CONTACT_ID_EXTRA"

    .line 277
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactId:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->finish()V

    return-void

    :cond_2
    const-string v0, "CONTACT_NAME_EXTRA"

    .line 283
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactName:Ljava/lang/String;

    const-string v0, "CONTACT_PHONE_EXTRA"

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->phoneNum:Ljava/lang/String;

    .line 286
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_3

    .line 287
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    .line 290
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->phoneNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    iget-wide v4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactId:J

    sget-object v7, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    .line 291
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 292
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 296
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->chooseImageAdapter:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->setContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 298
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f120427

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initSocialIds(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 302
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 304
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 305
    instance-of p1, p1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    if-eqz p1, :cond_5

    .line 306
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->initNetUi(Ljava/lang/Integer;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onRadioClicked(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->chooseImageAdapter:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->setCheckedImagePosition(I)V

    .line 580
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 582
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 584
    check-cast p1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    .line 586
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onDefaultPictureChecked()V

    return-void

    .line 589
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/model/contact/DataSource;->getDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onPictureChecked(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    return-void

    .line 591
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    .line 593
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserMediaData()Lcom/callapp/contacts/model/objectbox/UserMediaData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getUserMediaData()Lcom/callapp/contacts/model/objectbox/UserMediaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/UserMediaData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->userMedia:Lcom/callapp/contacts/model/contact/DataSource;

    check-cast p1, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onPictureChecked(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    return-void

    .line 596
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->showChooseImageDialog()V

    :cond_3
    return-void
.end method

.method public onRowClicked(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_a

    .line 506
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 508
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    .line 510
    check-cast p1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    .line 512
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Social"

    const-string v2, "Social match sure unsure activity"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 514
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlacesData()Lcom/callapp/contacts/model/contact/GooglePlacesData;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/callapp/contacts/loader/business/GooglePlacesLoader;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/GooglePlacesData;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 520
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_5

    .line 522
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bw:Lcom/callapp/contacts/manager/preferences/prefs/IntegerSetPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerSetPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_2

    .line 524
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 526
    :cond_2
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 527
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openLoginDialog(Ljava/lang/Integer;)V

    .line 528
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bw:Lcom/callapp/contacts/manager/preferences/prefs/IntegerSetPref;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerSetPref;->set(Ljava/lang/Object;)V

    return-void

    .line 531
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 532
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {p0, v1, v0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openSocialProfileInNewTask(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 534
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openLoginDialog(Ljava/lang/Integer;)V

    return-void

    .line 538
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 539
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {p0, v1, v0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openSocialProfileInNewTask(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 540
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 541
    :cond_7
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contactName:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->fqlType:Ljava/lang/String;

    invoke-static {p0, v0, p1, v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    .line 544
    :cond_9
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result p1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_a

    .line 545
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->showChooseImageDialog()V

    :cond_a
    return-void
.end method

.method public onSureClick(I)V
    .locals 4

    .line 1024
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Social"

    const-string v2, "Marked profile as sure at 6-pack"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    .line 1026
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    .line 1028
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {p0, v1, v0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->markProfileAsSure(Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method

.method public onUnsureClick(I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;

    .line 1037
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    .line 1038
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1040
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1041
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :catch_0
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->setUserMediaData(Lcom/callapp/contacts/model/objectbox/UserMediaData;)V

    .line 1050
    invoke-static {v0}, Lcom/callapp/contacts/loader/UserMediaManager;->a(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->setPhotoUrl(Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->notifyForUpdatesAndUpdateCandidate()V

    .line 1053
    iget-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->photoUrlFieldChangedHandler:Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->setFieldChanged(Ljava/lang/Object;)V

    .line 1054
    invoke-direct {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->onDefaultPictureChecked()V

    return-void

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialMatchesData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    .line 1058
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Social"

    const-string v2, "Marked profile as not him at 6-pack"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->socialNetworkUserIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialNetId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    new-instance v3, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity$7;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;Lcom/callapp/contacts/model/contact/SocialMatchesData;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->onUserDismissingSocial(Landroid/content/Context;Ljava/lang/Integer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method
