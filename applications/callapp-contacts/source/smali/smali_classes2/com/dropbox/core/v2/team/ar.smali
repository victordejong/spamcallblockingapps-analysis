.class public final enum Lcom/dropbox/core/v2/team/ar;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/team/ar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/ar;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/team/ar;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/ar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/ar;->OTHER:Lcom/dropbox/core/v2/team/ar;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/dropbox/core/v2/team/ar;

    aput-object v0, v1, v2

    .line 19
    sput-object v1, Lcom/dropbox/core/v2/team/ar;->$VALUES:[Lcom/dropbox/core/v2/team/ar;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ar;
    .locals 1

    .line 19
    const-class v0, Lcom/dropbox/core/v2/team/ar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/team/ar;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/ar;
    .locals 1

    .line 19
    sget-object v0, Lcom/dropbox/core/v2/team/ar;->$VALUES:[Lcom/dropbox/core/v2/team/ar;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/ar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/ar;

    return-object v0
.end method
