.class public final enum Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

.field public static final enum EFFECT_EXPLODE:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

.field public static final enum EFFECT_SPIRAL_EXPLODE:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

.field public static final enum EFFECT_SPIRAL_IN:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

.field public static final enum EFFECT_SPIRAL_OUT:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

.field public static final enum EFFECT_SPIRAL_OUT_FILL:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 359
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    const-string v1, "EFFECT_SPIRAL_OUT_FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    .line 360
    new-instance v1, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    const-string v3, "EFFECT_SPIRAL_OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    .line 361
    new-instance v3, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    const-string v5, "EFFECT_SPIRAL_IN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_IN:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    .line 362
    new-instance v5, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    const-string v7, "EFFECT_EXPLODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_EXPLODE:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    .line 363
    new-instance v7, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    const-string v9, "EFFECT_SPIRAL_EXPLODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_EXPLODE:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 358
    sput-object v9, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 358
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;
    .locals 1

    .line 358
    const-class v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;
    .locals 1

    .line 358
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    return-object v0
.end method
