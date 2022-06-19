.class public final enum Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

.field public static final enum b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

.field public static final enum c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

.field public static final enum d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

.field public static final synthetic f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    const-string v1, "NOT_INSTALLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    const-string v3, "INSTALLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    const-string v5, "INTEGRATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    new-instance v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    const-string v7, "BLOCKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;
    .locals 1

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    return-object p0
.end method

.method public static values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->f:[Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    invoke-virtual {v0}, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    return-object v0
.end method
