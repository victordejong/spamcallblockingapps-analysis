.class public final synthetic Lcom/callapp/contacts/activity/-$$Lambda$NonEditableContactDetailsActivity$zXR8ZBgmX2cf2FN-_UCI6Hw3vD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/-$$Lambda$NonEditableContactDetailsActivity$zXR8ZBgmX2cf2FN-_UCI6Hw3vD8;->f$0:Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;

    return-void
.end method


# virtual methods
.method public final onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/-$$Lambda$NonEditableContactDetailsActivity$zXR8ZBgmX2cf2FN-_UCI6Hw3vD8;->f$0:Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/NonEditableContactDetailsActivity;->lambda$getStoreItemAssetManager$1$NonEditableContactDetailsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
