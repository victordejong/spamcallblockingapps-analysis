.class public final enum Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlipDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

.field public static final enum LTR:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

.field public static final enum RTL:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 308
    new-instance v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    const-string v1, "LTR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->LTR:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    .line 309
    new-instance v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    const-string v3, "RTL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->RTL:Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 307
    sput-object v3, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->$VALUES:[Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;
    .locals 1

    .line 307
    const-class v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;
    .locals 1

    .line 307
    sget-object v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->$VALUES:[Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    invoke-virtual {v0}, [Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection;

    return-object v0
.end method
