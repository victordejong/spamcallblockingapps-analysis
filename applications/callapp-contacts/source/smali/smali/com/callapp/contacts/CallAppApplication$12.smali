.class Lcom/callapp/contacts/CallAppApplication$12;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/CallAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$12;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 523
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$12;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "image_manager_disk_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ga:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 532
    new-instance v1, Lcom/callapp/contacts/util/glide/CallAppGlideInitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create nomedia cache file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/glide/CallAppGlideInitializationException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
