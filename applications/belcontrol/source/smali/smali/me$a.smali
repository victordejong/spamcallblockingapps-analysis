.class public final enum Lme$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lme$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme$a;

.field public static final enum ON_ANY:Lme$a;

.field public static final enum ON_CREATE:Lme$a;

.field public static final enum ON_DESTROY:Lme$a;

.field public static final enum ON_PAUSE:Lme$a;

.field public static final enum ON_RESUME:Lme$a;

.field public static final enum ON_START:Lme$a;

.field public static final enum ON_STOP:Lme$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lme$a;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lme$a;->ON_CREATE:Lme$a;

    new-instance v1, Lme$a;

    const-string v3, "ON_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lme$a;->ON_START:Lme$a;

    new-instance v3, Lme$a;

    const-string v5, "ON_RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lme$a;->ON_RESUME:Lme$a;

    new-instance v5, Lme$a;

    const-string v7, "ON_PAUSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lme$a;->ON_PAUSE:Lme$a;

    new-instance v7, Lme$a;

    const-string v9, "ON_STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lme$a;->ON_STOP:Lme$a;

    new-instance v9, Lme$a;

    const-string v11, "ON_DESTROY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lme$a;->ON_DESTROY:Lme$a;

    new-instance v11, Lme$a;

    const-string v13, "ON_ANY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lme$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lme$a;->ON_ANY:Lme$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lme$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lme$a;->$VALUES:[Lme$a;

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

.method public static valueOf(Ljava/lang/String;)Lme$a;
    .locals 1

    const-class v0, Lme$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lme$a;

    return-object p0
.end method

.method public static values()[Lme$a;
    .locals 1

    sget-object v0, Lme$a;->$VALUES:[Lme$a;

    invoke-virtual {v0}, [Lme$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme$a;

    return-object v0
.end method
