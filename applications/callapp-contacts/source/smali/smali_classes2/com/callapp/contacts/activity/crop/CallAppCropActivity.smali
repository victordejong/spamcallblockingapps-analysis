.class public Lcom/callapp/contacts/activity/crop/CallAppCropActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;
    }
.end annotation


# instance fields
.field private a:Lcom/theartofdev/edmodo/cropper/CropImageView;

.field private b:Z

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;

.field private f:Landroid/net/Uri;

.field private g:Z

.field private h:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    .line 138
    new-instance v0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$1;-><init>(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->h:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    const-string v0, "EXTRA_RESULT_URI"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Lcom/theartofdev/edmodo/cropper/CropImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->b:Z

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->e:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_IMAGE_CROP_BUILDER"

    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x4e20

    .line 64
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V
    .locals 3

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_IMAGE_CROP_BUILDER"

    .line 69
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x4e20

    .line 70
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;JLjava/lang/String;)V
    .locals 7

    .line 1184
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    sget-object v6, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    const/4 v5, 0x0

    move-wide v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    .line 1185
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/ContactData;

    .line 1186
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getUserMediaData()Lcom/callapp/contacts/model/objectbox/UserMediaData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1187
    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/UserMediaData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1190
    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/UserMediaData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/UserMediaData;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1197
    const-class p2, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;

    invoke-static {p2, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 1200
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lcom/callapp/contacts/loader/UserMediaManager;->b(JLcom/callapp/framework/phone/Phone;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)Landroid/net/Uri;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->f:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/crop/CallAppCropActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a()V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0026

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a()V

    const/16 v0, -0x64

    .line 120
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->setResult(I)V

    .line 121
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_IMAGE_CROP_BUILDER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    const/16 v0, 0x3ea

    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->finish()V

    return-void

    :cond_0
    const v1, 0x7f0a02c6

    .line 86
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/theartofdev/edmodo/cropper/CropImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    .line 87
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->getImagePathUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->e:Landroid/net/Uri;

    .line 88
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->isFromGallery()Z

    move-result v1

    iput-boolean v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->b:Z

    .line 89
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->getContactId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->c:J

    .line 90
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->d:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->isShouldDelete()Z

    move-result v1

    iput-boolean v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->g:Z

    .line 92
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->getSavePathUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->f:Landroid/net/Uri;

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->e:Landroid/net/Uri;

    if-nez p1, :cond_1

    .line 96
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->setResult(I)V

    .line 97
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->finish()V

    return-void

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v1

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenHeight(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setAspectRatio(II)V

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a:Lcom/theartofdev/edmodo/cropper/CropImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    const p1, 0x7f0a0780

    .line 104
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a033c

    .line 105
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01c7

    .line 106
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1201aa

    .line 108
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f1202c0

    .line 109
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v2, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->h:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->h:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->h:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
