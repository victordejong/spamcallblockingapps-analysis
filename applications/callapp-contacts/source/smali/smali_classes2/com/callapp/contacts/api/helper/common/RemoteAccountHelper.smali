.class public abstract Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/common/LoginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;,
        Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;,
        Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Lcom/callapp/contacts/api/helper/common/LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a:Z

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 731
    sget-object v0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$4;->a:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/DataSource;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 745
    :pswitch_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object p0

    return-object p0

    .line 743
    :pswitch_1
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->get()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object p0

    return-object p0

    .line 741
    :pswitch_2
    invoke-static {}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->get()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object p0

    return-object p0

    .line 739
    :pswitch_3
    invoke-static {}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->get()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    move-result-object p0

    return-object p0

    .line 737
    :pswitch_4
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object p0

    return-object p0

    .line 735
    :pswitch_5
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object p0

    return-object p0

    .line 733
    :pswitch_6
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object p0

    return-object p0

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

.method protected static a(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 2

    .line 581
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 585
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 586
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 587
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 588
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;)V
    .locals 7

    if-eqz p0, :cond_0

    .line 558
    new-instance v6, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;)V

    const/4 p2, 0x0

    .line 560
    invoke-virtual {v6, p0, p1, p2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/callapp/contacts/api/helper/common/ActivityWithContact;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 1

    .line 550
    new-instance v0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 551
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p1, p2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 726
    invoke-interface {p0, p1}, Lcom/callapp/contacts/manager/task/OutcomeListener;->a(Z)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/callapp/contacts/model/contact/ContactData;)Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getNegativesMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 480
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 481
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/ContactData;->setNegativesMap(Landroid/util/SparseArray;)V

    :cond_0
    return-object v0
.end method

.method private b(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v0

    if-lez v0, :cond_0

    .line 490
    invoke-static {p1, p2, p3, v0, p4}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->b(JLjava/lang/String;ILjava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static b(Lcom/callapp/contacts/model/contact/DataSource;)Z
    .locals 1

    .line 836
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget p0, p0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSocialBadgeBgColor(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 829
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f060235

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 827
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f0601ac

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 825
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f060120

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 823
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f060107

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 821
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f060109

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 819
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f060230

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 817
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const v0, 0x7f060102

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getSocialBadgeColoredResId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f0804dc

    return p0

    :cond_1
    const p0, 0x7f08045d

    return p0

    :cond_2
    const p0, 0x7f0803eb

    return p0

    :cond_3
    const p0, 0x7f0803c1

    return p0

    :cond_4
    const p0, 0x7f0803c9

    return p0

    :cond_5
    const p0, 0x7f0804cf

    return p0

    :cond_6
    const p0, 0x7f0803b9

    return p0
.end method

.method public static getSocialBadgeResId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f0804df

    return p0

    :cond_1
    const p0, 0x7f080460

    return p0

    :cond_2
    const p0, 0x7f0803ee

    return p0

    :cond_3
    const p0, 0x7f0803c4

    return p0

    :cond_4
    const p0, 0x7f0803cd

    return p0

    :cond_5
    const p0, 0x7f0804d2

    return p0

    :cond_6
    const p0, 0x7f0803bc

    return p0
.end method

.method public static getSocialPairBadgeResId(I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 787
    :cond_0
    new-instance p0, Landroid/util/Pair;

    const v0, 0x7f0804dd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0804de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 785
    :cond_1
    new-instance p0, Landroid/util/Pair;

    const v0, 0x7f08045e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f08045f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 783
    :cond_2
    new-instance p0, Landroid/util/Pair;

    const v0, 0x7f0803ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0803ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 781
    :cond_3
    new-instance p0, Landroid/util/Pair;

    const v0, 0x7f0803c2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0803c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 779
    :cond_4
    new-instance p0, Landroid/util/Pair;

    const v0, 0x7f0803ca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0803cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 777
    :cond_5
    new-instance p0, Landroid/util/Pair;

    const v0, 0x7f0804d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0804d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 775
    :cond_6
    new-instance p0, Landroid/util/Pair;

    const v0, 0x7f0803ba

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0803bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private getWasEverConnectedPref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;
    .locals 3

    .line 638
    new-instance v0, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EverConnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
.end method

.method public a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 0

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 669
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZ)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;ZZ)TT;"
        }
    .end annotation

    .line 673
    sget-object v5, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->standard:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;ZZ",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;",
            ")TT;"
        }
    .end annotation

    .line 678
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-eqz v0, :cond_6

    .line 680
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->getCacheKey()Ljava/lang/String;

    move-result-object p3

    .line 681
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    monitor-enter v0

    .line 682
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 1219
    invoke-virtual {v2, p2, p3, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->c(Ljava/lang/Class;Ljava/lang/String;Z)Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;

    move-result-object v2

    .line 684
    sget-object v4, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->onlyFromCache:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    if-eq p5, v4, :cond_4

    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 1706
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->getRefreshInterval()I

    move-result p5

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->getCacheTtl()I

    move-result v4

    if-ne p5, v4, :cond_2

    goto :goto_0

    .line 1711
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p5

    invoke-virtual {p5}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p5

    invoke-virtual {p5}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->getCacheTtl()I

    move-result v3

    invoke-virtual {p5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p5

    .line 1712
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;->getExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p5

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1713
    new-instance p5, Ljava/util/Date;

    invoke-direct {p5, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1715
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->getRefreshInterval()I

    move-result v3

    .line 1714
    invoke-static {p5, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;I)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_4

    .line 684
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isReadyForRemoteCalls()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 685
    invoke-virtual {p0, p1, p4}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Z)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 688
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p5

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->getCacheTtl()I

    move-result p1

    invoke-virtual {p5, p2, p3, p4, p1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    move-object v1, p4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 691
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/cache/CacheManager$CachedObject;->getObj()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    .line 693
    :cond_5
    :goto_1
    monitor-exit v0

    :cond_6
    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Z)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
            "TT;>;Z)TT;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(ZZ)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/Friend;",
            ">;"
        }
    .end annotation
.end method

.method public final a()V
    .locals 2

    .line 500
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Login Completed"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 502
    new-instance v0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$2;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    .line 515
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 517
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/common/LoginListener;->a()V

    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v0

    if-lez v0, :cond_0

    .line 414
    invoke-static {p1, p2, p3, v0}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;I)V

    .line 415
    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->getSocialNetworkName(I)Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string p3, "Contact Details"

    const-string v0, "Doesn\'t have a profile"

    invoke-virtual {p2, p3, v0, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 422
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v0

    if-lez v0, :cond_1

    .line 424
    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->getSocialNetworkName(I)Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Contact Details"

    const-string v4, "Not right profile"

    invoke-virtual {v2, v3, v4, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {p1, p2, v0, p4}, Lcom/callapp/contacts/manager/SuggestContactManager;->a(JILjava/lang/String;)V

    .line 427
    invoke-static {p1, p2, p3, v0}, Lcom/callapp/contacts/loader/UserCorrectedDataManager;->a(JLjava/lang/String;I)V

    .line 428
    invoke-static {p1, p2, p3, v0, p4}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;ILjava/lang/String;)V

    .line 431
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 432
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p4

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(J)Lcom/callapp/framework/phone/Phone;

    move-result-object p4

    .line 437
    :goto_0
    invoke-static {p4, p1, p2}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/objectbox/FastCacheData;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 439
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p3

    invoke-static {v0, p4, p3, p1, p2}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/model/objectbox/FastCacheData;Lcom/callapp/framework/phone/Phone;J)V

    :cond_1
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;)V
.end method

