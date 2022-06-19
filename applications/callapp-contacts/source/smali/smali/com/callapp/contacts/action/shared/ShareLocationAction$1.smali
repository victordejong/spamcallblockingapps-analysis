.class Lcom/callapp/contacts/action/shared/ShareLocationAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/LocationManager$LocationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareLocationAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic d:Lcom/callapp/contacts/action/shared/ShareLocationAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareLocationAction;Ljava/lang/String;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->d:Lcom/callapp/contacts/action/shared/ShareLocationAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 5

    .line 58
    invoke-static {p1}, Lcom/callapp/contacts/manager/LocationManager;->a(Landroid/location/Location;)Landroid/location/Address;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f12006b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f12006c

    .line 61
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    const-class v1, Lcom/callapp/contacts/action/shared/ShareLocationAction;

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v1

    .line 1111
    invoke-virtual {v1, p1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/manager/LocationManager;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ageo:0,0?q="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->hasLatitude()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Address;->hasLongitude()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lgeo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_2
    :goto_0
    new-instance p1, Lcom/callapp/contacts/util/serializer/string/Serializer;

    invoke-direct {p1}, Lcom/callapp/contacts/util/serializer/string/Serializer;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/util/serializer/string/Serializer;->a(Ljava/lang/CharSequence;)Lcom/callapp/contacts/util/serializer/string/Serializer;

    .line 78
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/serializer/string/Serializer;->a(Ljava/lang/CharSequence;)Lcom/callapp/contacts/util/serializer/string/Serializer;

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->d:Lcom/callapp/contacts/action/shared/ShareLocationAction;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->c:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/serializer/string/Serializer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;->d:Lcom/callapp/contacts/action/shared/ShareLocationAction;

    invoke-virtual {v3}, Lcom/callapp/contacts/action/shared/ShareLocationAction;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 2051
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object v2

    .line 2052
    new-instance v4, Lcom/callapp/contacts/action/shared/SharedAction$2;

    invoke-direct {v4, v0, v3, p1}, Lcom/callapp/contacts/action/shared/SharedAction$2;-><init>(Lcom/callapp/contacts/action/shared/SharedAction;Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    invoke-static {v1, v2, v4}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;)V

    return-void
.end method
