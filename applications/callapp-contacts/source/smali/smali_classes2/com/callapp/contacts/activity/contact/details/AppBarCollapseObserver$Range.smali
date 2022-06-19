.class final enum Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

.field public static final enum LOW_TO_MID:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

.field public static final enum MID_TO_HIGH:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    const-string v1, "LOW_TO_MID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->LOW_TO_MID:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    .line 52
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    const-string v3, "MID_TO_HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->MID_TO_HIGH:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 50
    sput-object v3, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;
    .locals 1

    .line 50
    const-class v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;
    .locals 1

    .line 50
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->$VALUES:[Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    return-object v0
.end method