.method public abstract a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
.end method

.method public final a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V
    .locals 3

    if-eqz p4, :cond_0

    .line 127
    invoke-static {p1, p2}, Lcom/callapp/contacts/model/UsageCounterDataManager;->incrementCounter(Lcom/callapp/contacts/model/UsageCounter;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isFromSync()Z

    move-result p4

    if-eqz p4, :cond_3

    if-nez p2, :cond_1

    .line 132
    invoke-static {p1}, Lcom/callapp/contacts/model/UsageCounterDataManager;->getCounterValue(Lcom/callapp/contacts/model/UsageCounter;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 135
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    int-to-long p3, p3

    cmp-long v2, v0, p3

    if-gtz v2, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    new-instance p3, Lcom/callapp/contacts/loader/social/QuotaReachedException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Period configured quota was reached for counter="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " current counter="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/callapp/contacts/loader/social/QuotaReachedException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V
    .locals 3

    .line 446
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Lcom/callapp/contacts/model/contact/ContactData;)Landroid/util/SparseArray;

    move-result-object v0

    .line 450
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    .line 451
    iget v2, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_0

    .line 453
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 454
    iget v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    :cond_0
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->negatives:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 460
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    .line 461
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, v0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->id:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    :cond_1
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 467
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 472
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialNetworks(Ljava/util/List;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V
    .locals 9

    .line 253
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v7

    .line 258
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-wide v2, v7

    move-object v4, v0

    move-object v5, p2

    move v6, p3

    .line 261
    invoke-virtual/range {v1 .. v6}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(JLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    const/4 v4, 0x6

    if-eq v2, v4, :cond_4

    const/4 v4, 0x7

    if-eq v2, v4, :cond_3

    const/16 v4, 0x9

    if-eq v2, v4, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getVKId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    goto :goto_0

    .line 267
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    .line 286
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-array v1, v3, [Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v2, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialNetworks(Ljava/util/List;)V

    .line 292
    :cond_7
    invoke-direct {p0, v7, v8, v0, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 294
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Lcom/callapp/contacts/model/contact/ContactData;)Landroid/util/SparseArray;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 296
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 297
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->negatives:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 303
    :cond_8
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 304
    new-instance v0, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v0, p2, p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :cond_9
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 364
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v3

    if-eqz p5, :cond_0

    .line 367
    invoke-static {p1, p2, v3, p4}, Lcom/callapp/contacts/manager/SuggestContactManager;->a(JILjava/lang/String;)V

    :cond_0
    move-wide v0, p1

    move-object v2, p3

    move-object v4, p4

    move v5, p5

    .line 370
    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/loader/UserPositiveNegativeManager;->a(JLjava/lang/String;ILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public final b(Ljava/lang/String;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;
        }
    .end annotation

    const/4 v0, 0x1

    .line 314
    invoke-static {v0}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->a(Z)Lcom/callapp/common/model/json/JSONQuotaLimitation;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {p0, p1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->c(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 320
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONQuotaLimitation;->getQuotaLimitationMap()Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    .line 322
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/callapp/common/model/json/QuotaLimitPOJO;

    :cond_1
    if-nez v3, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isFromSync()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    invoke-virtual {v3}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->isSearchInSync()Z

    move-result p2

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 333
    invoke-virtual {v3}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->isSearchInManual()Z

    move-result p2

    goto :goto_0

    .line 335
    :cond_4
    invoke-virtual {v3}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->isSearchInContactDetails()Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_5

    .line 340
    invoke-virtual {p0, p1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->c(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 344
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->c(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Login Error"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    if-eqz v0, :cond_0

    .line 525
    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/common/LoginListener;->b()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1

    .line 565
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    new-instance v0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$3;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;)V

    .line 571
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 573
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    .line 574
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    if-eqz p1, :cond_1

    .line 575
    invoke-interface {p1}, Lcom/callapp/contacts/api/helper/common/LoginListener;->c()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;
    .locals 1

    .line 110
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract c(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/SearchIsNotAvailableExecption;
        }
    .end annotation
.end method

.method public final c()V
    .locals 2

    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Login cancelled"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/common/LoginListener;->c()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 165
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$1;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    .line 174
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0, v1, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(ZZ)Ljava/util/Map;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final e(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 198
    invoke-static {v0}, Lcom/callapp/contacts/util/servermessage/CheckQuotaLimitation;->a(Z)Lcom/callapp/common/model/json/JSONQuotaLimitation;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {p0, p1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONQuotaLimitation;->getQuotaLimitationMap()Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    .line 206
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/callapp/common/model/json/QuotaLimitPOJO;

    :cond_1
    if-eqz v3, :cond_4

    .line 210
    invoke-virtual {v3}, Lcom/callapp/common/model/json/QuotaLimitPOJO;->isMutuals()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 215
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 218
    :cond_3
    new-instance p1, Lcom/callapp/contacts/loader/social/QuotaReachedException;

    invoke-direct {p1}, Lcom/callapp/contacts/loader/social/QuotaReachedException;-><init>()V

    throw p1

    .line 211
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract e()V
.end method

.method public abstract f(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract g(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getApiConstantNetworkId()I
.end method

.method public abstract getCurrentUserId()Ljava/lang/String;
.end method

.method public abstract getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
.end method

.method public abstract getFriendsCount()J
.end method

.method public abstract getFriendsListAsPersonData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end method

.method public final getHelperSocialNetDBId()I
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    return v0
.end method

.method public getHostToCheck()Ljava/lang/String;
    .locals 2

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginLabelText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract h(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract i(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract i()Z
.end method

.method public isFromSync()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a:Z

    return v0
.end method

.method public abstract isLoggedIn()Z
.end method

.method public isNativeAppInstalled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isReadyForRemoteCalls()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 541
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final j()V
    .locals 2

    .line 634
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getWasEverConnectedPref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setDoesntHave(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 375
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(JLjava/lang/String;)V

    .line 386
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Lcom/callapp/contacts/model/contact/ContactData;)Landroid/util/SparseArray;

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getHelperSocialNetDBId()I

    move-result v1

    .line 388
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 389
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v1, "DONTHAVE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->negatives:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 393
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 396
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    .line 397
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 399
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->resetSocialNetworks(Ljava/util/List;)V

    return-void
.end method

.method public setFromSync(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a:Z

    return-void
.end method

.method public setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    return-void
.end method
