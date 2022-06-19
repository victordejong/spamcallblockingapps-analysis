.class public Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;
.implements Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;
.implements Lcom/google/android/gms/maps/e;


# static fields
.field private static final PROGRESS_WHEEL_BAR_WIDTH:I = 0x8

.field private static final PROGRESS_WHEEL_SPIN_SPEED:F = 0.256f


# instance fields
.field private circleBorderColor:I

.field private circleBorderWidth:I

.field private contactHasProfilePictureUrl:Z

.field private fullImageBackgroundColor:I

.field private fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

.field private googleMap:Lcom/google/android/gms/maps/c;

.field private googleMapScreenShot:Landroid/graphics/Bitmap;

.field private isBlur:Z

.field private isIncognito:Z

.field private isSpam:Z

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private photoUrl:Ljava/lang/String;

.field private profileImageViewsBackgroundColor:I

.field private profileImageViewsInnerColor:I

.field private profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;-><init>()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isBlur:Z

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;ZLjava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setProfilePhoto(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Lcom/callapp/contacts/api/helper/common/ActivityWithContact;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->startPhotoPopup(Lcom/callapp/contacts/api/helper/common/ActivityWithContact;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderWidth:I

    return p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderColor:I

    return p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsInnerColor:I

    return p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsBackgroundColor:I

    return p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageBackgroundColor:I

    return p0
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->contactHasProfilePictureUrl:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMap:Lcom/google/android/gms/maps/c;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;ZZ)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setGoogleMapTheme(ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isBlur:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;DDLjava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->openMap(DDLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isBlur:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMapScreenShot:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->saveGoogleMapsPhoto(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setFullImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/MapView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->mapView:Lcom/google/android/gms/maps/MapView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Lcom/google/android/gms/maps/MapView;)Lcom/google/android/gms/maps/MapView;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->mapView:Lcom/google/android/gms/maps/MapView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setGoogleMap()V

    return-void
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->loadMapScreenShot()V

    return-void
.end method

.method private calcColors()V
    .locals 3

    .line 220
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isIncognito:Z

    const v1, 0x7f06008a

    const v2, 0x7f060088

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageBackgroundColor:I

    .line 222
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsBackgroundColor:I

    .line 223
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0601f1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsInnerColor:I

    return-void

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isSpam:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageBackgroundColor:I

    .line 226
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsBackgroundColor:I

    .line 227
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsInnerColor:I

    return-void

    .line 229
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageBackgroundColor:I

    .line 230
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsBackgroundColor:I

    .line 231
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060089

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsInnerColor:I

    return-void
.end method

.method private getIncognitoResourceUri()I
    .locals 1

    .line 468
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080595

    return v0

    :cond_0
    const v0, 0x7f080596

    return v0
.end method

.method private getProfilePicPlaceHolder()I
    .locals 2

    .line 472
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0803ff

    return v0

    :cond_0
    const v0, 0x7f0803fe

    return v0

    :cond_1
    const v0, 0x7f0803fd

    return v0
.end method

.method private handlePhotoChange(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 436
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->hasSuggestions:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->googleMap:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 438
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->contactHasProfilePictureUrl:Z

    .line 439
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getIncognitoResourceUri()I

    move-result p2

    invoke-static {p2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f08037c

    .line 442
    invoke-static {p2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f08037a

    .line 444
    invoke-static {p2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 446
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    .line 447
    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->contactHasProfilePictureUrl:Z

    goto :goto_0

    :cond_3
    const p2, 0x7f08058f

    .line 449
    invoke-static {p2}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p2

    .line 452
    :goto_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->contactHasProfilePictureUrl:Z

    if-eqz v0, :cond_4

    .line 453
    invoke-direct {p0, p2, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoUrl(Ljava/lang/String;Z)V

    goto :goto_1

    .line 455
    :cond_4
    invoke-direct {p0, p2, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoResource(Ljava/lang/String;Z)V

    .line 459
    :goto_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p2

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->EDIT_USER_PROFILE_ACTIVITY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne p2, v0, :cond_5

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 461
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getCurrentPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)Z

    :cond_5
    return-void
.end method

.method private loadMapScreenShot()V
    .locals 11

    const/4 v0, 0x0

    .line 617
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 618
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->contactHasProfilePictureUrl:Z

    .line 619
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMapScreenShot:Landroid/graphics/Bitmap;

    .line 620
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Landroid/graphics/Bitmap;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/e/h;

    invoke-direct {v1}, Lcom/bumptech/glide/e/h;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 621
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/e/h;->a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/e/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/e/h;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/e/h;->c(I)Lcom/bumptech/glide/e/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/e/h;

    new-instance v10, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;

    iget v5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderWidth:I

    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderColor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;-><init>(Ljava/lang/Integer;Landroid/graphics/ColorFilter;IIFZZ)V

    invoke-virtual {v1, v10}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->c(Lcom/bumptech/glide/e/a;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 622
    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequest;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;

    return-void
.end method

.method private openMap(DDLjava/lang/String;)V
    .locals 1

    .line 384
    invoke-static {p5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->openNavigationDirections(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 387
    :cond_0
    iget-object p5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p5}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->openViewLocationActivity(Landroid/content/Context;DD)V

    return-void
.end method

.method private saveGoogleMapsPhoto(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 626
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    const/16 v3, 0x1f4

    .line 631
    :try_start_0
    invoke-static {v0, v3}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v1
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 634
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->b(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    move-result-object v3

    if-nez v3, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/common/util/HashUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    sget-object v3, Lcom/callapp/contacts/model/contact/DataSource;->googleMaps:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v0, v3, p1}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    move-result-object p1

    .line 638
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->setImExtractedPhotoData(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)V

    .line 639
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    :cond_0
    return-void
.end method

.method private setFullImage(Ljava/lang/String;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$10;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setGoogleMap()V
    .locals 2

    .line 345
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setGoogleMapTheme(ZZ)V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMap:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 541
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p2

    if-nez p2, :cond_0

    .line 542
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMap:Lcom/google/android/gms/maps/c;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 543
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110027

    .line 542
    invoke-static {v0, v1}, Lcom/google/android/gms/maps/model/MapStyleOptions;->loadRawResourceStyle(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    goto :goto_0

    .line 545
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMap:Lcom/google/android/gms/maps/c;

    new-instance v0, Lcom/google/android/gms/maps/model/MapStyleOptions;

    const-string v1, "[]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 549
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMap:Lcom/google/android/gms/maps/c;

    new-instance p2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$b;)V

    :cond_2
    return-void
.end method

.method private setPhotoResource(Ljava/lang/String;Z)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getDefaultContactResourceUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hw:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 252
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    new-instance p2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$5;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$5;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ViewSwitcher;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$6;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->post(Ljava/lang/Runnable;)Z

    .line 284
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$7;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$7;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/ViewSwitcher;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setPhotoUrl(Ljava/lang/String;Z)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$8;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->post(Ljava/lang/Runnable;)Z

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$9;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private setProfilePhoto(ZLjava/lang/String;)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    iget p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderWidth:I

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderColor:I

    .line 210
    invoke-virtual {v1, p2, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 1386
    iput-object v1, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d:Landroid/widget/ViewSwitcher;

    .line 211
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 212
    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p2

    .line 213
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const v0, 0x7f060244

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2354
    iput-object v0, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 2371
    iput-boolean v0, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 2413
    iput-boolean p1, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->p:Z

    .line 216
    invoke-virtual {p2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method private setProgressWheelBarWidth(I)V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setBarWidth(I)V

    :cond_0
    return-void
.end method

.method private setProgressWheelSpinSpeed(F)V
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0, p1}, Lcom/pnikosis/materialishprogress/ProgressWheel;->setSpinSpeed(F)V

    :cond_0
    return-void
.end method

.method private startPhotoPopup(Lcom/callapp/contacts/api/helper/common/ActivityWithContact;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 8

    .line 392
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getDefaultContactResourceUri()Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getIncognitoResourceUri()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v3, v0

    .line 398
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/contact/DataSource;->googleMaps:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object p1

    .line 400
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v6, v0

    .line 401
    iget-wide v2, p1, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lat:D

    iget-wide v4, p1, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lng:D

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->openMap(DDLjava/lang/String;)V

    goto :goto_3

    .line 404
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getDefaultContactResourceUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/popup/PhotoPopup;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    iget v5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsBackgroundColor:I

    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsInnerColor:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/popup/PhotoPopup;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;II)V

    invoke-virtual {v0, p1, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    goto :goto_3

    .line 407
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/popup/PhotoPopup;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoBGColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_5
    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    :goto_2
    move v5, v1

    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profileImageViewsInnerColor:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/popup/PhotoPopup;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;II)V

    invoke-virtual {v0, p1, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 410
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x50

    .line 3210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method protected getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;
    .locals 2

    .line 482
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    const v1, 0x7f0a06e8

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getProgressWheel()Lcom/pnikosis/materialishprogress/ProgressWheel;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 567
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 569
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$14;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const v1, 0x7f080595

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 591
    :pswitch_0
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isIncognito:Z

    if-eqz p1, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getIncognitoResourceUri()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoResource(Ljava/lang/String;Z)V

    goto :goto_0

    .line 586
    :pswitch_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080596

    .line 587
    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 579
    :pswitch_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 580
    invoke-static {v1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 571
    :pswitch_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 572
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 573
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 574
    invoke-static {v1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 597
    :goto_1
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    invoke-direct {p0, p1, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoResource(Ljava/lang/String;Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 415
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 417
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {p1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isSpam:Z

    :cond_0
    new-array v0, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 420
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isIncognito:Z

    :cond_3
    new-array v0, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 423
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 424
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMapScreenShot:Landroid/graphics/Bitmap;

    .line 426
    :cond_4
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->calcColors()V

    .line 427
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoClickedListener(Landroid/view/View$OnClickListener;)V

    .line 429
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoLongClickedListener(Landroid/view/View$OnLongClickListener;)V

    .line 431
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->handlePhotoChange(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 6

    .line 110
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 111
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getProfilePicPlaceHolder()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v1, 0x8

    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->hasSuggestions:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x6

    aput-object v3, v2, v5

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->googleMap:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x7

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 113
    sget-object v2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->SOCIAL_NETWORKS_IDS:Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-interface {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    .line 115
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 116
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 117
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070174

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderWidth:I

    .line 119
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06010e

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderColor:I

    .line 120
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->calcColors()V

    const v0, 0x7f0a06ef

    .line 122
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f0a0443

    .line 126
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    const v3, 0x7f0a0442

    .line 127
    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ViewUtils;->h(Landroid/view/View;I)V

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    const v3, 0x7f0a0440

    invoke-virtual {v0, v3}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/ViewUtils;->h(Landroid/view/View;I)V

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->fullImageViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getProfilePicPlaceHolder()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$1;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->post(Ljava/lang/Runnable;)Z

    .line 145
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setFullImage(Ljava/lang/String;)V

    .line 149
    :cond_1
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 171
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 187
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ViewSwitcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setProgressWheelBarWidth(I)V

    const v0, 0x3e83126f    # 0.256f

    .line 190
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setProgressWheelSpinSpeed(F)V

    .line 193
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactDetailsParallaxPositionChanged(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 237
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProgressWheelWrapperPresenter;->onDestroy()V

    .line 239
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 3040
    iget-object v0, v0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/MapView$b;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView$b;->f()V

    :cond_0
    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMapScreenShot:Landroid/graphics/Bitmap;

    .line 244
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->removeCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public onIncognitoCallStarted(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    const/4 p1, 0x1

    .line 514
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->isIncognito:Z

    .line 515
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->calcColors()V

    .line 516
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->getIncognitoResourceUri()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoResource(Ljava/lang/String;Z)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/c;)V
    .locals 1

    .line 604
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->googleMap:Lcom/google/android/gms/maps/c;

    .line 605
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setGoogleMap()V

    .line 606
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$13;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$13;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$b;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 3

    .line 521
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06010e

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 522
    :goto_0
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderColor:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_4

    .line 523
    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->circleBorderColor:I

    .line 525
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->contactHasProfilePictureUrl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoUrl(Ljava/lang/String;Z)V

    goto :goto_2

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080596

    goto :goto_1

    :cond_2
    const v0, 0x7f080595

    :goto_1
    invoke-static {v0}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    .line 531
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->calcColors()V

    .line 532
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->photoUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setPhotoResource(Ljava/lang/String;Z)V

    .line 535
    :cond_4
    :goto_2
    invoke-direct {p0, v2, v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setGoogleMapTheme(ZZ)V

    return-void
.end method

.method public setPhotoClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ViewSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPhotoLongClickedListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->profilePictureViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/ViewSwitcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
