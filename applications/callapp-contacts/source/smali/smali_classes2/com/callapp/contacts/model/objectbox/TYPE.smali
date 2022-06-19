.class public final enum Lcom/callapp/contacts/model/objectbox/TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/objectbox/TYPE;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/callapp/contacts/model/objectbox/TYPE;",
        "",
        "value",
        "",
        "view",
        "",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getValue",
        "()I",
        "getView",
        "()Ljava/lang/String;",
        "toString",
        "MYVIEW",
        "VIEWME",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/objectbox/TYPE;

.field public static final enum MYVIEW:Lcom/callapp/contacts/model/objectbox/TYPE;

.field public static final enum VIEWME:Lcom/callapp/contacts/model/objectbox/TYPE;


# instance fields
.field private final value:I

.field private final view:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/callapp/contacts/model/objectbox/TYPE;

    new-instance v1, Lcom/callapp/contacts/model/objectbox/TYPE;

    const-string v2, "MYVIEW"

    const/4 v3, 0x0

    const-string v4, "myView"

    .line 73
    invoke-direct {v1, v2, v3, v3, v4}, Lcom/callapp/contacts/model/objectbox/TYPE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/TYPE;->MYVIEW:Lcom/callapp/contacts/model/objectbox/TYPE;

    aput-object v1, v0, v3

    new-instance v1, Lcom/callapp/contacts/model/objectbox/TYPE;

    const-string v2, "VIEWME"

    const/4 v3, 0x1

    const-string v4, "viewMe"

    .line 74
    invoke-direct {v1, v2, v3, v3, v4}, Lcom/callapp/contacts/model/objectbox/TYPE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/TYPE;->VIEWME:Lcom/callapp/contacts/model/objectbox/TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/callapp/contacts/model/objectbox/TYPE;->$VALUES:[Lcom/callapp/contacts/model/objectbox/TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/callapp/contacts/model/objectbox/TYPE;->value:I

    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/TYPE;->view:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/TYPE;
    .locals 1

    const-class v0, Lcom/callapp/contacts/model/objectbox/TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/TYPE;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/objectbox/TYPE;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/objectbox/TYPE;->$VALUES:[Lcom/callapp/contacts/model/objectbox/TYPE;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/objectbox/TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/objectbox/TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/TYPE;->value:I

    return v0
.end method

.method public final getView()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/TYPE;->view:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type{view=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/TYPE;->view:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/callapp/contacts/model/objectbox/TYPE;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
