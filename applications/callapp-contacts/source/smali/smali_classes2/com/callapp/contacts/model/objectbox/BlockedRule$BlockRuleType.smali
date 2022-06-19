.class public final enum Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/BlockedRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockRuleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

.field public static final enum contains:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

.field public static final enum endsWith:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

.field public static final enum startsWith:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;


# instance fields
.field public final text:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 39
    new-instance v0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    const v1, 0x7f12010f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startsWith"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->startsWith:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    .line 40
    new-instance v1, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    const v2, 0x7f12010d

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "contains"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->contains:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    .line 41
    new-instance v2, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    const v4, 0x7f12010e

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "endsWith"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->endsWith:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 38
    sput-object v4, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->type:I

    .line 48
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;
    .locals 1

    .line 38
    const-class v0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;
    .locals 1

    .line 38
    sget-object v0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->text:Ljava/lang/String;

    return-object v0
.end method
