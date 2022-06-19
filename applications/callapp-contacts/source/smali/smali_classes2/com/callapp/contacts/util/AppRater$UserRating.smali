.class public final enum Lcom/callapp/contacts/util/AppRater$UserRating;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/AppRater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserRating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/util/AppRater$UserRating;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/util/AppRater$UserRating;

.field public static final enum NOT_YET:Lcom/callapp/contacts/util/AppRater$UserRating;

.field public static final enum RATED_4STAR_OR_LESS:Lcom/callapp/contacts/util/AppRater$UserRating;

.field public static final enum RATED_5STAR:Lcom/callapp/contacts/util/AppRater$UserRating;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/callapp/contacts/util/AppRater$UserRating;

    const-string v1, "RATED_5STAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/util/AppRater$UserRating;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/util/AppRater$UserRating;->RATED_5STAR:Lcom/callapp/contacts/util/AppRater$UserRating;

    .line 30
    new-instance v1, Lcom/callapp/contacts/util/AppRater$UserRating;

    const-string v3, "RATED_4STAR_OR_LESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/util/AppRater$UserRating;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/util/AppRater$UserRating;->RATED_4STAR_OR_LESS:Lcom/callapp/contacts/util/AppRater$UserRating;

    .line 31
    new-instance v3, Lcom/callapp/contacts/util/AppRater$UserRating;

    const-string v5, "NOT_YET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/util/AppRater$UserRating;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/util/AppRater$UserRating;->NOT_YET:Lcom/callapp/contacts/util/AppRater$UserRating;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/util/AppRater$UserRating;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 28
    sput-object v5, Lcom/callapp/contacts/util/AppRater$UserRating;->$VALUES:[Lcom/callapp/contacts/util/AppRater$UserRating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/util/AppRater$UserRating;
    .locals 1

    .line 28
    const-class v0, Lcom/callapp/contacts/util/AppRater$UserRating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/util/AppRater$UserRating;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/util/AppRater$UserRating;
    .locals 1

    .line 28
    sget-object v0, Lcom/callapp/contacts/util/AppRater$UserRating;->$VALUES:[Lcom/callapp/contacts/util/AppRater$UserRating;

    invoke-virtual {v0}, [Lcom/callapp/contacts/util/AppRater$UserRating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/util/AppRater$UserRating;

    return-object v0
.end method
