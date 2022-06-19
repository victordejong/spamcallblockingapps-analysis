.class public final Lcom/callapp/contacts/model/objectbox/BlockedRule_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/BlockedRule_$BlockedRuleIdGetter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c<",
        "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
        ">;"
    }
.end annotation


# static fields
.field public static final __ALL_PROPERTIES:[Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final __CURSOR_FACTORY:Lio/objectbox/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final __DB_NAME:Ljava/lang/String; = "BlockedRule"

.field public static final __ENTITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final __ENTITY_ID:I = 0x2

.field public static final __ENTITY_NAME:Ljava/lang/String; = "BlockedRule"

.field static final __ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedRule_$BlockedRuleIdGetter;

.field public static final __ID_PROPERTY:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final __INSTANCE:Lcom/callapp/contacts/model/objectbox/BlockedRule_;

.field public static final blockRuleType:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final id:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final rawNumber:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 25
    const-class v0, Lcom/callapp/contacts/model/objectbox/BlockedRule;

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__ENTITY_CLASS:Ljava/lang/Class;

    .line 29
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BlockedRuleCursor$Factory;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BlockedRuleCursor$Factory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    .line 32
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_$BlockedRuleIdGetter;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BlockedRule_$BlockedRuleIdGetter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedRule_$BlockedRuleIdGetter;

    .line 34
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/BlockedRule_;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__INSTANCE:Lcom/callapp/contacts/model/objectbox/BlockedRule_;

    .line 36
    new-instance v11, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "id"

    const/4 v7, 0x1

    const-string v8, "id"

    move-object v1, v11

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->id:Lio/objectbox/g;

    .line 39
    new-instance v12, Lio/objectbox/g;

    const-class v5, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v6, "rawNumber"

    move-object v1, v12

    invoke-direct/range {v1 .. v6}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;)V

    sput-object v12, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->rawNumber:Lio/objectbox/g;

    .line 42
    new-instance v13, Lio/objectbox/g;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleTypeConverter;

    const-class v10, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v6, "blockRuleType"

    const/4 v7, 0x0

    const-string v8, "blockRuleType"

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lio/objectbox/g;-><init>(Lio/objectbox/c;IILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v13, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->blockRuleType:Lio/objectbox/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/objectbox/g;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v12, v0, v1

    const/4 v1, 0x2

    aput-object v13, v0, v1

    .line 46
    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    .line 52
    sput-object v11, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__ID_PROPERTY:Lio/objectbox/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
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
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__ALL_PROPERTIES:[Lio/objectbox/g;

    return-object v0
.end method

.method public final getCursorFactory()Lio/objectbox/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/b<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__CURSOR_FACTORY:Lio/objectbox/b/b;

    return-object v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 1

    const-string v0, "BlockedRule"

    return-object v0
.end method

.method public final getEntityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__ENTITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public final getEntityId()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getEntityName()Ljava/lang/String;
    .locals 1

    const-string v0, "BlockedRule"

    return-object v0
.end method

.method public final getIdGetter()Lio/objectbox/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/b/c<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__ID_GETTER:Lcom/callapp/contacts/model/objectbox/BlockedRule_$BlockedRuleIdGetter;

    return-object v0
.end method

.method public final getIdProperty()Lio/objectbox/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/g<",
            "Lcom/callapp/contacts/model/objectbox/BlockedRule;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule_;->__ID_PROPERTY:Lio/objectbox/g;

    return-object v0
.end method
