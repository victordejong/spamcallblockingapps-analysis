.class Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
        "Lcom/callapp/common/model/json/JSONFBEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 1826
    iget-object v1, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    sget-object v2, Lcom/callapp/contacts/model/UsageCounter;->facebookRequests:Lcom/callapp/contacts/model/UsageCounter;

    .line 1827
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    .line 1828
    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1826
    invoke-static {v1, v2, v3, v4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V

    .line 1830
    iget-object v1, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->a:Ljava/lang/String;

    const-string v2, "+"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1837
    :cond_0
    iget-object v1, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v1

    .line 1838
    invoke-static {v1}, Lcom/callapp/common/util/RegexUtils;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1839
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v10, "fields"

    const-string v3, "id,name"

    .line 1840
    invoke-virtual {v6, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "q"

    .line 1841
    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    const-string v3, "limit"

    .line 1842
    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1844
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1845
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    sget-object v7, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v8, 0x0

    const-string v5, "/pages/search"

    const-string v9, "v4.0"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 1962
    invoke-static {v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v1

    .line 2121
    iget-object v1, v1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    .line 1853
    iget-object v3, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v3, v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1854
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1856
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 1857
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    .line 1859
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v8, "id,name,about,awards,category,company_overview,connected_instagram_account,cover,current_location,description,display_subtext,emails,general_info,hours,instagram_business_account,link,location,overall_star_rating,phone,price_range,single_line_address,website,whatsapp_number"

    .line 1860
    invoke-virtual {v14, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "locale"

    const-string v9, "en"

    .line 1861
    invoke-virtual {v14, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    new-instance v8, Lcom/facebook/GraphRequest;

    .line 1864
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v12

    .line 1865
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/16 v16, 0x0

    const-string v17, "v4.0"

    move-object v11, v8

    invoke-direct/range {v11 .. v17}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 2962
    invoke-static {v8}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v7

    .line 3159
    iget-object v7, v7, Lcom/facebook/j;->c:Ljava/lang/String;

    .line 1871
    iget-object v8, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v8, v7}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1874
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getPhone()Ljava/lang/String;

    move-result-object v8

    .line 1875
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1876
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_1

    .line 1878
    iget-object v9, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->a:Ljava/lang/String;

    invoke-static {v9}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1879
    new-instance v2, Lcom/callapp/common/model/json/JSONFBEntity;

    invoke-direct {v2}, Lcom/callapp/common/model/json/JSONFBEntity;-><init>()V

    .line 1880
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callapp/common/model/json/JSONFBEntity;->setId(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callapp/common/model/json/JSONFBEntity;->setName(Ljava/lang/String;)V

    .line 1882
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callapp/common/model/json/JSONFBEntity;->setLink(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callapp/common/model/json/JSONFBEntity;->setProfileImageUrl(Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1885
    invoke-virtual {v7}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/callapp/common/model/json/JSONFBEntity;->setPhone(Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1896
    :cond_3
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1897
    new-instance v1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9$1;

    invoke-direct {v1, v0, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9$1;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;Ljava/util/List;)V

    .line 1902
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1905
    :cond_4
    iget-object v1, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1906
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "searched "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 1910
    :cond_5
    sget-object v1, Lcom/callapp/contacts/model/UsageCounter;->facebookRequests:Lcom/callapp/contacts/model/UsageCounter;

    invoke-static {v1, v6}, Lcom/callapp/contacts/model/UsageCounterDataManager;->incrementCounter(Lcom/callapp/contacts/model/UsageCounter;I)J

    return-object v2
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb_search_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTtl()I
    .locals 1

    const v0, 0x7f0b0019

    return v0
.end method
