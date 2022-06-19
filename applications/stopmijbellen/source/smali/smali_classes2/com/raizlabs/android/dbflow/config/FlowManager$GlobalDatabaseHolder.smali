.class Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;
.super Lcom/raizlabs/android/dbflow/config/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/config/FlowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlobalDatabaseHolder"
.end annotation


# instance fields
.field private initialized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->initialized:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/raizlabs/android/dbflow/config/FlowManager$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/raizlabs/android/dbflow/config/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/d;->databaseDefinitionMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/raizlabs/android/dbflow/config/d;->databaseDefinitionMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/d;->databaseNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/raizlabs/android/dbflow/config/d;->databaseNameMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/d;->typeConverters:Ljava/util/Map;

    iget-object v1, p1, Lcom/raizlabs/android/dbflow/config/d;->typeConverters:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/config/d;->databaseClassLookupMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/raizlabs/android/dbflow/config/d;->databaseClassLookupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->initialized:Z

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;->initialized:Z

    return v0
.end method
