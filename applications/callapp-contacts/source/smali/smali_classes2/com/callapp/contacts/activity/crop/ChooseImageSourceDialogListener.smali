.class public Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Intent;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a:Ljava/lang/ref/WeakReference;

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->b:Landroid/net/Uri;

    .line 32
    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->c:Ljava/lang/ref/WeakReference;

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object p2, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->b:Landroid/net/Uri;

    .line 47
    iput-object p3, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a:Ljava/lang/ref/WeakReference;

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->b:Landroid/net/Uri;

    .line 32
    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->c:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->e:Landroid/content/Intent;

    iget v2, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->e:Landroid/content/Intent;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->e:Landroid/content/Intent;

    iget v2, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->f:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f12080f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V
    .locals 4

    .line 84
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    .line 86
    sget-object p1, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    const-string v0, "android.intent.action.PICK"

    const-string v1, "android.intent.action.GET_CONTENT"

    const-string v2, "Gallery"

    if-ne p2, p1, :cond_0

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->d:Ljava/lang/String;

    const-string v3, "Chosen local image"

    invoke-virtual {p1, p2, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "image/*"

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Select Image"

    .line 92
    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->e:Landroid/content/Intent;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/content/Intent;

    const/4 v0, 0x0

    aput-object v1, p2, v0

    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    .line 93
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x61a8

    .line 94
    iput p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->f:I

    goto :goto_0

    .line 95
    :cond_0
    sget-object p1, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->VIDEO:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    if-ne p2, p1, :cond_2

    .line 96
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->d:Ljava/lang/String;

    const-string v3, "Chosen local video"

    invoke-virtual {p1, p2, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "video/*"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->e:Landroid/content/Intent;

    .line 98
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 99
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->e:Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/16 p1, 0x6590

    .line 102
    iput p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->f:I

    .line 104
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a()V

    return-void
.end method

.method public final b(Lcom/callapp/contacts/manager/popup/DialogPopup;Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V
    .locals 2

    .line 110
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    .line 111
    sget-object p1, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    const-string v0, "Chosen local image"

    if-ne p2, p1, :cond_0

    .line 112
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->d:Ljava/lang/String;

    const-string v1, "Camera"

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->e:Landroid/content/Intent;

    .line 114
    iget-object p2, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->b:Landroid/net/Uri;

    const-string v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x3a98

    .line 115
    iput p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->f:I

    goto :goto_0

    .line 116
    :cond_0
    sget-object p1, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->VIDEO:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    if-ne p2, p1, :cond_1

    .line 117
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->d:Ljava/lang/String;

    const-string v1, "Video"

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->e:Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v0, "android.intent.extra.videoQuality"

    .line 119
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3e80

    .line 120
    iput p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->f:I

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a()V

    return-void
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getFlowType()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->h:I

    return v0
.end method

.method public getUpdatePersonalStoreItemUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setCameraPhotoFile(Landroid/net/Uri;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->b:Landroid/net/Uri;

    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->i:Ljava/lang/String;

    return-void
.end method

.method public setFlowType(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->h:I

    return-void
.end method

.method public setFragmentWeakReference(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setUpdatePersonalStoreItemUrl(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->g:Ljava/lang/String;

    return-void
.end method
