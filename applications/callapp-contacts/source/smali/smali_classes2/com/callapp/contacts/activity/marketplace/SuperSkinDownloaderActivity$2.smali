.class Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/Task$DoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .line 147
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ee:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/SuperSkinDownloaderActivity;)Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;

    move-result-object v0

    .line 1168
    iget-object v0, v0, Lcom/callapp/contacts/widget/horizontalHeader/HorizontalPagerHeader;->a:Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerLayoutViewHolder;->b()V

    :cond_0
    return-void
.end method
