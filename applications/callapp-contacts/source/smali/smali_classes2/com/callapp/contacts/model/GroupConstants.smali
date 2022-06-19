.class public Lcom/callapp/contacts/model/GroupConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GROUP_ID_CHANNEL_MESSEGING:I = 0x2

.field public static final GROUP_ID_CHANNEL_SOCIAL:I = 0x1

.field private static idToGenerate:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupIcon(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f080418

    return p0

    :cond_1
    const p0, 0x7f08049c

    return p0
.end method

.method public static idForItemWithoutGroup()I
    .locals 2

    .line 19
    sget v0, Lcom/callapp/contacts/model/GroupConstants;->idToGenerate:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/callapp/contacts/model/GroupConstants;->idToGenerate:I

    return v0
.end method
