.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/Task$DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;->a:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .line 189
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
