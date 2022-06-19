.class public final Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "IMExtractedPhotoData"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x21

.field public static final __ENTITY_NAME:Ljava/lang/String; = "IMExtractedPhotoData"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;

.field public static final dataSource:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final date:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final phoneOrIdKey:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field

.field public static final url:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 24
    const-class v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 28
    new-instance v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoDataCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 31
    new-instance v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;

    .line 33
    new-instance v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;

    .line 35
    new-instance v11, Lio/objectbox/g;

    const-class v5, Ljava/lang/Long;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "id"

    const/4 v7, 0x1

    const-string v8, "id"

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->id:Lio/objectbox/g;

    .line 38
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "phoneOrIdKey"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->phoneOrIdKey:Lio/objectbox/g;

    .line 41
    new-instance v13, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const-class v9, Lcom/callapp/contacts/model/objectbox/DataSourceConverter;

    const-class v10, Lcom/callapp/contacts/model/contact/DataSource;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "dataSource"

    const/4 v7, 0x0

    const-string v8, "dataSource"

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->dataSource:Lio/objectbox/g;

    .line 44
    new-instance v7, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-string v6, "date"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->date:Lio/objectbox/g;

    .line 47
    new-instance v8, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x4

    const/4 v4, 0x4

    const-string v6, "url"

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->url:Lio/objectbox/g;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/objectbox/g;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1

    const/4 v1, 0x2

    aput-object v13, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    const/4 v1, 0x4

    aput-object v8, v0, v1

    .line 51
    sput-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 59
    sput-object v11, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllProperties()[Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation

    .line 98
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "IMExtractedPhotoData"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "IMExtractedPhotoData"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
