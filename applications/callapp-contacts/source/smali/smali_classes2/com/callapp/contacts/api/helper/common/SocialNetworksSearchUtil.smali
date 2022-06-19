.class public Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;I)Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 1

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p0

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p0

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p0

    goto :goto_1

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p0

    goto :goto_1

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getGooglePlusSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p0

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p0

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookSearchResults()Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static a(IILandroid/content/Intent;)Z
    .locals 5

    const/16 v0, 0x8c

    const/4 v1, 0x1

    if-eq p0, v0, :cond_7

    const/16 v0, 0x11a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1f40

    if-eq p0, v0, :cond_1

    const v0, 0xface

    if-eq p0, v0, :cond_0

    const v0, 0xfad5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    .line 1282
    iget-object v0, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->c:Lcom/facebook/e;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/e;->a(IILandroid/content/Intent;)Z

    return v1

    .line 82
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v2

    if-nez p1, :cond_2

    .line 1134
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->c()V

    goto :goto_0

    :cond_2
    if-ne p0, v0, :cond_3

    .line 1137
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    const-class p1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 1138
    invoke-virtual {v2, p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1143
    :catch_0
    :cond_3
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->b()V

    :goto_0
    return v1

    .line 94
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v2

    if-nez p1, :cond_5

    .line 5187
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->c()V

    goto :goto_1

    :cond_5
    if-ne p0, v0, :cond_6

    .line 5189
    iget-object v0, v2, Lcom/callapp/contacts/api/helper/vk/VKHelper;->c:Lcom/vk/api/sdk/a/b;

    invoke-static {p0, p1, p2, v0}, Lcom/vk/api/sdk/b;->a(IILandroid/content/Intent;Lcom/vk/api/sdk/a/b;)Z

    goto :goto_1

    .line 5191
    :cond_6
    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->b()V

    :goto_1
    return v1

    .line 90
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    .line 2195
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v2

    .line 3099
    iget-object v2, v2, Lcom/twitter/sdk/android/core/r;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 2195
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getRequestCode()I

    move-result v2

    if-ne p0, v2, :cond_9

    iget-object v2, v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->c:Lcom/twitter/sdk/android/core/identity/h;

    if-eqz v2, :cond_9

    .line 2196
    iget-object v0, v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->c:Lcom/twitter/sdk/android/core/identity/h;

    .line 3136
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult called with "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Twitter"

    invoke-interface {v2, v4, v3}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    iget-object v2, v0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/identity/b;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8

    .line 3139
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object p0

    const-string p1, "Authorize not in progress"

    invoke-interface {p0, v4, p1, v3}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3141
    :cond_8
    iget-object v2, v0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    .line 4058
    iget-object v2, v2, Lcom/twitter/sdk/android/core/identity/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/identity/a;

    if-eqz v2, :cond_9

    .line 3143
    invoke-virtual {v2, p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/a;->a(IILandroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 3144
    iget-object p0, v0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    .line 5050
    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return v1
.end method

.method public static getSocialNetworkName(I)Ljava/lang/String;
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

    goto :goto_0

    :cond_0
    const p0, 0x7f120815

    .line 73
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p0, 0x7f12052d

    .line 70
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const p0, 0x7f1203d2

    .line 67
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const p0, 0x7f12034a

    .line 64
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    const p0, 0x7f120358

    .line 61
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const p0, 0x7f1207e3

    .line 58
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    const p0, 0x7f12032a

    .line 55
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
