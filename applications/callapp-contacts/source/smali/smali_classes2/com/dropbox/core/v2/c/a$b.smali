.class public final enum Lcom/dropbox/core/v2/c/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dropbox/core/v2/c/a$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/c/a$b;

.field public static final enum HOME:Lcom/dropbox/core/v2/c/a$b;

.field public static final enum NAMESPACE_ID:Lcom/dropbox/core/v2/c/a$b;

.field public static final enum OTHER:Lcom/dropbox/core/v2/c/a$b;

.field public static final enum ROOT:Lcom/dropbox/core/v2/c/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/c/a$b;

    const-string v1, "HOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/c/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/c/a$b;->HOME:Lcom/dropbox/core/v2/c/a$b;

    .line 47
    new-instance v1, Lcom/dropbox/core/v2/c/a$b;

    const-string v3, "ROOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dropbox/core/v2/c/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dropbox/core/v2/c/a$b;->ROOT:Lcom/dropbox/core/v2/c/a$b;

    .line 53
    new-instance v3, Lcom/dropbox/core/v2/c/a$b;

    const-string v5, "NAMESPACE_ID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dropbox/core/v2/c/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dropbox/core/v2/c/a$b;->NAMESPACE_ID:Lcom/dropbox/core/v2/c/a$b;

    .line 62
    new-instance v5, Lcom/dropbox/core/v2/c/a$b;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dropbox/core/v2/c/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dropbox/core/v2/c/a$b;->OTHER:Lcom/dropbox/core/v2/c/a$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/dropbox/core/v2/c/a$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 36
    sput-object v7, Lcom/dropbox/core/v2/c/a$b;->$VALUES:[Lcom/dropbox/core/v2/c/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/c/a$b;
    .locals 1

    .line 36
    const-class v0, Lcom/dropbox/core/v2/c/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/c/a$b;

    return-object p0
.end method

.method public static values()[Lcom/dropbox/core/v2/c/a$b;
    .locals 1

    .line 36
    sget-object v0, Lcom/dropbox/core/v2/c/a$b;->$VALUES:[Lcom/dropbox/core/v2/c/a$b;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/c/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/c/a$b;

    return-object v0
.end method
