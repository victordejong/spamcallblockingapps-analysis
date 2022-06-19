.class Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;
.super Lcom/twitter/sdk/android/core/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomTwitterServiceApiClient"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    .line 1187
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/o;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;Lcom/twitter/sdk/android/core/t;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    .line 1182
    invoke-direct {p0, p2}, Lcom/twitter/sdk/android/core/o;-><init>(Lcom/twitter/sdk/android/core/t;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;)Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;
    .locals 0

    .line 1179
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->getCustomService()Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    move-result-object p0

    return-object p0
.end method

.method private getCustomService()Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;
    .locals 1

    .line 1194
    const-class v0, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper$CustomTwitterServiceApiClient;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/api/helper/twitter/CallAppTwitterService;

    return-object v0
.end method
