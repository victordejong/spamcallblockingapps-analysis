.class Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$1;
.super Ljava/lang/Object;
.source "PhoneEventHistoryManger.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1$1;->this$1:Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 1

    .line 120
    const-class v0, Lcom/telguarder/features/numberLookup/CachedHistoryListItem;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    return-void
.end method
