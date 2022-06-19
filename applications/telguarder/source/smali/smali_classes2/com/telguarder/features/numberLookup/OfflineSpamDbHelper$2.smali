.class Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$2;
.super Ljava/lang/Object;
.source "OfflineSpamDbHelper.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->deleteSpam(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$2;->this$0:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .line 126
    const-class v0, Lcom/telguarder/features/numberLookup/d;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$2;->val$number:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    return-void
.end method
