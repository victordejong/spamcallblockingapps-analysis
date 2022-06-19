.class public final enum Lcom/dropbox/core/v2/sharing/au;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/au$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/sharing/au;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/au;

.field public static final enum PASSWORD:Lcom/dropbox/core/v2/sharing/au;

.field public static final enum PUBLIC:Lcom/dropbox/core/v2/sharing/au;

.field public static final enum TEAM_ONLY:Lcom/dropbox/core/v2/sharing/au;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/sharing/au;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/au;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/au;->PUBLIC:Lcom/dropbox/core/v2/sharing/au;

    .line 35
    new-instance v1, Lcom/dropbox/core/v2/sharing/au;

    const-string v3, "TEAM_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/sharing/au;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/sharing/au;->TEAM_ONLY:Lcom/dropbox/core/v2/sharing/au;

    .line 40
    new-instance v3, Lcom/dropbox/core/v2/sharing/au;

    const-string v5, "PASSWORD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/sharing/au;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/sharing/au;->PASSWORD:Lcom/dropbox/core/v2/sharing/au;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dropbox/core/v2/sharing/au;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 26
    sput-object v5, Lcom/dropbox/core/v2/sharing/au;->$VALUES:[Lcom/dropbox/core/v2/sharing/au;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/au;
    .locals 1

    .line 26
    const-class v0, Lcom/dropbox/core/v2/sharing/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/sharing/au;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/au;
    .locals 1

    .line 26
    sget-object v0, Lcom/dropbox/core/v2/sharing/au;->$VALUES:[Lcom/dropbox/core/v2/sharing/au;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/au;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/au;

    return-object v0
.end method
