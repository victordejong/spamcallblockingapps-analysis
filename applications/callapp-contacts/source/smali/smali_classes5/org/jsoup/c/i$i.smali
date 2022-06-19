.class public final enum Lorg/jsoup/c/i$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/c/i$i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/c/i$i;

.field public static final enum Character:Lorg/jsoup/c/i$i;

.field public static final enum Comment:Lorg/jsoup/c/i$i;

.field public static final enum Doctype:Lorg/jsoup/c/i$i;

.field public static final enum EOF:Lorg/jsoup/c/i$i;

.field public static final enum EndTag:Lorg/jsoup/c/i$i;

.field public static final enum StartTag:Lorg/jsoup/c/i$i;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 413
    new-instance v0, Lorg/jsoup/c/i$i;

    const-string v1, "Doctype"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/c/i$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/c/i$i;->Doctype:Lorg/jsoup/c/i$i;

    .line 414
    new-instance v1, Lorg/jsoup/c/i$i;

    const-string v3, "StartTag"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jsoup/c/i$i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jsoup/c/i$i;->StartTag:Lorg/jsoup/c/i$i;

    .line 415
    new-instance v3, Lorg/jsoup/c/i$i;

    const-string v5, "EndTag"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jsoup/c/i$i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jsoup/c/i$i;->EndTag:Lorg/jsoup/c/i$i;

    .line 416
    new-instance v5, Lorg/jsoup/c/i$i;

    const-string v7, "Comment"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jsoup/c/i$i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jsoup/c/i$i;->Comment:Lorg/jsoup/c/i$i;

    .line 417
    new-instance v7, Lorg/jsoup/c/i$i;

    const-string v9, "Character"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jsoup/c/i$i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jsoup/c/i$i;->Character:Lorg/jsoup/c/i$i;

    .line 418
    new-instance v9, Lorg/jsoup/c/i$i;

    const-string v11, "EOF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jsoup/c/i$i;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jsoup/c/i$i;->EOF:Lorg/jsoup/c/i$i;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/jsoup/c/i$i;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 412
    sput-object v11, Lorg/jsoup/c/i$i;->$VALUES:[Lorg/jsoup/c/i$i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 412
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/c/i$i;
    .locals 1

    .line 412
    const-class v0, Lorg/jsoup/c/i$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/c/i$i;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/c/i$i;
    .locals 1

    .line 412
    sget-object v0, Lorg/jsoup/c/i$i;->$VALUES:[Lorg/jsoup/c/i$i;

    invoke-virtual {v0}, [Lorg/jsoup/c/i$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/c/i$i;

    return-object v0
.end method
