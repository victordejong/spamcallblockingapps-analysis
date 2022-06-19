.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;,
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;,
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppViewHolder;,
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;,
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 12\u00020\u00012\u00020\u0002:\u000512345B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\rJ\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001aH\u0002J,\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00072\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010#\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020$H\u0016J&\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0008\u0010-\u001a\u00020\u001cH\u0016J\u0008\u0010.\u001a\u00020\u001cH\u0016J\u0012\u0010/\u001a\u00020\u001c2\u0008\u00100\u001a\u0004\u0018\u00010\u0006H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/callapp/contacts/manager/popup/ActivityResult;",
        "()V",
        "analyticsDataMap",
        "Ljava/util/HashMap;",
        "",
        "",
        "contactData",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "entryPoint",
        "futureTarget",
        "Lcom/bumptech/glide/request/FutureTarget;",
        "Landroid/graphics/Bitmap;",
        "getFutureTarget",
        "()Lcom/bumptech/glide/request/FutureTarget;",
        "setFutureTarget",
        "(Lcom/bumptech/glide/request/FutureTarget;)V",
        "referAndEarnShareOptionsFragmentListener",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;",
        "getBitmapFromView",
        "Landroid/net/Uri;",
        "bmp",
        "getCopyData",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;",
        "getInstalledApps",
        "Ljava/util/ArrayList;",
        "onActivityResult",
        "",
        "context",
        "Landroid/app/Activity;",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAttach",
        "Landroid/content/Context;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onDetach",
        "shareCallApp",
        "name",
        "Companion",
        "ItemType",
        "ListAdapter",
        "ShareCallAppAppData",
        "ShareCallAppViewHolder",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

.field private c:Lcom/callapp/contacts/model/contact/ContactData;

.field private d:Ljava/lang/String;

.field private e:Lcom/bumptech/glide/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    .line 59
    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;-><init>()V

    check-cast v1, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 59
    invoke-static {v0}, Lkotlin/a/n;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const v0, 0x7f0800ad

    .line 120
    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->getFutureTargetForResourceTarget(I)Lcom/bumptech/glide/e/c;

    move-result-object v0

    const-string v1, "GlideUtils.getFutureTarg\u2026wable.callapp_invite_img)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->e:Lcom/bumptech/glide/e/c;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5

    .line 287
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz p0, :cond_0

    .line 289
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    move-object v4, v1

    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 290
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 291
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Ljava/lang/String;)V
    .locals 3

    .line 2167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/*"

    .line 2168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "more"

    .line 2169
    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const p1, 0x7f1205be

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2170
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/manager/popup/ActivityResult;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    .line 2171
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;->c()V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->c:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method

.method private final getCopyData()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;
    .locals 9

    .line 271
    new-instance v8, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f120247

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "CallAppApplication.get().getString(R.string.copy)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f080380

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;->OTHER:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method private final getInstalledApps()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;",
            ">;"
        }
    .end annotation

    const-string v0, "pack.analyticsNameLabel"

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 250
    sget-object v3, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;

    .line 252
    :try_start_0
    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    invoke-virtual {v2, v5, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 253
    new-instance v14, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    move-object v5, v14

    move-object v9, v4

    invoke-direct/range {v5 .. v12}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ItemType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 254
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "sms"

    .line 255
    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getAnalyticsNameLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "em"

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getAnalyticsNameLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 256
    iget-object v5, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->f:Ljava/util/HashMap;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getAnalyticsNameLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    iget-object v5, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->f:Ljava/util/HashMap;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/BaseImSenderHelper;->getAnalyticsNameLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ep:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReferAndEarn"

    const-string v4, "ViewInviteOptions"

    invoke-virtual {v0, v3, v4, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getCopyData()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ShareCallAppAppData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public final getFutureTarget()Lcom/bumptech/glide/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->e:Lcom/bumptech/glide/e/c;

    return-object v0
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "extra_contact_data"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->c:Lcom/callapp/contacts/model/contact/ContactData;

    const-string v0, "extra_entry_point"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0269

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p2

    sget-object p3, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;

    sget-object p3, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;->MINIMAL:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    invoke-static {p3}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    const v0, 0x7f0a074c

    const/4 v1, 0x0

    .line 1293
    invoke-virtual {p2, v0, p3, v1}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p2

    .line 126
    invoke-virtual {p2}, Landroidx/fragment/app/s;->b()I

    const p2, 0x7f0a07ff

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    const p3, 0x7f0a07fd

    .line 129
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0a07fc

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a07fe

    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0601ec

    .line 133
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "shareCallAppMessage"

    .line 135
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1205af

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->c:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f12034c

    .line 139
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Activities.getString(R.string.friends)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v2, "contactData?.let {\n     \u2026).toLowerCase()\n        }"

    .line 138
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "shareCallAppName"

    .line 141
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1203d9

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 144
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 145
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->getInstalledApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$ListAdapter;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Ljava/util/List;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 149
    :cond_2
    sget-object p2, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    const p2, 0x7f060026

    .line 151
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const p2, 0x7f060088

    .line 152
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 153
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 p2, 0x2

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 155
    new-instance v6, Landroid/text/SpannableString;

    const p2, 0x7f12046e

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {v6, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const p2, 0x7f08058d

    .line 157
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, p3

    .line 149
    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;)V

    .line 160
    new-instance p2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$onCreateView$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$onCreateView$2;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->e:Lcom/bumptech/glide/e/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bumptech/glide/e/c;->cancel(Z)Z

    .line 276
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->e:Lcom/bumptech/glide/e/c;

    check-cast v1, Lcom/bumptech/glide/e/a/j;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequests;->a(Lcom/bumptech/glide/e/a/j;)V

    .line 278
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    return-void
.end method
