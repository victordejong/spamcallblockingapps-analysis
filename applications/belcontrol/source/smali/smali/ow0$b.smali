.class public final enum Low0$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Low0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Low0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Low0$b;

.field public static final enum b:Low0$b;

.field public static final enum c:Low0$b;

.field public static final enum d:Low0$b;

.field public static final enum f:Low0$b;

.field public static final enum g:Low0$b;

.field public static final enum h:Low0$b;

.field public static final enum j:Low0$b;

.field public static final enum k:Low0$b;

.field public static final enum l:Low0$b;

.field public static final enum m:Low0$b;

.field public static final synthetic n:[Low0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Low0$b;

    const-string v1, "WARNING_SPAM_ROLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Low0$b;->a:Low0$b;

    new-instance v1, Low0$b;

    const-string v3, "WARNING_DEFAULT_DIALER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Low0$b;->b:Low0$b;

    new-instance v3, Low0$b;

    const-string v5, "DISCONNECT_MODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Low0$b;->c:Low0$b;

    new-instance v5, Low0$b;

    const-string v7, "VOICE_MAIL_MODE_DEF_DIALER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Low0$b;->d:Low0$b;

    new-instance v7, Low0$b;

    const-string v9, "VOICE_MAIL_MODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Low0$b;->f:Low0$b;

    new-instance v9, Low0$b;

    const-string v11, "CCS_ENABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Low0$b;->g:Low0$b;

    new-instance v11, Low0$b;

    const-string v13, "CCS_ENABLE_OLD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Low0$b;->h:Low0$b;

    new-instance v13, Low0$b;

    const-string v15, "CCS_DISABLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Low0$b;->j:Low0$b;

    new-instance v15, Low0$b;

    const-string v14, "CCS_DISABLE_SPAM_ROLE_ACTIVE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Low0$b;->k:Low0$b;

    new-instance v14, Low0$b;

    const-string v12, "CCS_DISABLE_DISCONNECT_OLD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Low0$b;->l:Low0$b;

    new-instance v12, Low0$b;

    const-string v10, "CCS_DISABLE_SPAM_ROLE_INACTIVE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Low0$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Low0$b;->m:Low0$b;

    const/16 v10, 0xb

    new-array v10, v10, [Low0$b;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Low0$b;->n:[Low0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Low0$b;
    .locals 1

    const-class v0, Low0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Low0$b;

    return-object p0
.end method

.method public static values()[Low0$b;
    .locals 1

    sget-object v0, Low0$b;->n:[Low0$b;

    invoke-virtual {v0}, [Low0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Low0$b;

    return-object v0
.end method
