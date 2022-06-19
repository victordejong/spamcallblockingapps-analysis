.class public Lcom/callapp/contacts/sync/model/SyncerContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final contact:Lcom/callapp/contacts/model/contact/ContactData;

.field public fullySynced:Z

.field public hasPhoto:Z

.field public singleNameCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public social:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/common/model/json/JSONSocialNetworkID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/sync/model/SyncerContext;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public markFullySynced()V
    .locals 1

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/callapp/contacts/sync/model/SyncerContext;->fullySynced:Z

    return-void
.end method
