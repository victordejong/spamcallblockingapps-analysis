.class public final Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/instantmessaging/ShareData$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001:\u0001\u0019B9\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;",
        "",
        "imageUri",
        "Landroid/net/Uri;",
        "context",
        "Landroid/content/Context;",
        "activityResult",
        "Lcom/callapp/contacts/manager/popup/ActivityResult;",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "contactData",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "(Landroid/net/Uri;Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/model/contact/ContactData;)V",
        "getActivityResult",
        "()Lcom/callapp/contacts/manager/popup/ActivityResult;",
        "getContactData",
        "()Lcom/callapp/contacts/model/contact/ContactData;",
        "getContext",
        "()Landroid/content/Context;",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "getImageUri",
        "()Landroid/net/Uri;",
        "setImageUri",
        "(Landroid/net/Uri;)V",
        "Builder",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/callapp/contacts/manager/popup/ActivityResult;

.field private final d:Landroidx/fragment/app/Fragment;

.field private final e:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->c:Lcom/callapp/contacts/manager/popup/ActivityResult;

    iput-object p4, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->d:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->e:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/model/contact/ContactData;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;-><init>(Landroid/net/Uri;Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;Landroidx/fragment/app/Fragment;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method


# virtual methods
.method public final getActivityResult()Lcom/callapp/contacts/manager/popup/ActivityResult;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->c:Lcom/callapp/contacts/manager/popup/ActivityResult;

    return-object v0
.end method

.method public final getContactData()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->e:Lcom/callapp/contacts/model/contact/ContactData;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final getImageUri()Landroid/net/Uri;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/instantmessaging/ShareData;->a:Landroid/net/Uri;

    return-object v0
.end method
