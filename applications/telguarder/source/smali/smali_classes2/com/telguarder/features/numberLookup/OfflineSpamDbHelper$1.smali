.class Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$1;
.super Ljava/lang/Object;
.source "OfflineSpamDbHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;Landroid/content/Context;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$1;->this$0:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    iput-object p2, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$1;->this$0:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0f0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "d"

    invoke-static {v0, v1, v2, v3}, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->access$000(Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper$1;->this$0:Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/telguarder/features/numberLookup/OfflineSpamDbHelper;->dbReady:Z

    .line 58
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->setOfflineSpamDbVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
