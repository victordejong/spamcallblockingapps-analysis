.class final enum Lcom/callapp/contacts/framework/log/FileLogger$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/framework/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/framework/log/FileLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/framework/log/FileLogger$Level;

.field public static final enum DEBUG:Lcom/callapp/contacts/framework/log/FileLogger$Level;

.field public static final enum ERROR:Lcom/callapp/contacts/framework/log/FileLogger$Level;

.field public static final enum INFO:Lcom/callapp/contacts/framework/log/FileLogger$Level;

.field public static final enum WARN:Lcom/callapp/contacts/framework/log/FileLogger$Level;


# instance fields
.field final display:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 133
    new-instance v0, Lcom/callapp/contacts/framework/log/FileLogger$Level;

    const-string v1, "INFO"

    const/4 v2, 0x0

    const-string v3, "INFO "

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/framework/log/FileLogger$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/framework/log/FileLogger$Level;->INFO:Lcom/callapp/contacts/framework/log/FileLogger$Level;

    .line 134
    new-instance v1, Lcom/callapp/contacts/framework/log/FileLogger$Level;

    const-string v3, "WARN"

    const/4 v4, 0x1

    const-string v5, "WARN "

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/framework/log/FileLogger$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/framework/log/FileLogger$Level;->WARN:Lcom/callapp/contacts/framework/log/FileLogger$Level;

    .line 135
    new-instance v3, Lcom/callapp/contacts/framework/log/FileLogger$Level;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/callapp/contacts/framework/log/FileLogger$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/framework/log/FileLogger$Level;->ERROR:Lcom/callapp/contacts/framework/log/FileLogger$Level;

    .line 136
    new-instance v5, Lcom/callapp/contacts/framework/log/FileLogger$Level;

    const-string v7, "DEBUG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/callapp/contacts/framework/log/FileLogger$Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/callapp/contacts/framework/log/FileLogger$Level;->DEBUG:Lcom/callapp/contacts/framework/log/FileLogger$Level;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/framework/log/FileLogger$Level;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 132
    sput-object v7, Lcom/callapp/contacts/framework/log/FileLogger$Level;->$VALUES:[Lcom/callapp/contacts/framework/log/FileLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput-object p3, p0, Lcom/callapp/contacts/framework/log/FileLogger$Level;->display:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/framework/log/FileLogger$Level;
    .locals 1

    .line 132
    const-class v0, Lcom/callapp/contacts/framework/log/FileLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/framework/log/FileLogger$Level;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/framework/log/FileLogger$Level;
    .locals 1

    .line 132
    sget-object v0, Lcom/callapp/contacts/framework/log/FileLogger$Level;->$VALUES:[Lcom/callapp/contacts/framework/log/FileLogger$Level;

    invoke-virtual {v0}, [Lcom/callapp/contacts/framework/log/FileLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/framework/log/FileLogger$Level;

    return-object v0
.end method
