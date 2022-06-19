.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 4

    .line 176
    const-class v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    .line 177
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setPhoneNumberForDisplaying(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setCalledPhoneNumber(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;

    iget-wide v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$dateTime:J

    invoke-virtual {p1, v0, v1}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setDateTimeInMillis(J)V

    .line 180
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;

    iget v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$2;->val$type:I

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;->setType(I)V

    return-void
.end method
