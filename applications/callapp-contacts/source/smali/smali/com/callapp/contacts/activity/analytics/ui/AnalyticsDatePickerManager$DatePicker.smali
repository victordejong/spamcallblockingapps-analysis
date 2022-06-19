.class public final enum Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DatePicker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

.field public static final enum LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

.field public static final enum MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

.field public static final enum WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    const-string v1, "WEEK"

    const/4 v2, 0x0

    const-string v3, "week"

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 39
    new-instance v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    const-string v3, "MONTH"

    const/4 v4, 0x1

    const-string v5, "month"

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 40
    new-instance v3, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    const-string v5, "LIFE"

    const/4 v6, 0x2

    const-string v7, "life"

    invoke-direct {v3, v5, v6, v7}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 37
    sput-object v5, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->$VALUES:[Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;
    .locals 1

    .line 37
    const-class v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;
    .locals 1

    .line 37
    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->$VALUES:[Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->type:Ljava/lang/String;

    return-object v0
.end method
