.class public final enum Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PremiumGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

.field public static final enum CALLAPP_PLUS_BIG:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

.field public static final enum CALLAPP_PLUS_SMALL:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

.field public static final enum CALL_RECORDING_SMALL:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 97
    new-instance v0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const-string v3, "CALL_RECORDING_SMALL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->CALL_RECORDING_SMALL:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    .line 98
    new-instance v1, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const-string v3, "CALLAPP_PLUS_SMALL"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v2}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->CALLAPP_PLUS_SMALL:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    .line 99
    new-instance v2, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07033e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const-string v6, "CALLAPP_PLUS_BIG"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3}, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->CALLAPP_PLUS_BIG:Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v7

    .line 96
    sput-object v3, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->$VALUES:[Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;
    .locals 1

    .line 96
    const-class v0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;
    .locals 1

    .line 96
    sget-object v0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->$VALUES:[Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    invoke-virtual {v0}, [Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/callapp/contacts/widget/sticky/StickyCallAppPremiumView$PremiumGroup;->id:I

    return v0
.end method
