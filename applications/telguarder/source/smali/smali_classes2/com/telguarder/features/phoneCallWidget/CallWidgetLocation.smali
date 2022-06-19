.class public final enum Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;
.super Ljava/lang/Enum;
.source "CallWidgetLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

.field public static final enum AUTO:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

.field public static final enum BOTTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

.field public static final enum CUSTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

.field public static final enum MIDDLE:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

.field public static final enum TOP:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;


# instance fields
.field private verticalOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 11
    new-instance v0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->AUTO:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    .line 12
    new-instance v1, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->TOP:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    .line 13
    new-instance v3, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    const-string v5, "MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->MIDDLE:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    .line 14
    new-instance v5, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->BOTTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    .line 15
    new-instance v7, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    const-string v9, "CUSTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->CUSTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 10
    sput-object v9, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->$VALUES:[Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->verticalOffset:I

    return-void
.end method

.method public static getAllConstants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->AUTO:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->TOP:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->MIDDLE:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->BOTTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->CUSTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAllConstantsAsArray()[Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;
    .locals 2

    .line 55
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->getAllConstants()Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    return-object v0
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation$1;->$SwitchMap$com$telguarder$features$phoneCallWidget$CallWidgetLocation:[I

    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const p1, 0x7f10016c

    .line 37
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getUpperCaseStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f10016b

    .line 36
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getUpperCaseStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f10016d

    .line 35
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getUpperCaseStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const p1, 0x7f10016e

    .line 34
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getUpperCaseStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f10016a

    .line 33
    invoke-static {p0, p1}, Lcom/telguarder/helpers/common/AppUtil;->getUpperCaseStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;
    .locals 1

    .line 10
    const-class v0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;
    .locals 1

    .line 10
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->$VALUES:[Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {v0}, [Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    return-object v0
.end method


# virtual methods
.method public getVerticalOffset()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->verticalOffset:I

    return v0
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->verticalOffset:I

    return-void
.end method
