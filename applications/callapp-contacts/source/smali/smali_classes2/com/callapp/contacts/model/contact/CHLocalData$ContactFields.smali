.class Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/contact/CHLocalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactFields"
.end annotation


# instance fields
.field private final emailList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;"
        }
    .end annotation
.end field

.field private final phonesList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/callapp/contacts/model/contact/CHLocalData;

.field private final websiteList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/model/contact/CHLocalData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONPhoneNumber;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONEmail;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/callapp/common/model/json/JSONWebsite;",
            ">;)V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->this$0:Lcom/callapp/contacts/model/contact/CHLocalData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->phonesList:Ljava/util/Collection;

    .line 243
    iput-object p3, p0, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->emailList:Ljava/util/Collection;

    .line 244
    iput-object p4, p0, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->websiteList:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/model/contact/CHLocalData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/callapp/contacts/model/contact/CHLocalData$1;)V
    .locals 0

    .line 236
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;-><init>(Lcom/callapp/contacts/model/contact/CHLocalData;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->websiteList:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->phonesList:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;)Ljava/util/Collection;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/callapp/contacts/model/contact/CHLocalData$ContactFields;->emailList:Ljava/util/Collection;

    return-object p0
.end method
